package com.viris.gui;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Component;
import java.awt.Dimension;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.datatransfer.DataFlavor;
import java.awt.datatransfer.Transferable;
import java.awt.datatransfer.UnsupportedFlavorException;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.io.File;
import java.io.IOException;
import java.net.UnknownHostException;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;

import javax.swing.BorderFactory;
import javax.swing.DropMode;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JComponent;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JSplitPane;
import javax.swing.JTabbedPane;
import javax.swing.JTextArea;
import javax.swing.JTree;
import javax.swing.SwingUtilities;
import javax.swing.TransferHandler;
import javax.swing.plaf.TreeUI;
import javax.swing.tree.DefaultMutableTreeNode;
import javax.swing.tree.DefaultTreeModel;
import javax.swing.tree.TreePath;
import javax.swing.tree.TreeSelectionModel;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.filefilter.DirectoryFileFilter;
import org.apache.commons.io.filefilter.RegexFileFilter;


import org.fife.ui.rtextarea.*;
import org.fife.ui.rsyntaxtextarea.*;

import xyzkwjbl.viris.service.Request;
import xyzkwjbl.viris.service.TransactionUnit;

import com.viris.debuger.SocketClient;

public class Vaccine extends JPanel implements ActionListener{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1326174530156602511L;
	protected DefaultMutableTreeNode rootNode;
	protected DefaultTreeModel model;
	protected JTree tree;
	
	private JTabbedPane tabbedPane;
	public JTextArea info;
	public SocketClient client;
	private JPanel control;
	public RSyntaxTextArea exec;
	private JButton execute;
	public JCheckBox showmethods;
	private static String EXECUTE="CMD_EXECUTE";
	private CellRenderer renderer;
	private HashMap<String, TreeObject> cache;
	public String classFilesLocation;
	public Watch watch;
	private static Vaccine browser;
	
