BEGIN O#MIA

// Mia's first quest dialogue

IF ~Global("O#IM10Quest","GLOBAL",1)~ t1
SAY @0 /* Wait! Please! Please, if... (sob) You are my last hope! */
++ @1 /* (sigh) Not again! */ DO ~SetGlobal("O#IM10Quest","GLOBAL",2)~ + t1.0
++ @2 /* Shh. Calm down, calm down. What is it? */ DO ~SetGlobal("O#IM10Quest","GLOBAL",2)~ + t1.0
++ @3 /* I am listening. */ DO ~SetGlobal("O#IM10Quest","GLOBAL",2)~ + t1.0
++ @4 /* Half of this city would agree with you. But what makes you think I will help you? */ DO ~SetGlobal("O#IM10Quest","GLOBAL",2)~ + t1.0
++ @5 /* As if. Just call the guards. */ DO ~SetGlobal("O#IM10Quest","GLOBAL",2)~ + t1.0
END

IF ~~ t1.0
SAY @6 /* No - not again... They are back! Please, protect me - I'm no match against them! */
IF ~~ DO ~ClearAllActions()
StartCutSceneMode()
CreateCreatureObjectDoor("O#IM10W1","O#Mia",0,0,0)
CreateCreatureObjectDoor("O#IM10W2","O#Mia",0,0,0)
CreateCreatureObjectDoor("O#IM10W3","O#Mia",0,0,0)
ActionOverride("O#Mia",ApplySpell(Myself,DRYAD_TELEPORT))
EndCutSceneMode()~ EXIT
END

// Mia's second quest dialogue

IF ~Global("O#IM10Quest","GLOBAL",3)~ t10
SAY @7 /* By the gods... thank you. I thought this was the end. */
IF ~~ DO ~SetGlobal("O#IM10Quest","GLOBAL",4)~ + t1.000
END

IF ~~ t1.000
SAY @8 /* But my child... she is dying out there. They are... they are t-torturing her... (sob) ... or worse... */
++ @9 /* Very well, I will hear you out. */ + t1.1
++ @10 /* I have no time for this. */ + t1.00
++ @11 /* Torturing a child? Who would do such a thing? */ + t1.1
++ @12 /* What does it have to do with these three Cowled Wizards I just killed? */ + t1.1
END

IF ~~ t1.00
SAY @13 /* Then, goodbye. I see Bylanna was wrong about you, after all. */ 
++ @14 /* Bylanna? Wait, tell me everything. */ + t1.1
++ @15 /* Goodbye. */ + t1.bye
END

IF ~~ t1.1
SAY @16 /* I... well, I don't see why I should keep it a secret... I am a wizard. My husband was... is a Cowled Wizard, too. Oh, I'm doing it all wrong! I should - I should start from the beginning. */
= @17 /* I was going to become a Cowled Wizard, and my husband already was one. He was my teacher. We fell in love hard and fast, and within a month, we were married. A year later, we had Dili. */
++ @18 /* But if you are wizards, how come you are so helpless? */ + t1.2
++ @19 /* Go on. */ + t1.3
END

IF ~~ t1.2
SAY @20 /* Because we are not the only ones who can do magic. */
IF ~~ + t1.3
END

IF ~~ t1.3
SAY @21 /* About two months ago, we found out that Dili had... strange abilities. She could... shapeshift, but not quite. Instead, she became a living image of someone else. She called it "taking faces". */
= @22 /* You can't imagine how it scared me. Doppelgangers can change faces, but a simple divination spell can reveal one. But someone like Dili... she could become a perfect spy, a perfect weapon, and, what's worse, there are people who'd take her apart to see how the magic worked. */
= @23 /* I asked my mother to keep it secret. I begged Dili not to do it outside. I nearly abandoned my apprenticeship, just to spend more time with her. */
= @24 /* But it was all for naught. They came and took her away. And it was my husband - the man I have been sharing a bed with for seven years - who bought them into the house. */
= @25 /*  I don't even know how this dreadful place is called! But I've heard... (sob)... stories, and... Help me! Help me return Dili home - just get her out of there, and I'll - I'll do anything! Everything! */
++ @26 /* What about your Cowled brethren? Your husband? */ + t1.4
++ @27 /* What makes you think I am capable of finding her? */ + t1.4
++ @28 /* Why me? */ + t1.4
++ @29 /* Where should I start? */ + t1.5
++ @30 /* All right. Is there anything else you can tell me? */ + t1.5
++ @31 /* I am sorry, lady. You have to find someone else. */ + t1.bye
END

