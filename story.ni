"Unit 3" by Millennium (Xuran, Richard, Varun, Kai)

Chapter 0

Section 0 - Game Mechanics

StepVariable is a number that varies.
StepVariable is usually 0.
RequiredStep is a number that varies.
RequiredStep is usually 1.
a person can be known or unknown. a Person is usually unknown.
a person can be alive or dead. a Person is usually alive.
knowhere is a room.

Section 1 - Verbs

talking to is an action applying to one visible thing.
Understand "talk to [someone]" as talking to.

digging is an action applying to one visible thing.
Understand "dig under [thing]" and "dig [thing]"as digging.

shooting is an action applying to one visible thing.
Understand "shoot [someone]" as shooting.
instead of shooting [someone]:
	say "you fire the pistol with deadly accuracy. ".

Section 2 - People

your butler is a person.
The butler is wearing a tuxedo, a vest, and white gloves.
The butler is carrying Daniel's Letter.
Instead of asking the butler about something:
	say "I do not know about that sir. ".
Instead of telling the butler about something:
	say "the butler listens attentively, but you can tell that he does not care.".
Instead of giving something to the butler:
	say "What would you have me do with this sir? After giving you a puzzle stare, the butler embarrassedly returns it to you.".
Instead of attacking the butler:
	say "The butler merely turns the other cheek." .
Understand "hit [the butler]"  or "punch [the butler]" as attacking.
Instead of talking to the butler:
	if butler is unknown:
		say "There is a letter for you sir. The courrier delivered it in the dead of the night, and I felt it couldn't be so urgent as to disturb you in your sleep. My apologies sir.[line break]You now have Daniel's Letter";
		move Daniel's letter to the player;
		now butler is known;
	otherwise if RequiredStep > StepVariable:
		say "Are you sure you want to leave sir? ";
	otherwise:
		increment RequiredStep;
		say "Very well, Sir. Let's be on our way to [hub corresponding to a number of StepVariable in Table of Transport].  ";
		now butler is in room corresponding to a number of StepVariable in Table of Transport;
		now player is in room corresponding to a number of StepVariable in Table of Transport.
		
Table of Transport
Number	hub		room
0	"home"		master bedroom
1	"Sir Daniel's House"		parlour
2	"Greenwich Park"		park entrance
3	"the Tower of London"		outer ward

Daniel's wife is a person.
Daniel's wife is carrying Ellumena-tea badge, a revolver, and a vial of red liquid.
DWSpeech is a number that varies.
DWSpeech is usually 0.
Instead of talking to Daniel's wife:
	if Daniel's wife is dead:
		say "wierdo";
	else if DWSpeech is 0:
		say "Daniel's wife begins crying violantly as you take a few steps toward her. It's difficult to assess what would be appropriate in this situation. Perhaps you should try again after she regains her composure. [line break]You think it rude to take note that she has lets out a lot fewer tears than she does violent fits.";
		now DWSpeech is 1;
	else if DWSpeech is 1:
		say "Daniel's wife looks as though she'd regress into her previous sobbing state, but before she reverted into the soppy mess she was a moment ago, she managed to let out a few words. What you made sense of it was this: [quotation mark] He said you were the key [quotation mark]".
Instead of examining Daniel's wife:
	if Daniel's wife is dead:
		say "";
	if Daniel's wife is alive:
		say "a grieving widow, distraught over the death of her beloved husband.".
		
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

Section 3 - Chests

A combination safe is a container.
the combination safe is closed and locked.
There is a note in the safe.
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
		say "The safe unlocks in a smooth motion. Inside the safe there is a note";
		now safe is unlocked;
		now safe is open;
	otherwise:
		say "You enter the password with high hopes, only to have them crushed as the safe remained locked.";
	now the command prompt is ">";
	reject the player's command.
Instead of examining note:
	if player is carrying note:
		say "To whom this may concern,[line break]	If you're reading this, I have most likely left this world. If you want to know what happened to me, go to Greenwich Park. Under the roots of the tallest oak tree, you will find the culmination of my work. It is everything I have worked on for a decade. I hope you are my friend.";
		if StepVariable is 1:
			increment StepVariable;
	else:
		say "the note is in chest.".
		
Buried chest is a container in knowhere.
Instead of examining the buried chest:
	say "[if buried chest is open]inside the old chest is [a list of things in buried chest][end if][if buried chest is closed]the chest is closed[end if]".
understand "old chest" and "chest" as buried chest.
buried chest is closed.
pile of papers, gold figurine, pornographic magazine are inside the buried chest.
Instead of opening the buried chest:
	Say "You find a [a List of things in the buried chest].";
	now buried chest is open.
