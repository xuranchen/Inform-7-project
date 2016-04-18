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
white tower room is a kind of room.

Section 1 - Verbs

Instead of asking someone about something:
	say "trying talking to them instead".
talking to is an action applying to one visible thing.
Understand "talk to [someone]" as talking to.
instead of talking to [someone]:
	say "[the noun] does not seem to be interested in talking right now".

digging is an action applying to one visible thing.
Understand "dig under [thing]" and "dig [thing]"as digging.

shooting is an action applying to one visible thing.
Understand "shoot [someone]" as shooting.
instead of shooting [someone]:
	if player is carrying pistol:
		if player is in a white tower room:
			say "Professor Addcox's voice echoed through your head: there is a time and place for everything, but not now![line break]The noise from the pistol in a crowded area will draw more attention than you want.";
		else:
			say "you fire the pistol with deadly accuracy, but you forgot to load the gun.";
	else:
		say "you reach into you pocket, then realized that last night, you mistakenly traded your prized show-gun for 6 dozen turkey eggs in your drunken stupor."
	

Section 2 - People

your butler is a person.
The butler is carrying Daniel's Letter.
Instead of asking the butler about something:
	say "I know nothing of that sir. ".
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
The description of daniel's wife is "[if alive] A grieving widow, distraught over the death of her husband. [end if][if dead]An agent of the Ellumena-tea. She caused the death of her husband as he struggled to uncover a conspiracy against the crown.[end if]".
Daniel's wife is carrying Ellumena-tea badge, a revolver, and a vial of red liquid.
DWSpeech is a number that varies.
DWSpeech is usually 0.
Instead of talking to Daniel's wife:
	if Daniel's wife is dead:
		say "With a noble's upbringing the great Nick-William Charles had been taught various skills and arts, but unfortunately, speaking to the dead isn't one ";
	else if DWSpeech is 0:
		say "Daniel's wife begins crying violently as you take a few steps toward her. It's difficult to assess what would be appropriate in this situation. Perhaps you should try again after she regains her composure. [line break]You think it rude to take note that she has lets out a lot fewer tears than she does violent fits.";
		now DWSpeech is 1;
	else if DWSpeech is 1:
		say "Daniel's wife looks as though she'd regress into her previous sobbing state, but before she reverted into the soppy mess she was a moment ago, she managed to let out a few words. What you made sense of it was this: [quotation mark] He said you were the key [quotation mark]".

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

ward guard is a person. 
understand "ward guards" as ward guard.
instead of examining ward guard:
	say "[if alive] They stand vigilantly outside of the white tower.[end if][if dead]The ward guards' corpses lay strewn about, for they were no match for the immpeccible accuracy of Nick-Williams Charles. Hubris aside, you must soon arrange for the burial of these men.".
instead of shooting ward guard:
	if player is carrying pistol:
		now con is 1;
		say "You pull out your pistol and attacks four armed guards. In a brilliant stroke of luck, you no-scope all four guards with one bullet.";
		now ward guard is dead.
instead of giving Ellumena-tea badge to ward guard:
	if player is carrying Ellumena-tea badge:
		say "You give the badge to the guard, they glance briefly and let you pass. ";
		now con is 1;
	else:
		say "You do not have a badge.";
instead of showing Ellumena-tea badge to ward guard:
	if player is carrying Ellumena-tea badge:
		say "You give the badge to the guard, they glance briefly and let you pass. ";
		now con is 1;
	else:
		say "You do not have a badge.";
		
cell guard is a person.
instead of examining cell guard:
	say "[if alive]Elite members of the Ellumena-tea, they stand at attention. [end if][if dead]They're bodies are eviserated by your butler's precise cuts. He is definitely getting a raise[end if]".
instead of talking to cell guard:
	say "[if alive]The guards are well trained, they will not respond to your words.[end if][if dead]Their eyes open. Just Kidding, they're dead. Stop talking to dead people[end if]".
