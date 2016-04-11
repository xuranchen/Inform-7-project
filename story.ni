"Unit 3" by Millennium

Chapter 0

Section 0 - Game Mechanics

StepVariable is a number that varies. 
StepVariable is usually 0. 
RequiredStep is a number that varies. 
RequiredStep is usually 1. 
a person can be known or unknown. a Person is usually unknown. 
knowhere is a room.

Section 1 - Verbs

talking to is an action applying to one visible thing. 
Understand "talk to [someone]" as talking to. 
digging is an action applying to a thing.
Understand "dig [thing]" as digging.

Section 2 - the Butler

your butler is a person.
The butler is carrying Daniel's Letter.
Instead of asking the butler about something:
	say "I do not know about that sir. ";
Instead of telling the butler about something:
	say "the butler listens attentively, but you can tell that he does not care.";
Instead of giving something to the butler:
	say "What would you have me do with this sir? After giving you a puzzle stare, the butler ebarrassedly returns it to you.";
Instead of attacking the butler: 
	say "The butler merely turns the other cheek." ;
	
Understand "hit [the butler]"  or "punch [the butler]" as attacking. 
After talking to the butler, say "I have talked to the butler".
Instead of talking to the butler:
	if butler is unknown:
		say "There is a letter for you sir. The courrier delivered it in the dead of the night, and I felt it couldn't be so urgent as to disturb you in your sleep. My apologies sir.[line break]You now have Daniel's Letter";
		move Daniel's letter to the player;
		now butler is known;
	otherwise if RequiredStep > StepVariable:
		say "Are you sure you want to leave sir? ";
	otherwise:
		say "Very well, Sir. Let's be on our way to [hub corresponding to a number of StepVariable in Table of Transport].  ";
		now butler is in room corresponding to a number of StepVariable in Table of Transport;
		now player is in room corresponding to a number of StepVariable in Table of Transport;


		
Table of Transport
Number	hub		room
0	"home"		master bedroom	
1	"Sir Daniel's House"		parlour
2	"Greenwich Park"		park entrance
3	"the Tower of London"		outer ward

the parlour is a room.
the park entrance is a room. 
the outer ward is a room.

Section 3 - Chests 

A combination safe is a container. 
the combination safe is closed and locked.
instead of examining the safe:
	If combination safe is locked:
		Say  "The safe is locked by a 3 letter combination lock.";
	Else if the combination safe is unlocked:
		Say "The safe is an antique, covered with intricate designs.".
instead of opening the combination safe:
	if the combination safe is locked:
		now the command prompt is  "What sequences of letters do you want to enter: ";
	else if the combination safe is unlocked:
		Say "You open the combination safe.";
		now combination safe is open.
After reading a command when the command prompt is "What sequences of letters do you want to enter: ":
	if the player's command matches "you":
		say "Unlocked";
		now safe is unlocked;
		now safe is open;
	otherwise:
		say "You are ass at guessing.";
	now the command prompt is ">";
	reject the player's command.
Buried chest is a container in knowhere.
understand "old chest" as buried chest.
buried chest is closed.
asdf is in the buried chest.

Section 4 - Clothing

the player is wearing a Fedora, a Trenchcoat, a pair of shoes, and slacks. 

Chapter 1 physical Locations

Section 0- Your House

The Master Bedroom is a room. [if unvisited]"A ray of sunlight permeates through the red cashmere curtains laid over the towering bedside window. Having spent an eventful at a distant cousin's debutante ball, you haven’t much energy to even sit up in bed. Three minutes into your attempt at regaining wakefulness, your butler notices the break in your eyelids and enters the room to pay his respects. [line break][line break]Your butler waits at the corner of the room, awaiting your orders. He's second to none when it comes to the matter of fealty; however, he seems to be assuming a most dutiful stance.  He must be awfully eager to tell you something."[end if].

