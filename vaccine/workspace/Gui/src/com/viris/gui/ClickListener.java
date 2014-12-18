package com.viris.gui;

import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.io.IOException;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import javax.swing.JTree;
import javax.swing.SwingUtilities;
import javax.swing.tree.DefaultMutableTreeNode;
import javax.swing.tree.DefaultTreeModel;
import javax.swing.tree.TreePath;

import xyzkwjbl.viris.service.Request;
import xyzkwjbl.viris.service.TransactionUnit;


public class ClickListener extends MouseAdapter {

	protected DefaultMutableTreeNode rootNode;
	protected DefaultTreeModel model;
	protected JTree tree;
	private Vaccine vaccine;
	private boolean isApplication;
	private Watch watch;
	
	public ClickListener(JTree tree, DefaultTreeModel model,
			DefaultMutableTreeNode rootNode, Vaccine vaccine, Watch watch,
			boolean isApplication) {

		this.tree = tree;
		this.model = model;
		this.rootNode = rootNode;
		this.vaccine = vaccine;
		this.isApplication = isApplication;
		this.watch = watch;
	}

	@Override
	public void mousePressed(MouseEvent e) {
		int selRow = tree.getRowForLocation(e.getX(), e.getY());
		TreePath selPath = tree.getPathForLocation(e.getX(), e.getY());
		if (selRow != -1) {

			DefaultMutableTreeNode selectedNode = (DefaultMutableTreeNode) selPath
					.getLastPathComponent();
	
			if(SwingUtilities.isRightMouseButton(e) && e.isControlDown()){
				TreeObject tob = (TreeObject) selectedNode.getUserObject();
				TransactionUnit unit = tob.getUnit();
				if (unit.fieldType.equals("method")) {
					return;
				}
				
				watch.addElement(unit);
			}
			else if (SwingUtilities.isRightMouseButton(e)) {

				if (selRow == 0 && isApplication) {
					try {

						selectedNode.removeAllChildren();
						model.reload();
						vaccine.buildTree();
						Utils.expandAll(tree, true);
					} catch (IOException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					} catch (ClassNotFoundException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}

				} else if (selRow != 0) {
					TreeObject tob = (TreeObject) selectedNode.getUserObject();
					TransactionUnit unit = tob.getUnit();
					if (unit.fieldType.equals("method")) {
						return;
					}
					String methods = String.valueOf(vaccine.showmethods
							.isSelected());
					String treeParentName = unit.bshName.substring(2,
							unit.bshName.length());
					Request request = new Request("inspect(" + unit.bshName
							+ ",\"" + treeParentName + "\"," + methods + ")");
					
					List<TransactionUnit> elements;
					try {
						elements = vaccine.client.message(request);

						// if no elements recieved
						if (elements == null || elements.size() == 0) {
							return;
						}

						Collections.sort(elements,
								new Comparator<TransactionUnit>() {
									public int compare(TransactionUnit so1,
											TransactionUnit so2) {
										String name1 = so1.shortName;
										String name2 = so2.shortName;

										if (so1.fieldType.equals("object")
												&& so2.fieldType
														.equals("method"))
											return -1;
										else if (so1.fieldType.equals("method")
												&& so2.fieldType
														.equals("object"))
											return 1;
										else if (so1.fieldType.equals("object")
												&& so2.fieldType
														.equals("object"))
											return name1.compareTo(name2);
										else if (so1.fieldType.equals("method")
												&& so2.fieldType
														.equals("method"))
											return name1.compareTo(name2);

										return 0;
									}
								});

						// we remove all children before update;
						selectedNode.removeAllChildren();
						model.reload();
						
							
						TreeObject parent = (TreeObject) selectedNode.getUserObject();
						//if consructors were added
						parent.constructors=null;
						
						for (TransactionUnit element : elements) {
								
								if(element.fieldType.equals("constructor")){
									parent.addConstructor(element.origName);
									continue;
								}
								
								TreeObject object = new TreeObject(element);								
								vaccine.addObject(selectedNode, object, rootNode, model);
							
								
						}

						Utils.expandAll(tree, true);
						tree.setSelectionRow(selRow);

					} catch (IOException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					} catch (ClassNotFoundException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}

				}

			}else if (e.getClickCount() == 1) {

				if (selRow != 0) {

					TreeObject tob = (TreeObject) selectedNode.getUserObject();
					TransactionUnit unit = tob.getUnit();
					vaccine.info.setText("Type: "+unit.type+"\n");
					vaccine.info.insert("Original name: "+unit.origName+"\n",vaccine.info.getText().length());
					vaccine.info.insert("Beanshell name: "+unit.bshName+"\n", vaccine.info.getText().length());
					vaccine.info.insert("Value: "+unit.value+"\n", vaccine.info.getText().length());
					List<String> constructors = tob.getConstructors();
					if(constructors != null){
						vaccine.info.insert("Constructors: \n", vaccine.info.getText().length());						
						for(String c : constructors){
							vaccine.info.insert(" "+c+"\n", vaccine.info.getText().length());						
							
						}
					}
				}
			} else if (e.getClickCount() == 2) {
				if (selRow != 0) {
					tree.setSelectionRow(selRow);
					TreeObject tob = (TreeObject) selectedNode.getUserObject();
					vaccine.exec.insert(tob.getUnit().bshName,
							vaccine.exec.getCaretPosition());
				}
			}

		}
	}

}