instead of shooting cell guard:
	say "You really think they let you keep a gun?".
	
old man is a person.
instead of shooting the old man:
	if player is carrying pistol:
		say "You shoot the decrepid figure before you. It takes a few shots before you finally hit the mark. ";
		now old man is dead;
	else:
		say "Don't you wish you had gun right now?".
instead of attacking the old man:
	say "[if old man is alive]You are without weapons, but you are young and strong. You attack the old man with intent to kill. When the dust settles, you're the only living soul remaining in the chapel.[end if][if old man is dead]You strike at his corpse, you monster.";
	now old man is dead.



Section 3 - Chests

A combination safe is a container.
combination safe is fixed in place.
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
		say "To whom this may concern,[line break]	    If you're reading this, I am most likely no longer a part of this world. If you want to know what happened to me, go to Greenwich Park. Under the roots of the tallest oak tree, you will find the culmination of my work. It is everything I have worked on for a decade. My one sincere hope is that you are my friend but if not that, a friend of England.";
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
	say "The Ellumena-tea is the single-most elusive group in the history of the world. More precisely, they are the single-most elusive group outside of the history of the world -- conflating it with history would imply that it has been documented. Why Ellumena-tea is able to exert an unprecedented amount influence yet remain covert is a point of uncertainty. It’s essentially a secret society comprised fully of English commoners -- ones that are unsatisfied with the status quo, of course. Because of this multi nucleic design, one would think that its organization is subpar; however, that’s far from the truth.  Over the past decade (in which England’s crime rate was the highest it’s ever been) the Ellumena-tea has been responsible for over 90% of those crimes, most of those are labelled as petty theft. I understand that this is a pretty big accusation to make, but please check the papers beneath this one. I’ve compiled the results from municipal police departments, and most of the crimes committed, whether they are theft or even homicidal cases, there have been squares implanted on the nearest wall at the scene of the crime. This is a show of power if I’ve ever seen one. Despite these open signals to claim their involvement, no one has been able name a single member of the Ellumena-tea. It’s as though they are jeering at the government. [line break][line break]      The Ellumena-tea, I believe, are taking their attempt at the British throne. I might not have the complete evidence at the moment, but having followed this conglomeration of misfits for as long as I have, my intuition is more likely right than wrong. [line break][line break]	I have managed to locate the location of their headquarters to a 93% certainty. Tommorow I will approach the crown with my findings.[line break] As an aside, I can't wait to share what I've found with my wife. She would be so proud of me.";
	if StepVariable is 2:
		say "[line break]    You've just unearthed an unreasonably large conspiracy which is sure to debase the public's trust in Parliament's power if it were leaked. It's likely best that you keep this within yourself. Judging from what Daniel's papers have disclosed about this organization, it's a threat to the country if news of Ellumina-tea's destructive power is brought to the public--not to mention their latest goal of assassinating the crown.[line break]";
		increment StepVariable;
		
Section 4 - Clothing

the player is wearing a Fedora, a Trenchcoat, a pair of shoes, and slacks.
The butler is wearing a tuxedo, a vest, and white gloves.

Chapter 1- Physical Locations

Section 0- Your House

