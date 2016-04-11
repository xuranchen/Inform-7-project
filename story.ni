"Unit 3" by Millennium
The Story Descripition is 

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

digging is an action applying to one visible thing.
Understand "dig [thing]" as digging.

shooting is an action applying to one visible thing.
Understand "shoot [someone]" as shooting.
instead of shooting [someone]:
	say "you fire the pistol".

Section 2 - People

your butler is a person.
The butler is carrying Daniel's Letter.
Instead of asking the butler about something:
	say "I do not know about that sir."
Instead of telling the butler about something:
	say "the butler listens attentively, but you can tell that he does not care."
Instead of giving something to the butler:
	say "What would you have me do with this sir?"
Instead of attacking the butler: 
	say "The butler merely turns the other cheek." 
Understand "hit [the butler]"  or "punch [the butler]" as attacking. 
After talking to the butler, say "I have talked to the butler".
Instead of talking to the butler:
	if butler is unknown:
		say "There is a letter for you sir.[line break]You now have Daniel's Letter";
		move Daniel's letter to the player;
		now butler is known;
	Otherwise if RequiredStep > StepVariable:
		say "Are you sure you want to leave sir?";
	Otherwise:
		say "Very Well Sir";
		move butler to room corresponding to a number of StepVariable in Table of Transport;
		move player to room corresponding to a number of StepVariable in Table of Transport;
		increment RequiredStep.
[after asking the butler about A hub listed in Table of Transport:
	say "Yes sir, calling a carriage to [hub].";
	move player to room corresponding to hub in Table of Transport;
	move butler to room corresponding to hub in Table of Transport.
	]
masked follower is a person.
understand "masked figure" as masked follower.
masked follower is in knowhere.
maskDead is a number that varies.
maskDead is usually 0.
instead of shooting masked Follower:
	if player is carrying pistol:
		say "You swiftly pull out your pistol and shoots him in the back. No one intimitades the great Nick-Williams Charles.";
		now maskDead is 1;
	else:
		say "you form a gun with your hand and points it at his back. [line break]'pew pew', you say. [line break]The masked figure gives you a confused look, then continues onward".
		
Table of Transport
Number	hub		room
0	"Home"		master bedroom	
1	"Daniel's House"		parlour
2	"Greenwich Park"		park entrance
3	"Tower of London"		outer ward
		
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

Chapter 1- Physical Locations

Section 0- Your House

The Master Bedroom is a room.
your butler and the player are in The Master Bedroom.
a nightstand is a supporter in the Master Bedroom.
a newspaper is on the nightstand. 
an empty glass of water is on the nightstand. empty glass of water is fixed in place.
a pistol is in the Master Bedroom.
Instead of examining the newspaper:
	If the player is carrying the newspaper: 
		say "Your eyes align with today's headline: Noble dead in freak accident... In a few lines, it's revealed that the victim was none other that your friend Daniel.."; 
	Otherwise:
		say "Something on the front page catches your attention, but you cannot make out the details. Perhaps picking it up will help.".
Understand "read [newspaper]" or "look at [newspaper]" as examining.
Instead of examining Daniel's Letter:
	say "I is ded, plz help";
	now StepVariable is 1.
	
Section 1- Daniel's House

The parlour is a room.
The kitchen is north of the parlour.
The basement is below the kitchen.
the combination safe is in the basement.
There is a fuckboy in the safe.
Instead of examining fuckboy:
	say "go to wuds plz";
	now StepVariable is 2.

Section 2 - Greenwich Park

The park entrance is a room.
The garden is west of the park entrance.
the shovel is in the garden.
the woods are south of the park entrance.
a patch of dirt is in the woods.
Instead of digging:
	if the player is carrying the shovel:
		Say "You dig up an old chest";
		move buried chest to player;
		move patch of dirt to knowhere;
	else:
		Say "The Ground is too hard to dig with your hands".
Instead of opening the buried chest:
	if the player is carrying the buried chest:
		Say "open chest, tower of london blah blah";
		move buried chest to knowhere;
		now StepVariable is 3.
		
Section 3 - Tower of London

The outer ward is a room.
The inner ward is inside the outer ward.
The White Tower is inside the inner ward.

Chapter 2 - events

When play begins:
	Say "You wake up on a stormy morning feeling worn out from a night of revels.".
Confrontation is a scene. "You hear the leaves rustle behind you. When you turn around, you are confronted by a masked figure. You can see the bulge of a pistol beneathe his coat.[line break]The masked figure said, 'You are looking into some very dangerous matters. If you value your life, go home and pretend this never happened.'[line break]The masked figure turns around and begins to walk away".
Confrontation begins when StepVariable is 3.
Confrontation ends when time since Confrontation began is 2 minutes.
When Confrontation begins:
	move masked follower to woods.
When Confrontation ends:
	if maskDead is 0:
		say "The masked figure merges into the shadows. ";
	else if maskDead is 1:
		say "You take off his mask. The masked figure is Daniel's wife!";
	Say "You are left to ponder this surprising turn of events".
