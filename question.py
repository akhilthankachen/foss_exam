import gi
from gi.repository import Gtk

class MyWindow(Gtk.Window):

    def __init__(self):
        Gtk.Window.__init__(self, title="Hello World")
	table = Gtk.Table(6, 3, True)
	self.add(table)
        self.button1 = Gtk.Button(label="Evaluate")
        self.button2 = Gtk.Button(label="Evaluate")
        self.button1.connect("clicked", self.on_button_clicked_one)
        self.button2.connect("clicked", self.on_button_clicked_two)

	label1 = Gtk.Label()
        label1.set_text("Who is the father of india?")
        label1.set_justify(Gtk.Justification.LEFT)
        
        label2 = Gtk.Label()
        label2.set_text("Who runs foss lab?")
        label2.set_justify(Gtk.Justification.LEFT)
        
        self.entry1 = Gtk.Entry()
        self.entry1.set_text("")
        self.entry2 = Gtk.Entry()
        self.entry2.set_text("")
        
        table.attach(label1,0,3,0,1)
        table.attach(self.entry1,0,3,1,2)
        table.attach(self.button1,0,1,2,3)
        table.attach(label2,0,3,3,4)
        table.attach(self.entry2,0,3,4,5)
        table.attach(self.button2,0,1,5,6)
        
    def on_button_clicked_one(self, widget):
        if(self.entry1.get_text() == "gandhi"):
        	print("question1 correct")
    
    def on_button_clicked_two(self, widget):
        if(self.entry2.get_text() == "vipinsir"):
        	print("question2 correct")
    	

win = MyWindow()
win.connect("delete-event",Gtk.main_quit)
win.show_all()
Gtk.main()