The Master Bedroom is a room. "[if unvisited]A ray of sunlight permeates through the red cashmere curtains laid over the towering bedside window. Having spent an eventful at a distant cousin's debutante ball, you haven’t much energy to even sit up in bed. Three minutes into your attempt at regaining wakefulness, your butler notices the break in your eyelids and enters the room to pay his respects. [line break][line break]Your butler stands at the corner of the room, awaiting your orders. He's second to none when it comes to the matter of fealty; however, he seems to be assuming a most dutiful stance.  He must be awfully eager to tell you something.[end if]".
your butler and the player are in The Master Bedroom.
a nightstand is a supporter in the Master Bedroom.
a newspaper is on the nightstand.
an embroidered dress is on the nightstand. The description of the embroidered dress is "You do not recall ever seeing this item before, perhaps you have had more to drink than you remember. ".
a pistol is in the Master Bedroom.
Instead of taking the pistol:
	if player is not carrying the pistol:
		say "You carefully stuff the pistol into your coat pockets. Never had you fired one before-- never had you the need. You recall a phrase your late mother used to say: [quotation mark]no man wins in a game of fire[quotation mark][line break]";
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
			say "[line break] [line break]It seems to be a dire situation. There may be a connection between Daniel's death and this big discovery he seems to have made.[line break]I should talk to my butler and ask him to call a carriage. ";
		if StepVariable is 0:
			increment StepVariable;
	otherwise:
		 say "You attempt to read a letter, but in your sleepy haze, you'd forgotted that you hadn't any such letter. Perhaps you should ask your butler to find whether you recieved any letters.";


Section 1 - Daniel's House

The parlour is a room. "[if unvisited]The carriage abruptly stops against the sidewalk in front of Daniel’s estate. Normally, the butler would rushedly exit the carriage and issue an apologetic bow, but the debilitating sense of gloom hung as an overcast upon the scene. The recieving party at the door included Daniel's wife, whose cheeks were stained with dried tears. Perhaps it would be best if you were to first approach the effective leader of the house.[end if][line break] You can see the kitchen to the north".
Daniel's wife is in the parlour.
The kitchen is north of the parlour. "The kitchen is small but cozy. Two chairs are neatly tucked underneath a brown rectangular -shaped table.[if fake basket of fruit is in kitchen] A basket of fruit rests in the middle of the table ; upon closer inspection, the unnatural shiny reflection of the ceiling light on the fruit gives it away as being metallic.[end if][if glass of wine is in kitchen] A glass of wine sits on the countertop.[end if] To the right of the counter lies a whirring kettle on the stove and a compact silver-colored refrigerator. Dirty dishes are piled up in the sink to the left of the counter.[line break] You can see the parlour to the south and a basement beneath you.".
two chairs, Table, a counter top are in the kitchen.
table, counter top is a supporter.
a fake basket of fruit is on the table.
a glass of wine is on the counter top.
chairs are fixed in place.
The basement is below the kitchen. " The room is dark and humid. It is hard to tell what is inside the room. The place seems messy. There must be a fight that happened here. Daniel barely comes here, so there might be clues about his disappearance. [line break] You can see the kitchen above you".
the description of chair is "A simple backed chair. It has seen some use.".
the description of table is "A brown rectangular table. The family probably ate here on occasion.".
the description of counter top is "A marble counter-top. ".
the description of fake basket of fruit is "A basket of fruit rests in the middle of the table ; upon closer inspection, the unnatural shiny reflection of the ceiling light on the fruit gives it away as being metallic.".
the description of glass of wine is "A half filled glass of wine. You could envision Daniel sitting in his ".
the combination safe, a lamb, a notebook is in the basement.
the description of lamb is "Daniel was always more on the eccentric side, but a baby lamb? What is it doing in his basement!".
the description of notebook is "A plain notebook. There seem to be a few pages ripped out. ".

Section 2 - Greenwich Park

digTrial is a number that varies.
digTrial is usually 0.
The park entrance is a room. "[if unvisited]Your carriage pulls up to the entrance of Greenwich Park. It is approaching dusk. you used to come here every day for exercise. The dying light bathed the park in an ominous gloom. [end if][if visited]The entrance to Greenwich Park. [end if][line break]You see garden to the west and woods to the south.".
a park bench is a supporter in park entrance.

The garden is west of the park entrance. "a beautiful garden. You used to take walks here with Daniel and his family. [line break]You see park entrance to the east.".
a shovel, manure, flowers is in the garden. 

Instead of examining shovel:
	say "A shovel left by the gardeners.".