IF ~~ t1.4
SAY @32 /* I tried everything: I asked every wizard I knew; I visited every tavern and inn for whispers and rumors; I even asked in the Council of Six building. Within days, I was hunted down together with other outlaws. */
IF ~~ + t1.5
END

IF ~~ t1.5
SAY @33 /* Well... I... Bylanna Ianulin told me about you. She told me about your deeds in Baldur's Gate, and about a girl who's been taken away. I know, if there's anyone - anyone at all who can help me... (sob)... it is you. You would know where to look, not me. */
= @34 /* Good luck. I... I think I will go down and look at the ships. They are beautiful, you know. Perhaps some morning a ship will bring me news of my daughter from far away. Or she will take a seagull's face and fly back to me. */
= @35 /* When you find her, tell her I am waiting for her there. Every day. Every hour. */
= @36 /* Good... good luck. */
IF ~~ DO ~AddJournalEntry(@1000,QUEST) ApplySpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ t1.bye
SAY @37 /* So be it. I hoped... but hope is a foolish feeling. */
IF ~~ DO ~SetGlobal("O#IM10Quest","GLOBAL",9) AddJournalEntry(@1001,QUEST_DONE) EscapeArea()~ EXIT
END

// Dili's dialogue

APPEND PPDILI

IF WEIGHT #-1 ~Global("O#IM10Quest","GLOBAL",4)~ t2
SAY @38 /* Hello. You are new. Those your faces? Funny. Maybe change them. */
++ @39 /* Dili! Finally, I've found you! Your mother is looking for you. */ DO ~SetGlobal("O#IM10Quest","GLOBAL",5)~ + t2.1
++ @40 /* Dili, do you remember your parents? */ DO ~SetGlobal("O#IM10Quest","GLOBAL",5)~ + t2.1
++ @41 /* Change them? You can change your face, can't you? Your mother told me. */ DO ~SetGlobal("O#IM10Quest","GLOBAL",5)~ + t2.1
END

IF ~~ t2.1
SAY @42 /* Maybe. Mommy... I'm... I'm lost... */
= @43 /* No! Don't let them! Mommy! She doesn't let me take faces... she... Father! Don't let them - mommy! */
++ @44 /* Poor child. Dili, listen to me. I want to help you. */ + t2.2
++ @45 /* I will do everything I can to take you out of here, Dili. */ + t2.2
++ @46 /* What happened to you? Can you tell me? */ + t2.2
END

IF ~~ t2.2
SAY @47 /* F-father... he brought me here. Maybe. And then... he didn't. He looked sad and scared and sorry... and he said he will open the door and take me back, but not to Mommy... and I said yes, and then... */
= @48 /* And then Irenicus came. He punished my father... turned him into stone and broke him. And said I must learn. And Wanev is now here with us. */ 
= @49 /* I want to go home. But maybe I can't. */
++ @50 /* You will go home, Dili. Once I have dealt with Irenicus, you will be free to fly there. And your mother will be waiting for you in the docks. */ + t2.4
++ @51 /* Your mother asked me to find you. She is waiting for you in the docks of Athkatla, and soon, very soon, you shall see her again. */ + t2.4
++ @52 /* So your father wanted to save you in the end. Have you heard of your mother? */ + t2.3
++ @53 /* You said your father did not want you to go back to your mother. Why? */ + t2.3
END

