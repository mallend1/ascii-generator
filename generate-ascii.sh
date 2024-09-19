from pyfiglet import Figlet
import sys
import random
import os

#create figlet object
f = Figlet()

#read environment variable passed via docker run command
input = os.environ.get('INPUT')

#if no flag for custom text passed in, use random default text
if input == "":
    default_phrase = [ "Wubba lubba dub dub", "Geez", "I'm Pickle Rick!", "Literally everything is in space, Morty!" ]
    random_phrase = random.choice(default_phrase)
    figlet_output = f.renderText(random_phrase)
    print (figlet_output)
#if flag was used to pass variable in, use custom text instead
else:
    figlet_output = f.renderText(input)
    print (figlet_output)