the woods are south of the park entrance. "An forest of oaks. You rarely come here during your visits to the park.[line break]You see park entrance to the north.".
shrubbery and willow tree are fixed in place in woods.
a tall oak tree is in the woods. "An ancient oak tree that towers over all the other tree.  Though you've strolled past this same area of the park a countless number of times throughout your childhood, never had you taken note of the tree's collosal size. Its roots reached far and it towered higher than any tree you'd ever seen, but it was unmistakably dead. Its branches were either entirely barren or overburdened with snow. For some strange reason, you cannot help but liken it to the current state of affairs in London.". tall oak tree is fixed in place.
Instead of digging the tall oak tree:
	if the player is carrying the shovel:
		if the buried chest is not in woods:
			Say "You dig up an old chest";
			move buried chest to woods;
		else:
			Say "you keep digging, to no avail.";
	else if the digTrial is 5:
		if the buried chest is not in woods:
			Say "You dig up an old chest";
			move buried chest to woods;
		else:
			Say "you keep digging, to no avail.";
	else:
		Say "The Ground is too hard to dig with your hands, but your efforts have caused the ground to loosen up somewhat.";
		increase digTrial by 1.
instead of examining park bench:
	say "A normal park bench.".
instead of examining shovel:
	say "It seems to be have been left behind by the gardeners. It looks very useful for digging things up.".
instead of examining flowers:
	say "a beautiful venus flytrap. You wonder how many victims it has claimed today.".
instead of examining manure:
	say "It seem to have been left by some sort of pet, perhaps a crocodile.".
instead of examining shrubbery:
	say "It is covered by those red fruits mommy always said were fine to yet.".
instead of examining willow tree:
	say "Nope, not an oak tree.".
instead of examining oak tree:
	say "Seems to be a tree of the oak variety. You regret not paying attention to Dr. Einstein's biology lessons. ".


Section 3 - Tower of London

The outer ward is a room. "[if unvisited]You arrive at the Tower of London as the clock strikes midnight. The tower has long since closed to the public and this is a perfect opportunity to investigate.[end if] [line break]To the south, you see the entrance to the Inner Ward.".
The inner ward is south of the outer ward.
ward guard is in the Inner ward. 
dungeon, The Solar, Storeroom, Great Hall are rooms.
The solar is south of the inner ward. 
the great hall is south of the solar.
the storeroom is west of the great hall.
Saint John's chapel is south of the great hall.
Instead of going south from inner ward:
	if unvisited:
		if con is 0:
			now con is 2;
		if con is 1:
			move player to Solar;
	else:
		move player to Solar.
cell guard is in storeroom
dungeon chest is a container in the dungeon.
dungeon chest is fixed in place.
dungeon chest is closed and locked.
cell door is a closed, locked  door.
cell door is west of the dungeon and east of the great hall.
cell door is lockable and locked.
old man is in saint john's chapel.

Chapter 2 - events

Confrontation is a scene. "[line break]You hear the leaves rustle behind you. When you turn around, you are confronted by a masked figure. You can see the bulge of a pistol beneathe his coat.[line break]The masked figure said, [quotation mark] You are looking into some very dangerous matters. If you value your life, go home and pretend this never happened.[quotation mark][line break]The masked figure turns around and begins to walk away".
Confrontation begins when StepVariable is 3.
Confrontation ends when time since Confrontation began is 2 minutes.
When Confrontation begins:
	move masked follower to woods.
When Confrontation ends:
	if maskDead is 0:
		if player is in woods:
			say "The masked figure merges into the shadows. You are left to ponder this surprising turn of events";
	else if maskDead is 1:
		say "You take off his mask. The masked figure is Daniel's wife! What a turn of events! Upon searching her, you discover an organization badge.[line break]You now have Ellumena-tea badge. Perhaps now, you may be able to infiltrate this sinister organization.";
		move daniel's wife to woods;
		now daniel's wife is dead;
		move Ellumena-tea badge to player;
	move masked follower to knowhere.