Instead of examining pile of papers:
	say "The Ellumena-tea is the single-most elusive group in the history of the world. More precisely, they are the single-most elusive group outside of the history of the world -- conflating it with history would imply that it has been documented. Why Ellumena-tea is able to exert an unprecedented amount influence yet remain covert is a point of uncertainty. It’s essentially a secret society comprised fully of English commoners -- ones that are unsatisfied with the status quo, of course. Because of this multi nucleic design, one would think that its organization is subpar; however, that’s far from the truth.  Over the past decade (in which England’s crime rate was the highest it’s ever been) the Ellumena-tea has been responsible for over 90% of those crimes, most of those are labelled as petty theft. I understand that this is a pretty big accusation to make, but please check the papers beneath this one. I’ve compiled the results from municipal police departments, and most of the crimes committed, whether they are theft or even homicidal cases, there have been squares implanted on the nearest wall at the scene of the crime. This is a show of power if I’ve ever seen one. Despite these open signals to claim their involvement, no one has been able name a single member of the Ellumena-tea. It’s as though they are jeering at the government. [line break][line break]      The Ellumena-tea, I believe, are taking their attempt at the British throne. I might not have the complete evidence at the moment, but having followed this conglomeration of misfits for as long as I have, my intuition is more likely right than wrong. [line break][line break]	I have managed to locate the location of their headquarters to a 93% certainty. Tommorow I will approach the crown with my findings. I can't wait to share what I've found with my wife. She would be so proud of me.";
	if StepVariable is 2:
		increment StepVariable;
		
Section 4 - Clothing

the player is wearing a Fedora, a Trenchcoat, a pair of shoes, and slacks.

Chapter 1- Physical Locations

Section 0- Your House

The Master Bedroom is a room. "[if unvisited]A ray of sunlight permeates through the red cashmere curtains laid over the towering bedside window. Having spent an eventful at a distant cousin's debutante ball, you haven’t much energy to even sit up in bed. Three minutes into your attempt at regaining wakefulness, your butler notices the break in your eyelids and enters the room to pay his respects. [line break][line break]Your butler stands at the corner of the room, awaiting your orders. He's second to none when it comes to the matter of fealty; however, he seems to be assuming a most dutiful stance.  He must be awfully eager to tell you something.[end if]".
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
		say "To my good friend Charles,[line break]     I've discovered something large, Charles. I entreat you to come visit me, for I cannot disclose something of this magnitude over my written word. Please do come soon![line break]	If this reaches you too late. Remember, you are the key.[line break]	Yours truly, Daniel[line break][line break]";
		if the player is not carrying the newspaper:
			say "You see a newspaper on your nightstand in the corner of you field of vision.";
		if the player is carrying the newspaper:
			say "[line break] [line break]It seems to be a dire situation. There may be a connection between Daniel's death and this big discovery he seems to have made.[line break]I should talk to my butler and ask him to call a carriage.";
		if StepVariable is 0:
			increment StepVariable;
	otherwise:
		 say "You attempt to read a letter, but in your sleepy haze, you'd forgotted that you hadn't any such letter. Perhaps you should ask your butler to find whether you recieved any letters.";


Section 1 - Daniel's House

The parlour is a room. "[if unvisited]The carriage abruptly stops against the sidewalk in front of Daniel’s estate. Normally, the butler would rushedly exit the carriage and issue an apologetic bow, but the debilitating sense of gloom hung as an overcast upon the scene. The recieving party at the door included Daniel's wife, whose cheeks were stained with dried tears. Perhaps it would be best if you were to first approach the effective leader of the house.[end if]".
Daniel's wife is in the parlour.
The kitchen is north of the parlour.
The basement is below the kitchen.
the combination safe is in the basement.


Section 2 - Greenwich Park

digTrial is a number that varies.
digTrial is usually 0.
The park entrance is a room.
The garden is west of the park entrance.
the shovel is in the garden.
the woods are south of the park entrance.
a tall oak tree is in the woods.
Instead of digging:
	if the player is carrying the shovel:
		Say "You dig up an old chest";
		move buried chest to woods;
	else if the digTrial is 5:
		Say "You dig up an old chest";
		move buried chest to woods;
	else:
		Say "The Ground is too hard to dig with your hands, but your efforts have caused the ground to loosen up somewhat.";
		increase digTrial by 1.

Section 3 - Tower of London

The outer ward is a room.
The inner ward is inside the outer ward.
The White Tower is inside the inner ward.

Chapter 2 - events

Confrontation is a scene. "[line break]You hear the leaves rustle behind you. When you turn around, you are confronted by a masked figure. You can see the bulge of a pistol beneathe his coat.[line break]The masked figure said, 'You are looking into some very dangerous matters. If you value your life, go home and pretend this never happened.'[line break]The masked figure turns around and begins to walk away".
Confrontation begins when StepVariable is 3.
Confrontation ends when time since Confrontation began is 2 minutes.
When Confrontation begins:
	move masked follower to woods.
When Confrontation ends:
	if maskDead is 0:
		if player is in woods:
			say "The masked figure merges into the shadows. You are left to ponder this surprising turn of events";
	else if maskDead is 1:
		say "You take off his mask. The masked figure is Daniel's wife! Maybe she is holding additional information.";
		move daniel's wife to woods;
		now daniel's wife is dead;
	move masked follower to knowhere.
