package com.viris.gui;


import java.awt.*;
import java.awt.event.*;
import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.swing.*;
import javax.swing.event.*;

import com.viris.debuger.SocketClient;

import xyzkwjbl.viris.service.Request;
import xyzkwjbl.viris.service.TransactionUnit;

public class Watch extends JPanel implements ListSelectionListener {
	/**
	 * 
	 */
	private static final long serialVersionUID = 4898772009224094179L;
	private JList list;
	private DefaultListModel listModel;

	private static final String removeString = "Remove";
	private static final String setString = "Set";
	private JButton removeButton;
	private Thread updater;
	private SocketClient client;
	private JTextField setText;
	private JButton setButton;

	public Watch(SocketClient client) {
		super(new BorderLayout());

		listModel = new DefaultListModel();

		// Create the list and put it in a scroll pane.
		list = new JList(listModel);
		list.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
		list.setSelectedIndex(0);
		list.addListSelectionListener(this);
		list.setVisibleRowCount(6);
		JScrollPane listScrollPane = new JScrollPane(list);

		removeButton = new JButton(removeString);
		removeButton.setActionCommand(removeString);
		removeButton.addActionListener(new RemoveListener());

		setText = new JTextField(6);

		JPanel buttonPane = new JPanel();
		buttonPane.setLayout(new BoxLayout(buttonPane, BoxLayout.LINE_AXIS));
		buttonPane.add(removeButton);
		buttonPane.add(Box.createHorizontalStrut(5));
		buttonPane.add(new JSeparator(SwingConstants.VERTICAL));
		buttonPane.add(Box.createHorizontalStrut(5));

		buttonPane.add(setText);
		buttonPane.add(Box.createHorizontalStrut(5));
		buttonPane.add(new JSeparator(SwingConstants.VERTICAL));
		buttonPane.add(Box.createHorizontalStrut(5));

		setButton = new JButton(setString);
		setButton.setActionCommand(setString);
		setButton.addActionListener(new SetListener());
		buttonPane.add(setButton);

		buttonPane.setBorder(BorderFactory.createEmptyBorder(5, 5, 5, 5));

		add(listScrollPane, BorderLayout.CENTER);
		add(buttonPane, BorderLayout.PAGE_END);

		// init updater
		this.client = client;
		updater = new Thread(new Updater());
		updater.start();
	}

	public void addElement(TransactionUnit unit) {
		listModel.addElement(new WatchElement(unit));
	}

	class RemoveListener implements ActionListener {
		public void actionPerformed(ActionEvent e) {
			int index = list.getSelectedIndex();
			
			if(index==-1)
				return;
			
			listModel.remove(index);

			int size = listModel.getSize();

			if (size == 0) { 
				removeButton.setEnabled(false);

			} else { 
				if (index == listModel.getSize()) {
					index--;
				}
				list.setSelectedIndex(index);
				list.ensureIndexIsVisible(index);
			}
		}
	}

	class SetListener implements ActionListener {

		public void actionPerformed(ActionEvent e) {

			int index = list.getSelectedIndex(); // get selected index
			if (index == -1) { // no selection
				return;
			}
			WatchElement element = (WatchElement) listModel.get(index);
			TransactionUnit unit = element.unit;

			try {

				Request request = new Request(element.unit.bshName + "="
						+ setText.getText());

				try {
					client.message(request);
				} catch (IOException e1) {
					e1.printStackTrace();
				} catch (ClassNotFoundException e1) {
					e1.printStackTrace();
				}

				List<TransactionUnit> elements = client.message(new Request(
						"watch", "return " + unit.bshName, unit));
				// should be only on element
				TransactionUnit recv = elements.get(0);
				element.set(recv);
				listModel.set(index, element);
			} catch (IOException e2) {
				e2.printStackTrace();
			} catch (ClassNotFoundException e3) {
				e3.printStackTrace();
			}

		}

	}

	public void valueChanged(ListSelectionEvent e) {
		if (e.getValueIsAdjusting() == false) {
			if (list.getSelectedIndex() == -1) {
				removeButton.setEnabled(false);

			} else {
				removeButton.setEnabled(true);
			}
		}
	}

	class Updater implements Runnable {
		@Override
		public void run() {
			while (true) {

				try {
					int index = list.getSelectedIndex();
					for (int i = 0; i < listModel.getSize(); i++) {
						WatchElement element = (WatchElement) listModel.get(i);
						TransactionUnit unit = element.unit;

						try {

							List<TransactionUnit> elements = client
									.message(new Request("watch", "return "
											+ unit.bshName, unit));
							// should be only one element
							TransactionUnit recv = elements.get(0);
							element.set(recv);
							listModel.set(i, element);
							
						} catch (IOException e) {
							e.printStackTrace();
						} catch (ClassNotFoundException e) {
							e.printStackTrace();
						}

					}
					Thread.sleep(5000);
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
			}

		}

	}

}