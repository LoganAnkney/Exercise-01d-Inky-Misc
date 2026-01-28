/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night
VAR seashell = -1 //  0 

-> seashore

== seashore ==
You are sitting on the beach. 

It is { advance_time() }

+ [Stroll down the beach] -> beach2
-> DONE

== beach2 ==
This is further down the beach.

It is { advance_time() } 

Look, there is a { shell_change() } seashell over there, and others all around. 
* { time == 1 } [Pick up some seashells] -> shells
+ [Stroll back up the beach] -> seashore
+ [Stroll further down the beach] -> beach3

== shells ==
You pick up the shells
-> beach2

== beach3 ==
This beach goes on for miles.
It is { advance_time() } 
+ [Stroll back up the beach] -> beach2
+ [Go into that strange cave] -> cave

== cave ==
You enter the cave and enter a crossroads

+[Left]-> Shallow
+[Right] -> Deep

== Shallow == 
{ time_set() }

You begin to wade water, but keep going forward, you walk for a long time but see something. It's a light and it's coming from outside. You walk out to it and you see the sun.

-> seashore 

== Deep ==
It gets darker as you slowly descend in the pitch black darkness. It's colder as you take twists and turns. Winding through what almost seems like man-made structures.
You end at the crossroads, same as before, but "which do you choose", you hear audibly as if the wind is asking. How is there wind? No matter.

* [Left] -> happy
* [Right] -> Dark

== Dark == 
You see nothing but darkness...

AND A BEAR!! -> END

== happy ==
You made it out alive, hooray. -> DONE

== function shell_change ==

    ~ seashell = seashell + 1
    
    {
        - seashell > 2:
            ~ seashell = 0
    }    
    
    {    
        - seashell == 0:
            ~ return "Red"
        
        - seashell == 1:
            ~ return "Blue"
        
        - seashell == 2:
            ~ return "Pink"
    
    }
        
    ~ return time
    
== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }
        
    ~ return time

== function time_set ==

    ~ time = -1
    
    