	public static void main(String[] args){
				
		if(args==null || args.length<3)
			return;
		
		String command = args[0];
			
		
		int port = Integer.parseInt(args[1]);
		
		SocketClient c = new SocketClient(port);
		browser = new Vaccine(c);
		
		//start -- repackaging approach
		//rstart -- runtime injection
		if(!(command.equals("start") || command.equals("rstart"))){
			return;
		}	
		browser.classFilesLocation = args[2];
		try {
			browser.createAndShow();
			browser.setPreferredSize(new Dimension(900, 600));
			browser.buildTree();
			browser.setUpCMDS(command);
		
				
			browser.setOpaque(true);
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		
		}
		
		
		JFrame frame = new JFrame("Vaccine");
		frame.setDefaultCloseOperation(JFrame.DO_NOTHING_ON_CLOSE);

		frame.addWindowListener( new WindowAdapter() 
		{
		    public void windowClosing(WindowEvent e)
		    {
		    	//browser.stopService();
		    	JFrame frame = (JFrame)e.getSource();
		        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		        
		    }
		});
		frame.setLocation(300, 150);
		frame.setContentPane(browser);
		// Display the window.
		frame.pack();
		frame.setVisible(true);
		
		
	}

	
	public Vaccine( SocketClient client){
		super(new BorderLayout());
		this.client = client;
		cache = new HashMap<String, TreeObject>();
		
	}
	public void createAndShow() {

	

		rootNode = new DefaultMutableTreeNode("Application");
		model = new DefaultTreeModel(rootNode);
		
		tree = new JTree(model);
		tree.getSelectionModel().setSelectionMode(
				TreeSelectionModel.SINGLE_TREE_SELECTION);
		tree.setShowsRootHandles(true);
		//adding a cell renderer
		renderer = new CellRenderer();
		
		tree.setCellRenderer(renderer);
		
		//in new future user should change descriptions of tree nodes - will help if obfuscated code
		tree.setEditable(false);
	
		watch = new Watch(client);
		MouseListener ml = new ClickListener(tree, model, rootNode, this, watch,true);
		tree.addMouseListener(ml);
		tree.setDragEnabled(true);
		
		JScrollPane treePane = new JScrollPane(tree);
	
		info = new JTextArea();
		tabbedPane = new JTabbedPane();
		tabbedPane.add("Info",info);
	
		tabbedPane.add("Watch",watch);
		
		
		JScrollPane infoPane = new JScrollPane(tabbedPane);
		

		exec = new RSyntaxTextArea(20, 60);
		exec.setSyntaxEditingStyle(SyntaxConstants.SYNTAX_STYLE_JAVA);
		exec.setCodeFoldingEnabled(true);
		exec.setAntiAliasingEnabled(true);
	    RTextScrollPane editor = new RTextScrollPane(exec);
	    editor.setFoldIndicatorEnabled(true);
	      
	    
		JSplitPane horizontal = new JSplitPane(JSplitPane.HORIZONTAL_SPLIT,
				treePane, infoPane);
		
		
		horizontal.setResizeWeight(0.6);
		horizontal.setOneTouchExpandable(true);
		horizontal.setContinuousLayout(true);

		
	    JSplitPane vertical = new JSplitPane(JSplitPane.VERTICAL_SPLIT,horizontal,editor);

	    vertical.setResizeWeight(0.5);
	    vertical.setOneTouchExpandable(true);
	    vertical.setContinuousLayout(true);
	    
	    
		add(vertical, BorderLayout.CENTER);
	
		
		execute = new JButton("Execute");
		execute.setActionCommand(EXECUTE);
		execute.addActionListener(this);
		showmethods = new JCheckBox(" SHOW METHODS");
		
		control = new JPanel(new GridBagLayout());
		  
		
		GridBagConstraints c = new GridBagConstraints();
		
		JLabel empty = new JLabel();
		c.weightx = 0.8;
	    c.fill = GridBagConstraints.HORIZONTAL;
	    c.gridx = 0;
	    c.gridy = 0;
		control.add(empty,c);
		
		c.weightx = 0.1;
	    c.fill = GridBagConstraints.HORIZONTAL;
	    c.gridx = 1;
	    c.gridy = 0;
	    
	    control.add(execute,c);
	    
		c.weightx = 0.1;
	    c.fill = GridBagConstraints.HORIZONTAL;
	    c.gridx = 2;
	    c.gridy = 0;
	    
	    control.add(showmethods,c);

	
		
		add(control,BorderLayout.PAGE_END);	
		
	}
	/*some ugly code to get the basis of used classes in project*/
	public static String getClassTemplate(File dir){
		Collection<File> files = FileUtils.listFiles(
				  dir, 
				  new RegexFileFilter("^(.*?)"), 
				  DirectoryFileFilter.DIRECTORY
				);
		String template="";
		for(File f:files){
			if(!f.getAbsolutePath().contains("bsh")  && !f.getAbsolutePath().contains("javassist")
					&& !f.getAbsolutePath().contains("xyzkwjbl")){
				if(!f.getName().contains("$")){
					String arr[] = f.getAbsolutePath().split("smali");
					String className = arr[1].replaceAll("/", ".");
					className = className.substring(1,className.length()-1);
					template=template+className+",";
				}
				
			}
		}
		template=template.substring(0,template.length()-1);
		return template;
		
	}
	public void sleep(){
		try {
			Thread.sleep(100);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void setUpCMDS(String command){
		
		if(!command.equals("rstart"))
			return;
		try {
		//only manual added commands if the application was vaccinated at runtime.
		//for now to make debuging easier	
		String cmd = Utils.getBeanshellCMDS("commands/setAccessibility.bsh");
		Request request = new Request(cmd);
		client.message(request);
		sleep();
		cmd = Utils.getBeanshellCMDS("commands/print.bsh");
		request = new Request(cmd);
		client.message(request);
		sleep();
		cmd = Utils.getBeanshellCMDS("commands/inspect.bsh");
		request = new Request(cmd);
		client.message(request);
		sleep();
		cmd = Utils.getBeanshellCMDS("commands/object.bsh");
		request = new Request(cmd);
		client.message(request);
		sleep();
		cmd = Utils.getBeanshellCMDS("commands/importCommands.bsh");
		request = new Request(cmd);
		client.message(request);
		sleep();
		cmd = Utils.getBeanshellCMDS("commands/importObject.bsh");
		request = new Request(cmd);
		client.message(request);
		sleep();
		cmd = Utils.getBeanshellCMDS("commands/javap.bsh");
		request = new Request(cmd);
		client.message(request);
		sleep();
		cmd = Utils.getBeanshellCMDS("commands/exec.bsh");
		request = new Request(cmd);
		client.message(request);
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}		
	}
	public void buildTree() throws IOException, ClassNotFoundException {
	
		List<TransactionUnit> elements = client.message(new Request("init", getClassTemplate(new File(classFilesLocation))));
		
		Collections.sort(elements, new Comparator<TransactionUnit>() {
			public int compare(TransactionUnit so1, TransactionUnit so2) {

			      String name1 = so1.origName;
			      String name2 = so1.origName;
		
			      return name1.compareTo(name2);
			}
		});
		
		if(cache !=null){
			cache.clear();
		}
		
		for (TransactionUnit element : elements) {
			this.addObject(null, new TreeObject(element),rootNode, model);
		
		}
		
		
	}
	



	public DefaultMutableTreeNode addObject(DefaultMutableTreeNode parent,
			Object child,DefaultMutableTreeNode rootNode, DefaultTreeModel model ) {
		return addObject(parent, child,rootNode, model, false);
	}

	public DefaultMutableTreeNode addObject(DefaultMutableTreeNode parent,
			Object child, DefaultMutableTreeNode rootNode, DefaultTreeModel model, boolean shouldBeVisible) {
	

		if (parent == null) {
			parent = rootNode;
		}

		

		if(child instanceof TreeObject){
			TreeObject newo = (TreeObject) child;
			TransactionUnit newUnit = newo.getUnit();
	
			if(cache.containsKey(newUnit.origName)){
				TreeObject oldo = cache.get(newUnit.origName);
				TransactionUnit oldUnit = oldo.getUnit();
				
				if ((newUnit.value != null) &&  (oldUnit.value == null)){	
					newo.changed=true;
				}else if( (newUnit.value == null) && (oldUnit.value != null) ){	
					newo.changed=true;
				}else if((newUnit.value !=null) &&  (oldUnit.value!=null)){
					if(!newUnit.value.equals(oldUnit.value)){
						newo.changed=true;
					}else{
						newo.changed=false;
						
					}
				}		
				cache.remove(newUnit.origName);				
				cache.put(newUnit.origName,newo);	
			}else{
				newo.changed=false;
				cache.put(newUnit.origName,newo);	
				
			}
			
			
		}
		DefaultMutableTreeNode childNode = new DefaultMutableTreeNode(child);
		model.insertNodeInto(childNode, parent, parent.getChildCount());
		
		return childNode;
	}
	
	

	public void stopService(){
		
		try {
			client.message(new Request("stop"));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public Watch getWatch(){
		return this.watch;
	}
	
	
	@Override
	public void actionPerformed(ActionEvent e) {

		String command = e.getActionCommand();

		if (EXECUTE.equals(command)) {
			
		
				Request request = new Request( exec.getText());
		
				try {
					client.message(request);
				} catch (IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				} catch (ClassNotFoundException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}		

		}
	}
	protected  static ImageIcon createImageIcon(String path) {
    	java.net.URL imageURL = Vaccine.class.getClassLoader().getResource(path);
    	ImageIcon icon =null;
    	if (imageURL != null) {
    	   icon = new ImageIcon(imageURL);
    	}
    	return icon;  
    }
	
}
