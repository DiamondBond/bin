#!/bin/python3
import sys
import os
from datetime import date
from rofi import Rofi

# path to where you want your TODOs to be inserted to
inbox_file = "/home/diamond/Dropbox/org/inbox.org"
r = Rofi()

def todo_to_inbox():
    todo = r.text_entry("TODO")#, message="""Usage: 
    #Type full text of org TODO and any tags.""")
    if todo is not None:
        f = open(inbox_file, "a")
        f.write("\n** TODO ")
        f.write(todo + "\n")
        f.write(":PROPERTIES:\n")
        f.write(":CREATED: " + "[" + date.today().strftime("%Y-%m-%d %a") + "]\n")
        f.write(":END:\n")
        f.close()

todo_to_inbox()
