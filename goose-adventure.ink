EXTERNAL get_name()
EXTERNAL get_bird_gender()

VAR canadian_goose_points = 0
VAR white_goose_points = 0
VAR loon_points = 0
VAR swan_points = 0

-> Main

=== function get_name() ===
~ return "\{NAME\}"

=== function get_bird_gender() ===
~ return "MALE"

// Pronoun
=== function p(capital) ===
{
    - get_bird_gender() == "MALE":
        {
            - capital == "y":
                ~ return "He"
            - else:
                ~ return "he"
        }
    - else:
        {
            - capital == "y":
                ~ return "She"
            - else:
                ~ return "she"
        }
}

// Possessive pronoun
=== function pp(capital) ===
{
    - get_bird_gender() == "MALE":
        {
            - capital == "y":
                ~ return "His"
            - else:
                ~ return "his"
        }
    - else:
        {
            - capital == "y":
                ~ return "Her"
            - else:
                ~ return "her"
        }
}

// Subject pronoun
=== function ps(capital) ===
{
    - get_bird_gender() == "MALE":
        {
            - capital == "y":
                ~ return "Him"
            - else:
                ~ return "him"
        }
    - else:
        {
            - capital == "y":
                ~ return "Her"
            - else:
                ~ return "her"
        }
}

=== function cgoose_name ===
{
    - get_bird_gender() == "MALE":
        ~ return "Xander"
    - else:
        ~ return "Xyla"
}

=== function wgoose_name ===
{
    - get_bird_gender() == "MALE":
        ~ return "Goosestav"
    - else:
        ~ return "Weberly"
}

=== function loon_name ===
{
    - get_bird_gender() == "MALE":
        ~ return "Toma"
    - else:
        ~ return "Yuno"
}

=== function swan_name ===
{
    - get_bird_gender() == "MALE":
        ~ return "Beau"
    - else:
        ~ return "Bella"
}

// This just skips to the Main knot.
== Main ==
You wake up after a nap, having eaten a large amount of bread and falling into a food coma. You find yourself in a cozy spot under a dock, in Canadian Cottage Contry. It's a simple, well fed life. 

You wonder what to do now:
* You explore further on land.
    -> First_GoToLand
* You explore further in the water.
    -> First_GoToWater

// ------------------------- ROUND 1 : GATHERING POINTS -------------------------
// ------------------------- 2 GOOSE PATH -------------------------
== First_GoToLand ==
~ canadian_goose_points += 1
~ white_goose_points += 1
You waddle onto land, walking through some tall grass. You don't really see anyone or anything, so you conside where to go next.

* You feel hungry, so you head towards the nearby cottage in the hope of free food.
    -> Second_GoToCottage
* You feel lonely, so you head towards the location of a large clearing.
    -> Second_GoToClearing
-> DONE

== Second_GoToCottage ==
TODO: Encounter white goose causing havoc
-> END

== Second_GoToClearing ==
As you approach the clearing, you see and smell a large gathering of Canadian geese. They seem to be arguing about directions, so you hesitate entering the clearing incase a fight starts. You have had a lot of bad experiences in the past with Canadian geese, the highest temper of any goose.

Hovering at the edge of the clearing, you realize there's a goose beside you that you didn't notice. {pp("y")} feathers are dark, and {p("n")}'s wearing dark sunglasses on {pp("n")} beak. They're human sunglasses, so they don't fit very well, but they give {ps("n")} an air of mysterium. You feel nervous as {p("n")} turns to look at you.

"Honk," {p("n")} says casually, leaning against a tree as {p("n")} angles {pp("n")} sunglasses down. "What are you doing here?"

"N-nothing", you reply, turning away with a blush. Why is {p("n")} so cool? You wish you could be that cool. "Why aren't you with the other geese."

{p("y")} pushes {pp("n")} sunglasses back up with a feather and glances away dramatically. "I'm not like them, I don't migrate."

"Oh, why not?" you wonder, as you both watch a fight break out among the geese who think South is North and North is South. {p("y")} seems unaffected, which is so cool. {p("y")}'s a proper bad boy, and you might be intrigued.