IF ~~ t2.3
SAY @54 /* Mommy... I... (sob) She wanted me to go away... I know. She punished me when I tried to take her face, and... I think that maybe... maybe she does not love me. */
++ @55 /* Nonsense, Dili. She loves you very much. She is looking for news of you in the docks of Athkatla even now. */ + t2.4
++ @51 /* Your mother asked me to find you. She is waiting for you in the docks of Athkatla, and soon, very soon, you shall see her again. */ + t2.4
++ @56 /* Even so, she can't be worse than this place. Listen to me: once you are free, head to Athkatla, find her in the docks, and she will take care of you. */ + t2.4
++ @57 /* Very well, then, never mind. Forget I said anything. Spellhold must be just the place for you. */ DO ~SetGlobal("O#IM10Quest","GLOBAL",9) EraseJournalEntry(@1000)
 AddJournalEntry(@1004,QUEST_DONE)~ + t2.last
END

IF ~~ t2.4
SAY @58 /* I will remember. I like flying... and I so want to go home. Maybe I can. */
++ @59 /* That's the spirit. Everything will be all right. */ DO ~AddJournalEntry(@1002,QUEST)~ + t2.last
++ @60 /* Sure. Just... stay here. */ DO ~AddJournalEntry(@1002,QUEST)~ + t2.last
++ @61 /* Goodbye, Dili. */ DO ~AddJournalEntry(@1002,QUEST)~ + t2.last
END

IF ~~ t2.last
SAY @62 /* Maybe I'll be you now! Who are you today? */
COPY_TRANS PPDILI 1
END

END

// Mia's final quest dialogue

BEGIN O#DILI

CHAIN IF ~Global("O#IM10Quest","GLOBAL",6)~ THEN O#MIA t3
@63 /* Finally! Well, Dili, you gave us quite a fright. I thought I would never see you again. */
DO ~SetGlobal("O#IM10Quest","GLOBAL",7)~
== O#DILI @64 /* Mommy! Hey, I remember this <PRO_MANWOMAN>, too! */
== O#MIA @65 /* What? Who is it, dear? */
= @66 /* <CHARNAME>. Dear me, how unfortunate. */
END
++ @67 /* Unfortunate? Why? I saved your daughter, didn't I? */ EXTERN O#MIA t3.3
++ @68 /* What is going on? What are these people? */ EXTERN O#MIA t3.3
++ @69 /* Dili! How are you? */ EXTERN O#MIA t3.4
++ @70 /* So, I have been working for the Cowled Wizards all along. */ EXTERN O#MIA t3.last

CHAIN O#MIA t3.3
@71 /* Regrettably, this the time when your illusions are mercilessly grinded into dust. Or, more bluntly: you've been tricked. */
== O#DILI @72 /* Mommy... please... don't do it again! */
END
IF ~~ EXTERN O#MIA t3.last

CHAIN O#MIA t3.4
@73 /* This is not a happy family reunion, <CHARNAME>. Not that it is any of your business. */
== O#DILI @72 /* Mommy... please... don't do it again! */
END
IF ~~ EXTERN O#MIA t3.last

CHAIN O#MIA t3.last
@74 /* Yes, I sent Dili to Spellhold. And you have been most instrumental in helping us to get her out, now that Spellhold is no longer under our control. The oldest trick in the book: I made you think we both wanted the same thing. And convincing you was so easy. */
DO ~EraseJournalEntry(@1000)
EraseJournalEntry(@1002)
AddJournalEntry(@1003,QUEST_DONE)~
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @75 /* You monster! How can you do this to your own child? */
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @76 /* She cannot do this! S-stop her, <CHARNAME>! */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @77 /* This is about the most disgusting thing I have just witnessed. */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @78 /* Mmm. She would have made quite an impression in Thay. */
== O#DILI @79 /* Mommy... */
== O#MIA @80 /* Our goals should not concern you now. You'll only get a headache. */
DO ~AddExperienceParty(10000)
ClearAllActions()
StartCutSceneMode()
ActionOverride("O#MIA",ApplySpell(Myself,DRYAD_TELEPORT))
ActionOverride("O#IM10C1",ApplySpell(Myself,DRYAD_TELEPORT))
ActionOverride("O#IM10C2",ApplySpell(Myself,DRYAD_TELEPORT))
ActionOverride("O#DILI",ApplySpell(Myself,DRYAD_TELEPORT))
EndCutSceneMode()~
EXIT
