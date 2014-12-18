package com.viris.gui;

import java.awt.Color;
import java.awt.Component;
import java.io.File;
import java.net.URL;

import javax.swing.ImageIcon;
import javax.swing.JTree;
import javax.swing.tree.DefaultMutableTreeNode;
import javax.swing.tree.DefaultTreeCellRenderer;

import xyzkwjbl.viris.service.TransactionUnit;




public class CellRenderer extends DefaultTreeCellRenderer {
	
	
	
    /**
	 * 
	 */
	private static final long serialVersionUID = -1990832222640454792L;

	public ImageIcon clas = Vaccine.createImageIcon("icons/class.png");
	public ImageIcon method = Vaccine.createImageIcon("icons/method.png");
	public ImageIcon private_f = Vaccine.createImageIcon("icons/private_field.png");
	public ImageIcon static_f = Vaccine.createImageIcon("icons/static_field.png");
	public ImageIcon public_f = Vaccine.createImageIcon("icons/public_field.png");

	
	@Override
    public Color getBackgroundNonSelectionColor() {
   
    	return (null);
    }

    @Override
    public Color getBackgroundSelectionColor() {
        return super.getBackgroundSelectionColor();
    }

    @Override
    public Color getBackground() {
        return (null);
    }

    
    @Override
    public Component getTreeCellRendererComponent(final JTree tree, final Object value, final boolean sel, final boolean expanded, final boolean leaf, final int row, final boolean hasFocus) {
        final Component ret = super.getTreeCellRendererComponent(tree, value, sel, expanded, leaf, row, hasFocus);
        String toString = null;
        final DefaultMutableTreeNode node = ((DefaultMutableTreeNode) (value));
      
        Object object = node.getUserObject();

        if(object instanceof TreeObject){
        	TreeObject tob = (TreeObject) object;
        	TransactionUnit unit = tob.getUnit();
        	if(unit.fieldType.equals("method")){
        		setIcon(method);
        	}else if(unit.type.contains("class") && !unit.origName.contains("String")){
        		setIcon(clas);
        	}else if(unit.origName.contains("static")){
        		setIcon(private_f);
        	}else if(unit.origName.contains("private")){
        		setIcon(private_f);
        	}else if(unit.origName.contains("public")){
        		setIcon(public_f);
        	}else {
        		setIcon(private_f);
        	}
        	toString = tob.displayName;
        	
        	if(tob.changed){
          		ret.setForeground(Color.RED);
          	} 
      
        }else{
        	toString = object.toString();
        }
        this.setText(toString);
        return ret;
    }
    
}