Confrontation2 is a scene."You walk into the Inner Tower. Several guards confront you and ask for a badge of membership.".
Confrontation2 begins when player is in inner ward for the first time.  
con is a number that varies.
con is 0.
Confrontation2 ends when con is not 0.
When confrontation2 ends:
	if con is 2:
		say "You try to enter the white tower, but the guards tackle and restrain you. ";
		now everything carried by the player is in the dungeon chest;
		now player is in dungeon.

Captured is a scene. "A short while later, you find yourself emprisoned in the Tower of London having lost all of your belongings.[line break]Confronting the guards was a mistake--your status had no bearing here. In a positive light, the unlawful incarceration is further proof that you are where you were trying to be--right in the heart of the Elumina-tea. ".
captured begins when player is in dungeon for the first time.
captured ends when time since captured began is 6 minutes.
when captured begins:
	now cell guard is in the dungeon.
when captured ends:
	say "You nearly resign to your fate as a prisoner in this dreary jail, but as you begin to close your eyes for the night in submission, a peculiar turn of events took place. You hear a commotion not far from your own cell. Through the slit of the cell door, you can see a familiar figure brawling with a guard, wielding a foreign-looking blade. A moment later, you hear a clanging at the lock apparatus of your door, and the doors subsequently flung open. The man behind it was none other than your butler. [line break] [line break] [quotation mark] Master, I advise that you quit stumbling about. As far as I understand, you have more important matters to attend to [quotation mark] [line break] With that, the butler gestures you to continue your pursuit.";
	now cell guard is dead;
	now dungeon chest is open;
	now dungeon chest is unlocked;
	now cell door is open;
	now cell door is unlocked;
	now butler is in dungeon.

wrong way is a scene. "You stumble into the storeroom. To your surprise, several guards lounged within, sipping on some high quality brandy. [line break] They jump in surprise, then quickly grab you.".
wrong way begins when player is in storeroom for the first time.
when wrong way begins:
	if cell guard is alive:
		now everything carried by the player is in the dungeon chest;
		move player to dungeon.

climax is a scene. "You enter Saint John's Chapel. You find yourself face-to-face with an old man. [line break][quotation mark]You must be one following the paths of that other nobleman,[quotation mark] he says, [quotation mark]I did not expect you to make it so far[quotation mark][line break][quotation mark]Before you do anything rash, let me offer you an alternative. My name is lord Will I-am Skaekspeer. This revolution is something that I have been cultivating my entire life. Parliament is weak, corrupt, and most importantly, me. I am sorry your friend had to die, but his death was a necessary evil in the grand scheme of evolution. Join me, and you could rule this nation by my side. If you wish to take me up on this offer, meet me in the great hall. I have something to show you.[quotation mark][line break]This is your last chance to make a decision, choose wisely my old friend.".
climax begins when player is in Saint John's chapel for the first time.
climax ends when player is in great hall.
when climax ends:
	if old man is dead:
		end the story finally saying "With Lord Shaekspeer dead, the Ellumena-tea falls into disarray. The royal guard is able to quickly dispatch the remainder of the conspiracy group. With no more obstacles in her path, Queen Victoria rose to become one of the finest queens England has ever seen. She led England to reclaim what were the American colonies in the third world war, exterminated the 1876 zombie apocalypse, and heralded a new British Empire.";
	if old man is alive:
		say "You follow Shaekspeer out into the Great Hall. Suddenly, guards surround you. you glance around, wondering what is going on when they open fire. Your last thought as the world faded was that you left your stove on this morning.[line break]";
		end the story finally saying "Without the desperately needed intervention of Lord Nick-William Charles, the Ellumena-tea closed in on the new Queen Victoria. Within a decade, she was assassinated and Shaekspeer ascended to the throne. He abolished parliament and ruled over England with an iron fist. Any sign of dissent. One bright side to all this, is that England immediately took to arms when Russo-Brazillian Leader Pierre Hitler started conquering surrounding territories, thus preventing the 45 year-long Mexican Revolution.".