your butler and the player are in The Master Bedroom.
a nightstand is a supporter in the Master Bedroom.
a newspaper is on the nightstand. 
an empty glass of water is on the nightstand. empty glass of water is fixed in place.
a pistol is in the Master Bedroom. 
Instead of taking the pistol:
	if player is not carrying the pistol:
		say "You carefully stuff the pistol into your coat pockets. Never had you fired one before-- never had you the need. You recall a phrase your late mother used to say: [quotation mark]no man wins in a game of fire[quotation mark]";
		move pistol to the player;
	otherwise:
		say "You've already taken the pistol";

Instead of examining the newspaper:
	If the player is carrying the newspaper: 
		say "Your eyes align with today's headline: English nobleman dead in freak accident... In a few lines, it's revealed that the victim was none other that your friend Daniel.."; 
	Otherwise:
		say "Something on the front page catches your attention, but you cannot make out the details. Perhaps picking it up will help.";
		
Understand "grab [newspaper]" or "pick up [newspaper]" as taking.
Understand "read [newspaper]" or "look at [newspaper]" as examining.

Instead of examining Daniel's Letter:
	if the player is carrying Daniel's Letter: 
		say "To my good friend Charles,[line break]     I've discovered something large, Charles. I entreat you to come visit me, for I cannot disclose something of this magnitude over my written word. Please do come soon![line break]     Yours truly, Daniel[line break][line break]";
		if the player is not carrying the newspaper:
			say "You see a newspaper on your nightstand in the corner of you field of vision.";
		if the player is carrying the newspaper:
			say "[line break] [line break]It seems to be a dire situation. There may be a connection between Daniel's death and this big discovery he seems to have made";
		now StepVariable is 1;
	otherwise:
		 say "You attempt to read a letter, but in your sleepy haze, you'd forgotted that you hadn't any such letter. Perhaps you should ask your butler to find whether you recieved any letters.";


Section 1 - Daniel's House

The parlour is a room. [if unvisited]"The carriage abruptly stops against the sidewalk in front of Daniel’s estate. Normally, the butler would rushedly exit the carriage and issue an apologetic bow, but the debilitating sense of gloom hung as an overcast upon the scene. The recieving party at the door included Daniel's wife, whose cheeks were stained with dried tears. Perhaps it would be best if you were to first approach the effective leader of the house." [end if]

The kitchen is north of the parlour.

The basement is below the kitchen.
the combination safe is in the basement.
There is a note in the safe.
Instead of examining note:
	say "lol";
	now StepVariable is 2;

Daniel's wife is a person. 
Daniel's wife is in the parlour.
DWSpeech is a number that varies.
DWSpeech is usually 0.

Instead of talking to Daniel's wife:
	if DWSpeech is 0:
		say "Daniel's wife begins crying violantly as you take a few steps toward her. It's difficult to assess what would be appropriate in this situation. Perhaps you should try again after she regains her composure. [line break]You think it rude to take note that she has lets out a lot fewer tears than she does violent fits.";
		now DWSpeech is 1;
	if DWSpeech is 1:
		say "Daniel's wife looks as though she'd regress into her previous sobbing state, but before she 
		


Daniel's wife is fixed in place. 

Section 2 - Greenwich Park

digTrial is a number that varies.
digTrial is usually 0.
The park entrance is a room.
The garden is west of the park entrance.
the shovel is in the garden.
the woods are south of the park entrance.
a patch of dirt is in the woods.
Instead of digging:
	if the player is carrying the shovel:
		Say "You dig up an old chest";
		move buried chest to woods;
		move patch of dirt to knowhere;
	else if the digTrial is 5:
		Say "You dig up an old chest";
		move buried chest to woods;
		move patch of dirt to knowhere;
	else:
		Say "The Ground is too hard to dig with your hands, but seems to be miraculously loosening up";
		increase digTrial by 1;
		

Section 3 - Tower of London

The outer ward is a room.