"I've got a cool set up here," {p("n")} shrugs, laughing when a goose runs away in fear from another one flapping his wings. {p("y")} turns to you, "I haven't seen you around much, do you come here often?"

"Sometimes," you try to play off casually, wondering if {p("n")} is flirting with you. "My name is {get_name()}, what's yours?" 

"I'm {cgoose_name()}," {p("n")} replies, which is such a cool name. All names that start with the letter X are so cool. The goose fight has started calming down, and {cgoose_name()} looks like he's getting ready to leave.

Suddenly out of nowhere a white goose comes running towards the clearing, with a bell ringing loudly in {pp("n")} beak. There's a farmer right behind him, chasing him and waving a rake, as he runs through the group of canadian geese. The geese swarm in panic, making a chaotic mess, running away from the angry farmer. The white goose runs in a straight line, not looking back, and is seemingly determined to keep to {pp("n")} path.

{cgoose_name()} flaps {pp("n")} wings, ready to fly away from the chaos happening in the clearing. 

What do you do?
* You want to know more about {cgoose_name()}, you fly after {ps("n")}.
    -> Third_FollowCGoose
* You are curious what the white goose is doing, you follow the {ps("n")}.
    -> Third_FollowWGoose
* You can't decide! You wait to talk to the farmer.
    -> Third_WaitFarmer

== Third_FollowCGoose ==
You decide to get out of there, you don't want to be involved in the panic. You flap your wings and try to take off after {cgoose_name()}, but {pp("n")} wings are bigger than yours and {p("n")} quickly overtakes you. You flap desperately, but you watch as {p("n")} lands at the bank of the lake, and gets on a jet ski.

You're stunned: how could someone be this cool? {p("y")} zooms away on {pp("n")} jet ski, quickly overtaking you. 

* You call out to {cgoose_name()}, yelling "Hey wait!"
    -> Fourth_CallCGoose
* You decide to go find the white goose instead, {p("n")}'s way out of your league.
    -> Fourth_FindWGoose

== Fourth_CallCGoose ==
TODO:“Hey, wait!” you call out.  He turns back at the sound of your voice and winks, but slows down enough for you to catch up
-> DONE

== Fourth_FindWGoose ==
TODO:Goes to the scene you would have gone to if you’d chased after him originally
-> DONE

== Third_FollowWGoose ==
TODO
-> DONE

== Third_WaitFarmer ==
You wait for the farmer as {cgoose_name()}, {wgoose_name()}, and the other birds escape, hoping to reconcile with the man. The farmer seems to stop in confusion when he sees you're the only bird to stay behind.

“Quack”, you say to the farmer, “quack quackquack quack quack quack quack quack quackquack quack”.

The farmer stares at you for a second with a blank expression on his face, then hits you with his rake.  

What were you thinking?! Ducks can’t speak English.

You die.
-> DONE

// ------------------------- SWAN AND LOON PATH -------------------------
== First_GoToWater ==
~ loon_points += 1
~ swan_points += 1
You push off dock and swim towards the middle of the lake you inhabit. It seems to be a quiet day since the sun isn't out, there are no dangerous robots zooming past.

* [You feel hungry, you try diving for some food.]
    -> Second_GoDiving
* [You feel tired, you go back and rest near the bank.]
    -> Second_RestBank
-> DONE

== Second_GoDiving ==
TODO: encounter loon, who crashes into you
-> DONE

== Second_RestBank ==
TODO: encounter swan preening on the bank
-> DONE

// ------------------------- ROUND 2 : INDIVIDUAL PLOTS -------------------------
== Round2 ==
You've had a long day, so you decide to head back to your dock and go back to sleep under it. You think back on all the adventures you had today, and feel content as you let yourself rest to sleep, dreaming of a certain bird. Your life has been empty before today, but maybe now it has meaning. 

You fall asleep.

The next morning, your jolted awake when you hear something. You open your eyes, 
->DONE



