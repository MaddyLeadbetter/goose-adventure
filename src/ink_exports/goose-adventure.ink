-> Main

EXTERNAL get_name()
EXTERNAL get_bird_gender()

=== function get_name() ===
~ return "\{NAME\}"

=== function get_bird_gender() ===
~ return "MALE"

// Pronoun
=== function p() ===
{
    - get_bird_gender() == "MALE":
        ~ return "he"
    - get_bird_gender() == "FEMALE":
        ~ return "she"
    - else:
        ~ return "zie"
}

=== function P() ===
{
    - get_bird_gender() == "MALE":
        ~ return "He"
    - get_bird_gender() == "FEMALE":
        ~ return "She"
    - else:
        ~ return "Zie"
}

// Possessive pronoun
=== function pp() ===
{
    - get_bird_gender() == "MALE":
        ~ return "his"
    - get_bird_gender() == "FEMALE":
        ~ return "her"
    - else:
        ~ return "zir"
}

// Possessive pronoun
=== function PP() ===
{
    - get_bird_gender() == "MALE":
        ~ return "His"
    - get_bird_gender() == "FEMALE":
        ~ return "Her"
    - else:
        ~ return "Zir"
}

// Subject pronoun
=== function ps() ===
{
    - get_bird_gender() == "MALE":
        ~ return "him"
    - get_bird_gender() == "FEMALE":
        ~ return "her"
    - else:
        ~ return "zim"
}

// Subject pronoun capital
=== function PS() ===
{
    - get_bird_gender() == "MALE":
        ~ return "Him"
    - get_bird_gender() == "FEMALE":
        ~ return "Her"
    - else:
        ~ return "Zim"
}

=== function cgoose_name() ===
{
    - get_bird_gender() == "MALE":
        ~ return "Xander"
    - get_bird_gender() == "FEMALE":
        ~ return "Xyla"
    - else:
        ~ return "Xyla"
}

=== function wgoose_name() ===
{
    - get_bird_gender() == "MALE":
        ~ return "Goosestav"
    - get_bird_gender() == "FEMALE":
        ~ return "Weberly"
    - else:
        ~ return "Weberly"
}

=== function loon_name() ===
{
    - get_bird_gender() == "MALE":
        ~ return "Toma"
    - get_bird_gender() == "FEMALE":
        ~ return "Yuno"
    - else:
        ~ return "Toma"
}

=== function swan_name() ===
{
    - get_bird_gender() == "MALE":
        ~ return "Beau"
    - get_bird_gender() == "FEMALE":
        ~ return "Bella"
    - else:
        ~ return "Beau"
}

// This just skips to the Main knot.
== Main ==
# background: You

You wake up after a nap, having eaten a large amount of bread and falling into a food coma. You find yourself in a cozy spot under a dock, in Canadian Cottage Country. It's a simple, well fed life. 

* [Go explore further on land.]
    -> First_GoToLand
* [Go explore further in the water.]
    -> First_GoToWater

// ------------------------- ROUND 1 : GATHERING POINTS -------------------------
// ------------------------- 2 GOOSE PATH -------------------------
== First_GoToLand ==
# background: You
You waddle onto land, walking through some tall grass. You don't really see anyone or anything, so you consider where to go next.

* [You feel hungry, so you head towards the nearby cottage in the hope of free food.]
    -> Second_GoToCottage
* [You feel lonely, so you head towards the location of a large clearing.]
    -> Second_GoToClearing

== Second_GoToCottage ==
# background: Whitegoose-Good
You head towards the quaint little cottage, hoping you’ll find a snack. But before you can get too close to the cottage, you’re suddenly knocked over by a big white blur.  

You look up to see a large white goose with a golden bell in {ps()} mouth.  You think you hear {ps()} say "sorry" but it’s hard to tell because {p()}'s talking with a large, tingling bell in in {pp()} beak. Within seconds, {p()}’s already taken off further away from the cottage. You stare at {ps()} in confusion, not really understanding what's just happened.

That's when you notice there's a farmer running towards you, seemingly really angry, as he chases the white goose.

What do you do?
* [You follow the white goose.]
    -> Second_FollowWGoose
* [You wait for the farmer.]
    -> Third_WaitFarmer

== Second_FollowWGoose ==
# background: GooseAndCanadaGoose
You follow the goose, not sure what's possessing you. You can hear the angry farmer behind you, yelling unfriendly words, and hear him waving his rake in the sky. It's not long before you stumble upon a clearing of canadian geese, who are panicking at the site of you. The geese are everywhere, and it's a mess of feathers and screams - both bird and human.

Except on the side of the clearing, you see a solitary canadian goose. {P()} stands seperate to the rest, and {p()}'s wearing a cool pair of sunglasses. They make {ps()} look intimidating, yet intriguing, despite them being shaped for humans and not really fitting {pp()} face. {P()} seems ready to leave, but in a cool, composed fashion, unlike the scrambling and screaming geese.

What do you do?
* [You continue to follow the white goose.]
    -> Third_FollowWGoose
* [You decide to follow the canadian goose instead.]
    -> Third_FollowCGoose

== Second_GoToClearing ==
# background: Coolgoose-Good
As you approach the clearing, you see and smell a large gathering of Canadian geese. They seem to be arguing about directions, so you hesitate entering the clearing incase a fight starts. You have had a lot of bad experiences in the past with Canadian geese, the highest temper of any goose.

Hovering at the edge of the clearing, you realize there's a goose beside you that you didn't notice. {PP()} feathers are dark, and {p()}'s wearing dark sunglasses on {pp()} beak. They're human sunglasses, so they don't fit very well, but they give {ps()} an air of mysterium. You feel nervous as {p()} turns to look at you.

"Honk," {p()} says casually, leaning against a tree as {p()} angles {pp()} sunglasses down. "What are you doing here?"

"N-nothing", you reply, turning away with a blush. Why is {p()} so cool? You wish you could be that cool. "Why aren't you with the other geese."

{P()} pushes {pp()} sunglasses back up with a feather and glances away dramatically. "I'm not like them, I don't migrate."

"Oh, why not?" you wonder, as you both watch a fight break out among the geese who think South is North and North is South. {P()} seems unaffected, which is so cool. {P()}'s a proper bad bird, and you might be intrigued.

"I've got a cool set up here," {p()} shrugs, laughing when a goose runs away in fear from another one flapping his wings. {P()} turns to you, "I haven't seen you around much, do you come here often?"

"Sometimes," you try to play off casually, wondering if {p()} is flirting with you. "My name is {get_name()}, what's yours?"

{P()} doesn't immediately respond, distracted by how the goose fight has started calming down. {P()} looks like {p()}'s getting ready to leave.
-> Second_GoToClearing2

== Second_GoToClearing2 ==
# background: GooseAndCanadaGoose
Suddenly out of nowhere a white goose comes running towards the clearing, with a bell ringing loudly in {pp()} beak. There's a farmer right behind him, chasing him and waving a rake, as he runs through the group of canadian geese. The geese swarm in panic, making a chaotic mess, running away from the angry farmer. The white goose runs in a straight line, not looking back, and is seemingly determined to keep to {pp()} path.

The cool canadian goose flaps {pp()} wings, ready to fly away from the chaos happening in the clearing. 

* [You want to know more about sunglasses goose, you fly after {ps()}.]
    -> Third_FollowCGoose
* [You are curious what the white goose is doing, you follow the {ps()}.]
    -> Third_FollowWGoose
* [You can't decide! You wait to talk to the farmer.]
    -> Third_WaitFarmer

== Third_FollowCGoose ==
# background: GooseAndCanadaGoose
You decide to get out of there, you don't want to be involved in the panic. You flap your wings and try to take off after the sunglasses goose, but {pp()} canadian goose wings are bigger than yours and {p()} quickly overtakes you. You flap desperately, but you watch as {p()} lands at the shore of the lake, and gets on a jet ski.

You're stunned: how could someone be this cool? {P()} zooms away on {pp()} jet ski, quickly overtaking you. 

* [You call out to the canadian goose, yelling "Hey wait!"]
    -> Fourth_CallCGoose
* [You decide to go find the white goose instead.]
    -> Fourth_FindWGoose

== Fourth_CallCGoose ==
# background: CoolGooseJetski
{P()} turns back at the sound of your voice and winks, but slows down enough for you to catch up. You land breathless on the back of the jet ski, and cling desperately to {pp()} back as {p()} pushes the pedals to go even faster.
-> Fifth_JetSkiCGoose

== Fifth_JetSkiCGoose ==
# background: CoolGooseJetski
It feels like you're flying! You can normally fly, but this is a different sensation because it requires no effort of your own! You're flying while also resting, it's glorious. You let your feathers fly free in the wind, enjoying the feeling of complete freedom. {P()} is silent as you send out a loud "WOOOOOOH!", but it feels like you're sharing a moment together.

Unfortunately, you woke up pretty late so the sun is starting to set. {P()} swerves the jet ski to a stop, spraying water behind both of you, and for a moment you're both silent as you watch the sunset. It's beautiful, peaceful, and a little bit scary to watch the red take over the landscape.

It feels like magic.

You let out a breath you didn't know you were hiding, and the canadian goose turns to look at you. 

"My name is {cgoose_name()}, by the way," {P()} says smoothly, resting a wing on your shoulder, which is such a cool name. All names that start with the letter X are so cool.

You blush. "Oh, my name is {get_name()}," you introduce, feeling your feathers turn red.

"It's getting late, let's get you home," {p()} says.

"No!" You rush to insist: you've been having so much fun, you never want this night to end.

"I'll pick you up tomorrow morning, ok doll? Where do you live?"

You concede to {pp()}, agreeing with {ps()} and directing {ps()} back to your dock. You get off the jet ski, and watch {ps()} drive off into the final remains of the sunset, now a deep red. You hope {p()} does come back.
-> Round2("CGOOSE")

== Fourth_FindWGoose ==
# background: You
You realize that {cgoose_name()} is way out of your league, and you abandon following {ps()}. {P()} was too cool for you, you need someone more like you. You turn back and realize you can still hear the faint "ding ding" of a bell in the distance. You decide to fly towards that, to figure out what the white goose was stealing the bell for. You fly for a bit before you see a white flash through some trees, and a human yelling angrily. You land to have better navigation between the trees, and then start running towards {ps()} as fast as you can.
-> Third_CatchUpWGoose

== Third_FollowWGoose ==
# background: Whitegoose-Good
You head after the white goose, waddling as fast as you can to catch up. The farmer is lagging behind because of all the canadian geese blocking his path, but he's hitting them away with his rake and pushing through the chaotic bird fest as much as possible. Luckily, your small size allows you to squeeze through gaps between the canadian geese and catch up with the white goose quickly.
-> Third_CatchUpWGoose

== Third_CatchUpWGoose ==
# background: Whitegoose-Good
As you get closer, you notice the white goose is laughing so hard as {p()} runs that {p()} can barely keep the bell in {pp()} mouth. You're suddenly even more intrigued. What is {p()} doing? What is {pp()} goal? What will the bell achieve? You rush harder, using all the muscles in your little legs and balance your head forwards to run even faster because you'll be aerodynamic.

Eventually the farmer gives up the chase and you both stop to rest, huffing and puffing loudly through the nose holes in your beaks.

"Why did you need that bell so badly?" you ask, impressed by {pp()} bravery. "What is it for?"  

"Oh I don’t need this" {p()} replies easily, "I just think it’s funny.  Did you see the look on that farmer’s face?  That’s comedy gold right there!" {P()} declares, laughing loudly. {P()} falls over for a moment, before getting back up and picking up {pp()} bell.  

You watch as {p()} throws the bell into a pit full of random objects. The pit is full of objects that you've seen humans use, some look like trash but others are very valuable. You can see the honoured water tube - used by children everywhere to enjoy the water like you can. You've always wanted one, but humans are so protective of their things. You've always seen humans lock them in a room at night, you have no idea how this white goose acquired them.

The white goose continues laughing, walking away from {pp()} hoard.

* [Go with the white goose, {p()} seems funny!]
    -> Fourth_Follow2WGoose
* [Go somewhere else, this goose seems like a jerk!]
    -> Second_RestBank
* [Try to steal something from the pit.]
    -> Fourth_StealWGoose

== Fourth_Follow2WGoose ==
# background: Whitegoose-Good
This goose’s “do-what-I-want” attitude is so much fun! You continue following {ps()}, a bit awkwardly, but {p()} smiles at you so you keep following {ps()}.

"What's your name," you ask shyly, hiding behind your beak. "My name is {get_name()}."

"My name is {wgoose_name()} of course! Have you not heard of me?" {P()} replies confidentally, flapping his wings in excitement.

{P()} is so happy, and so excited, that you can't resist pretending you know who {p()} is.

"Of course I have!" You insist, flapping your wings a little bit too. You don't normally do this except to fly, but {p()} seems to do it to express {ps()}self so you want to get along. {P()} flaps a bit more violently in response, before calming down.

Now that you have your chance, you ask {ps()}: "Why do you steal things?"

"It's so fun!" {P()} exclaims, jumping a bit. "I've done so many things, and the farmer gets so mad! He's almost never caught me too, don't worry, I'm safe."

"Really?" You ask interested, "what have you done before?"

"One time I stole the farmer's keys! He was farming his plants or something, so I just grabbed them! He ran after me, but of course I have more stamina."

"Of course!" You exclaim, amazed by {pp()} stories. You've used humans for food before, but never done something like this. Usually, your ease of survival depends on humans liking you. The idea that {wgoose_name()} doesn't depend on humans is so impressive, you're sure {p()} must be very brave.

"And then I broke into his house! He chased me for hours, it was thrilling!"

You can't help it: you're also flapping your wings without control now. Everything {p()} says is so interesting.

"Please! Please tell me more," you insist, running a bit to catch up because you stopped walking in your star-struckness. 

"Hmm," {wgoose_name()} considers, tapping the chin of {pp()} beak with {pp()} wing. "I have plans after this to steal something else..."

"Can I come!" You beg, holding your wings up together. "You're soo cool!"

The compliment obviously soothes {pp()} ego, but {p()} still seems hestitant. "This mission needs maximum stealth..." {P()} trails.

"Please, please, please!"

"But... maybe tomorrow, I have something smaller planned. If you'd be interested in that?" {P()} asks, before {p()} looks away shyly.

"OK!" You agree, and you realize it's getting dark anyway. This is probably a good plan. "I'm really looking forward to it."

{wgoose_name()} blushes, and looks away embarassed. "I-I'll see you tomorrow?" {P()} asks, suddenly looking shy. 

"Ok!" You reply, enthusiasm dominating everything. "I'll see you!" You declare, before turning away to fly back towards your dock.
-> Round2("WGOOSE")

== Fourth_StealWGoose ==
# background: Whitegoose-Good
You can't resist, you reach down to try to steal the inner tube in the pit. You're just about to grasp it in your wing, using your feather fingers to lift it, when you hear someone yell, "HEY! WHAT ARE YOU DOING!"

You turn around, it's the white goose. In your urgency, you didn't notice {p()} hadn't left and now {p()} looks angry. {P()}'s also bigger than you, and as {p()} flaps {pp()} wing's in rage, you feel afraid. You run away in fear, going back to hide in your dock under it.

From then on, wherever you go, you're met with shame. Birds turn away from you, hide their possessions from you. Mothers get angry when you come near their eggs, no one feels safe with you. No one wants to be associated with you.

You spend the rest of your life alone, hiding under your dock incase someone gets angry at your presence, and waiting for the sweet release of death.
-> END

== Third_WaitFarmer ==
# background: You
You wait for the farmer as the white goose keeps running, hoping to reconcile with the man. The farmer seems to stop in confusion when he sees you're the only bird to stay behind.

“Quack”, you say to the farmer, “quack quackquack quack quack quack quack quack quackquack quack”.

# background: BloodyRake
The farmer stares at you for a second with a blank expression on his face, then hits you with his rake.  

What were you thinking?! Ducks can’t speak English.

You die.
-> END

// ------------------------- SWAN AND LOON PATH -------------------------
== First_GoToWater ==
# background: You
You push off dock and swim towards the middle of the lake you inhabit. It seems to be a quiet day since the sun isn't out, there are no dangerous boats zooming past.

* [You feel hungry, you try diving for some food.]
    -> Second_GoDiving
* [You feel tired, you go back and rest near the shore.]
    -> Second_RestBank

== Second_GoDiving ==
# background: Loon-Good
You dive underwater, the hunger in you overwhelming your mind with the thought of yummy, yummy aquatic plants. Instead of finding some tasty greens, all of a sudden something hits you underwater. In shock, you spurt around the water. You panic before rising from the surface, where you then see a loon.

"I'm so sorry! The loon says, talking quickly in panic. "I was chasing this fish, and it was almost getting away from me, and I really didn't mean to!! I'm soo sorry, please forgive me! I'll do anything!"

"It's ok," you reassure, pecking the loon with your beak. "Don't worry about it." You can't help but think the loon is cute - {p()}'s so embrassed, but it wasn't that big of a deal. You want to make sure {p()}'s ok.

"Are you sure?" {p()} asks nervously, wringing {pp()}'s feathers.

"Of course!" You insist, comforting {ps()}.

"Okay.... I'm happy," {p()} says, smiling slightly. "Would you maybe.. want the fish?" {P()} offers, holding up the fish {p()} caught when {p()} bumped into you.

"Oh no!" You insist. "I'm sorry, I'm a vegan..."

"Oh," {p()} replies, looking down sadly.

"Not that there's anything wrong with you not being vegan! It's okay, it's just my choice," you insist, and the loon seems to perk up. "I just... don't."

"Ok!" The loon says, seemingly please. "My name is {loon_name()} by the way... uhm, what's yours?"

"{get_name()}!" You reply, but before you can continue your pleasent conversation, all of a sudden a large boat comes shooting towards you. You scream in panic, but you're too slow to react - it's coming straight for you.

You see your life flash before your eyes.

You're not sure if you're ok with this being the end. Have you really lived your life? Have you done everything you've ever wanted to? You don't think so. This can't be the end.

Seconds before the boat impacts you, the loon grabs you and then dives underwater.

You're used to diving small distances for food, but the loon takes you deeper than usual. It's a strange feeling, a feeling of weightlessness that you've never felt before.

You surface together a small distance away.

"Oh my duck!" You scream once you surface, coughing up water you didn't mean to inhale.

"Are you alright?" {loon_name()} asks in panic, desperately clutching your body.

You cough a couple more times before you manage to get out, "I'm alright! Don't worry!" You're panting for breath, but you honestly feel okay. "You saved my life," you gasp, staring at {loon_name()}.

"That's good," {loon_name()}, a small smile on {pp()} beak. "If something had happened to you... I don't know what I would've done." There's a glint in {pp()} normally red eye, making it redder than usual. You feel a chill run down your spine, but you try to wave it off.

"Yeah don't worry, haha!" You insist, trying to calm {ps()} down. You don't want {ps()} to stress too much over you, now that you've regained your breath, you feel ok.

"Maybe we should leave the water?" The loon questions, offering to support you.

* [You agree the lake is too dangerous today, and head back to the shore with the loon.]
    -> Third_BankLoon
* [You disagree, you want to go for a swim.]
    -> Third_SwimLoon

== Third_BankLoon ==
# background: LoonAndSwan
You and {loon_name()} head back to the shore to avoid any further mishaps, and {p()} protectively wraps {pp()} wings around you for the whole way back. It feels more comforting than you're used to, and you let yourself lean into it. Once you're safely on land, you look around to notice a beautiful swan on shore. {P()} is busy cleaning {pp()} feathers at first, until {p()} notices you and {loon_name()}.

"Oh hello {loon_name()}!" {P()} exclaims, happy to see {ps()}.

"Ohai, {swan_name()}," {loon_name()} greets the swan, also smiling. "This is my new friend, {get_name()}," {p()} says, introducing you.

"Nice to meet you," you manage to say but you're not sure how. The swan is beautiful, the elegant curve of {pp()} neck, the perfection of {pp()} feathers. You're tempted to write a haiku, and you're not sure that you've ever even learned what a haiku is. {P()}'s just... something special.

It's pretty clear that {swan_name()} notices your attentions, and {loon_name()} seems slightly disappointed in them. It ends up making you feel a bit awkward, when there's suddenly a gap in conversation.

"Take a picture, it’ll last longer" {swan_name()} laughs, noticing you staring. You can't help but blush, not sure how to respond, but {p()} keeps talking. "I'm actually looking to take some selfies, if you wanted to help me?" {P()} offers.

{loon_name()} chimes in, looking disappointed. "Actually I was going to ask the same thing. Would you like to go take some nature photos with me?" {P()} asks. 

* [You agree to help {swan_name()} with {pp()} selfies.]
    -> Fourth_SelfieSwan
* [You politely decline {swan_name()}’s offer and agree to help {loon_name()}.]
    -> Fourth_NatureLoon

== Fourth_SelfieSwan ==
# background: Swan-Good
You're swept away by the swan's beauty and grace, and you definitely want to get to know {ps()} better. You agree to take selfies, and although {loon_name()} looks disappointed, you don't pay too much attention and head towards some trees that {swan_name()} said had good lighting.

You take longer reach the spot than you expected, but you and {swan_name()} manage to keep a conversation going. You're only talking about minor things, like how the weather is not good today, but it feels good enough for you. 

"You know, it's very hard for someone like me. Being so beautiful is a lot of work," {swan_name()} explains, and you nod in agreement.

"I'm sure! You must have to put in so much work, and people must be constantly falling over to recieve your affections."

The swan preens at the compliment, feathers ruffling, and you feel pleased.
-> Fourth_SelfieSwan2

== Fourth_SelfieSwan2 ==
# background: CliffEdge
Once you get to the spot, you realize that it does have better lighting than most spots, but it's pretty close to the edge of a cliff. Not wanting to be a loser, you pretend it doesn't bother you and the swan gets ready for {pp()} close up.

* [You allow yourself to become entraped by the swan's beauty, and take great emotional photos.]
    -> Fifth_FallCliff
* [You focus on the technical aspect, taking well framed and colour-balanced photos.]
    -> Fifth_SwanEndOfDay

== Fifth_FallCliff ==
# background: CliffEdge
You let the beauty of the swan overwhelm you, the beauty of the arch of {p()} neck, the elegance, the grace, the sparkles. You lose focus on everything, but you allow yourself to embrace it.

This compels you to take the most artistic photos ever - the most beautiful photos ever taken. You are sure {swan_name()} will love them, {p()} looks like the most beautiful swan to ever exist.

You get distracted, and you take a step back for a better angle.

You fall off the edge of the cliff.

You die.

Your camera is eventually recovered, and the swan does love the photos. {P()} moves on happily with {pp()} day.
-> END

== Fifth_SwanEndOfDay ==
# background: Swan-Good
Using all the skills that your little wings possess, you stay focused on taking photos. You worry about image things that go beyond the knowledge of the author writing this, but you do it well and efficiently in a way that I never could. Imagine if you were a tech worker with too much time and money on your hands, so you invested all of it into as many lenses as you could possibly buy, and you spend a ton of time taking photos of things and then never looking at them again.

You do this for a while, and at the end when you show {swan_name()} your photos, {p()} looks impressed.

"These are wonderful!" {P()} declares, and you blush. You're proud of what you've done, and {p()} definitely looks impressed.

"Uhm... it's too dark now for photos, but I can take some more tomorrow if you want?" You offer, wanting to see {swan_name()} again.

"Of course!" {swan_name()} agrees with a smile, taking the camera back and getting ready to upload them to swanstagram. "I'm sure my followers will love this, I'll see you tomorrow!"

And with that agreement, you head back towards your dock.
-> Round2("SWAN")

== Fourth_NatureLoon ==
# background: Loon-Good
You're grateful for {loon_name()}'s help and kindness, and {p()} makes you feel safe. A pretty swan isn't going to distract you from that. Regardless, {loon_name()} is cute, and shy, so you want to make sure {p()} feels safe.

Together, you decide not to go back into the water but walk along the shore until you find some pretty views. 
-> Fifth_LoonEndOfDay

== Fifth_LoonEndOfDay ==
# background: Loon-Good
You spend the rest of the day together with {loon_name()}, taking pictures having a ton of fun and laughing. Eventually, the sun starts to set, and you quietly watch the sun set, {loon_name()} occasionanlly taking pictures of the beauty of nature. 

You're not sure what to say now - you've spent the whole time talking, but now you're at a loss.

"Uhm... would you want to hang out tomorrow?" {loon_name()} asks quietly, glancing shyly at you, talking quietly.

"Of course," you reply, almost in a whisper. Something in the atmosphere is thick, and you can't disturb it.

"O-ok!" {p()} replied happily, glancing down at {pp()} phone with a small smile. "I'll see you then."

You agree, and then after the sun sets you part ways, heading back to your dock.
-> Round2("LOON")

== Third_SwimLoon ==
# background: Loon-Good
You insist to {loon_name()} that everything is ok, it was only one close call. 

"Come on, I feel like swimming!" You try to convince {loon_name()}.

"I don't know..." {p()} replies, hesitant.

"I really wanna swim together, don't you?" You ask, pouting with your beak.

{loon_name()} immediately blushes, before agreeing, "Of course!"

Together, you continue to swim around, chatting occasioanlly, but also enjoying silence. It's a pretty nice day. Then, all of a sudden, a loud WSSH sound comes towards them.
-> Third_SwimLoon2

== Third_SwimLoon2 ==
# background: LoonAndCanadaGoose
{loon_name()} panics, grabbing you to save you from the incoming boat. But it's not a boat, it's a jet ski, and a canadian goose is driving it.

{P()} is DREAMY. {P()} is wearing human sunglasses, too big for {pp()} face, but nonetheless making {ps()} look mysterious. You can't stop your intrigue, you already know you want to know more about {ps()}.

"Hey," {p()} greets you two. "What's up?"

You want to swoon. How can one bird be that cool, that relaxed, that chill? You wish you could be that cool, that you could wear sunglasses like that and look like a moron.

"We're good," you reply, when you realize {loon_name()} is silent, looking a bit angry. You're not sure why, maybe they have beef.

"Yeah, you are," {p()} replies, and you can't stop yourself from blushing. Wow! You didn't expect that. "Do you want a ride?" {p()} asks. {loon_name()} looks nervous and uncomfortable, and you worry about your new friend.

* [You get on the jet ski with the canadian goose, {p()}'s so cool!]
    -> Fifth_JetSkiCGoose
* [You decide to the stay with {loon_name()}, {p()} seems scared since the boat incident.]
    -> Fourth_HanoutLoon

== Fourth_HanoutLoon ==
# background: Loon-Good
You decide to stay with {loon_name()}. {P()} seems afraid to be alone, you should keep {ps()} company.

"No thanks," you reply, shocked by yourself. "We were having fun already."

"Alright," the canadian goose replies, pushing {pp()} sunglasses further up {pp()} nose. "I'll see you around." And with that, {p()} rides away.

"What do you want to do," you ask {loon_name()}, who looks surprised that you declined the offer.

"Uhm, I was going to take some photos, if you want to?" {loon_name()} asks, a smile on {pp()} beak.

"Of course!" You agree with a smile, wanting to keep {ps()} beak.
-> Fifth_LoonEndOfDay

== Second_RestBank ==
# background: Swan-Good
You decide you stayed up too late last night watching memes, so instead you go back to the lake shore to rest. You reach the shore, and as you're waddling your way up to the edge, you notice there's a swan sitting and preening {pp()} feathers.

The swan is beautiful, the elegant curve of {pp()} neck, the orange-ness of {pp()} beak, the perfection of {pp()} feathers. You're tempted to write a soliloquy, even if you don't know what that is, just to express how beautiful this swan is. You could never be that beautiful, with your short neck and small body. {P()}'s just... something special.

"H-hello," you say, wanting to get this beautiful swan's attention.

{P()} looks up, "Hello."

You're not sure what else to say, you're mesmerized by {pp()} beauty. You think the swan is aware of your attentions, but {p()} seems to enjoy it.

"Nice day out," you comment, looking up at the clouds. You then realize how dumb your comment was, because it is not a nice day. You blush, embarassed.

The swan seems to find you funny, because {p()} laughs and agrees, "Yes, it is quite a nice day." After putting your foot in your mouth, you're not sure how to continue the conversation, but then a loon arrives from the lake.
-> Second_RestBank2

== Second_RestBank2 ==
# background: LoonAndSwan
"Hello {swan_name()}," the loon greets, and now you know this beautiful creature's name. {P()} looks shy when {p()} notices you, and you think {p()} may not be as beautiful as the swan, but {p()} is cute too, in {pp()} own way.

"Hello, {loon_name()}," the swan replies. "I was just chatting with my new friend here... uhm, sorry, what was your name?"

"My name is {get_name()}," you reply after a moment, too stunned by the idea that this beauty now considers you friends.

"Nice to meet you!" {loon_name()} greets, looking at you shyly over {pp()} beak. "What were you guys doing?"

"I was actually about to go take some selifes, but if you both want to help me, I could use some new angles," {swan_name()} replies.

"Oh!" {loon_name()} replies, a bit embarassed. "I was about to go take some nature photography, sorry. Uhm..." {p()} looks at you directly for the first time, "You could join me also if you wanted."

* [You go take selfies for {swan_name()}.]
    -> Fourth_SelfieSwan
* [You go take nature photography with {loon_name()}.]
    -> Fifth_LoonEndOfDay

// ------------------------------------------------------------------------------
// ------------------------- ROUND 2 : INDIVIDUAL PLOTS -------------------------
// ------------------------------------------------------------------------------
== Round2(path) ==
# background: You
You've had a long day, so you decide to go to sleep. As you cuddle up under your dock, you think back on all the adventures you had today, and feel content as you let yourself rest to sleep, dreaming of a certain bird. Your life has been empty before today, but maybe now it has meaning. 

You fall asleep.

The next morning, your jolted awake when you hear something. You open your eyes, and you see...
{
    - path == "CGOOSE":
        -> Round2_CGoose
    - path == "WGOOSE":
        -> Round2_WGoose
    - path == "LOON":
        -> Round2_Loon
    - path == "SWAN":
        -> Round2_Swan
    - else:
        -> END
}

== Round2_CGoose ==
# background: Coolgoose-Good
It's {cgoose_name()}!

{P()}'s on {pp()} jet ski, and you marvel {p()} comes to a stop by your dock.

"Hey {get_name()}," {p()} greets you. "Wanna go for a ride, babe?"

You can't help but swoon - the combination of {ps()} both saying your name and calling you by a nickname is too much, you're smitten. 

"Definitely," you agree, struggling to climb onto the high jet ski with your small legs. {cgoose_name()} grasps you with {pp()} wings, and lifts you up on to the back of {pp()} jet ski. You feel cared for, protected, and madly in love. "Where are we going?"

"Wherever we want to go," {p()} replies, entirely charming, and you let {ps()} drive you around for a while. Eventually, {p()} stops the jet ski and you look up at {ps()}. "Let's stop here for a snack, they have some good aquatic plants here."

You perk up! Aquatic plants, how fantastic. "Great idea," you agree, and hop off the jet ski to start diving for food. Diving together is nice, because {cgoose_name()} has a longer neck, and {p()} gives you some plants that you normally wouldn't be able to reach. Once you've gathered enough food, you spend some time quietly eating together. It's quiet but not awkward, instead comfortable and peaceful. You usually feel really anxious, so this makes you feel calm.

"How do you own a jet ski?" You ask in amazement.

"My parents abandoned me when I was young," {cgoose_name()} explains. "I lost my flock, so I didn't migrate. I managed to find an abandoned jet ski, and ever since it's been the only home I've known. I've never learned to migrate, so the other geese don't want to be associated with me."

"That's awful!" You exclaim, and you feel like crying. You have a great relationship with your extended family, and all the ducks in the lake. You can't imagine living life alone, with no one to share. You talk so much you think you'd go crazy like that.

"It's alright," {cgoose_name()} reassures you, and {p()} hugs you. You should be the one comforting {ps()}, but you can't deny that it feels good to have {pp()} wings around you. You stay like that for a big, neither of you wanting to break the mood.

"Let's go for another ride," {p()} suggests, and you agree. You zoom off in to the lake together, enjoying the thrill of freedom that comes with it.

You look off to the left, and are shocked to see a massive boat coming towards you. It looks like you're going to intersect in a couple of seconds.

"Look out!" You cry, "the boat is going to hit us!"

"Don't worry," {p()} reassures you, "I know what I'm doing."
* [Act cool and agree, you don't want to ruin the mood.]
    -> CGooseBadEnding
* [Stand up for yourself, make {cgoose_name()} stop.]
    -> CGooseGoodEnding

== CGooseBadEnding ==
# background: Coolgoose-Good
"Oh okay," you agree, {cgoose_name()} has owned a jet ski for a long time, {p()} must know what {p()}'s doing.

"Yeah, watch this, it'll be cool," {p()} reassures you, and you perk up. You can't wait to see, everything {p()} does is cool, so this has to be cool.

# background: CanadaGoose-Bad
{cgoose_name()} makes a mistake. {P()}'s too busy trying to show off to you, that {p()} doesn't notice that the boat is speeding up. Instead of just passing each other, the jet ski crashes into the boat.

You scream as the explosion shoots you off the jet ski, and you land in the water nearby. Most of your feathers are singed and burnt, but you don't pay any attention to that. You need to check on {cgoose_name()}, {p()} has to be okay.

You swim desperately, as fast as your little webbed feet can take you, but as you arrive at the scene you realize {cgoose_name()} isn't moving and there's blood coming out of {pp()} body.

"{cgoose_name()}!" you cry desperately, clutching {pp()} still body, desperately trying to wake {ps()}. You're crying, screaming, doing anything you know to bring {ps()} back to life.

But it's too late.

{P()}'s dead.
-> END

== CGooseGoodEnding ==
# background: Coolgoose-Good
"I really think you should stop," you argue, and although {cgoose_name()} sighs, {p()} comes to a skidding halt on the jet ski.

Less than a second later, the boat swooshes past you.

"Huh," {p()} comments, watching the boat go past. "That could've hit us, but whatever. You gotta live life at the edge."

{P()} then turns to look at you, and the combination of {pp()} cool words and classy sunglasses has you melting. This is the coolest bird to ever live.

{P()} kisses you, and everything feels perfect.
-> END


== Round2_WGoose
# background: Whitegoose-Good
It's {wgoose_name()}!

{P()}'s shaking you so you wake up, and you suddenly jolt to awakeness. "Come on, {get_name()}! Let's go, I have a genius plan."

You're barely given any time to wake up before {p()}'s dragging you, and you scramble to keep up. It's not long before you arrive at the nearby cottage, and you pause for a moment to pant for breath. That was a long run, and you are barely awake. 

Luckily, {wgoose_name()} gives you a moment to regain your breath, before you can ask, "what... what's happening?"

"The humans are having brunch!" {wgoose_name()} exclaims, eagerly. {PP()} wings aren't flapping, but it's obvious that {p()}'s restraining {ps()}self. "We're going to steal..." {p()} trails off.

"Yes??" You ask, waking up quickly at the thought of pulling off a prank together.

"A knife!"

"WOW!" You reply, but {p()} quickly shushes you so that the humans don't hear you. "That's so exciting," you whisper.

"I know," {p()} agrees. "The plan is very complex, are you ready?"

"Yes!" You yell quietly.

"Ok, ok. The way it works is like this: we'll sneak up, sneakily, I'll grab the knife, then we run. You understand?"

"Wow that is a complex plan," you marvel. "I think I understand. I'm ready. I can do this."

"Ok, now sneak sneakily behind me," {p()} says, gesturing to be quiet.

Together, we sneak sneakily. There's something thrilling about moving without anyone being able to see you. It's like you're ghosts, woo scary!! This is so much fun, you find yourself getting addicted to this high.

Soon enough, you're at the side of the table. You can hear the humans talking in their weird croaks, and you watch, thrilled, as {wgoose_name()} delicately takes a knife in {pp()} beak.

It's amazing. You feel a thrill rush through you of pure adrenaline. {P()} signals you to follow {ps()}, but you're staring at  the fork that was beside the knife.

* [Try to steal the fork.]
    -> WGooseBadEnding
* [Escape with {wgoose_name()}.]
    -> WGooseGoodEnding

== WGooseGoodEnding ==
# background: Whitegoose-Good
You decide to follow {wgoose_name()}'s complex master plan, turn away, and start running away with {ps()}. Shortly after, the family having brunch realize that their prized knife has gone missing! It doesn't take them long to notice you, and with a cry of rage, the same farmer from yesterday stands up from the table, grabs his nearby rake, and starts running angrily towards you two.

"RUN! RUN! RUN!" {wgoose_name()} honks, as well as {p()} can through the knife {p()}'s holding in {pp()} beak, which you can't help but think is kind of sexy.

Luckily, you had a head start on the farmer, so you're able to evade him for long enough to stop chasing you. When you no longer hear the farmer behind you, {wgoose_name()} doesn't stop running, but luckily {p()} does slow down. You're releaved because your smaller legs were getting tired, you've never ran this much before in your life. Usually, you had moving and activity, but this just is THRILLING!

You don't stop until you reach {wgoose_name()}'s pit from yesterday, and you flap your wings excitedly as you wait for {ps()} to through the knife into the pit. How exciting!

Instead, {p()} turns to you. "You can have the honour," {p()} says, and then drops the knife at your feet.

You can't believe it. That's such a big thing {p()}'s offering, you feel your eyes tear up.

"Thank you so much," you manage to say, and then you pick up the spoon and drop it in the pit. It falls a couple of times, hitting a lot of things along the way, and in general making a loud CLANG CLANG CLANG the entire way down.

It's truly beauitful, music to your ears. You've never seen something this maginificant before.

You turn back to look at {wgoose_name()}. "Thank you for bringing me on your adventure, I really enjoyed it," you thank {ps()}, blushing as you look down.

"It was nothing," {wgoose_name()} replies quietly, moving a bit closer to you. When you look up, {pp()} face is closer than you expected.

{P()} leans in and kisses you. It's just as magical as the knife falling into the pit, and you know you've found love.
-> END

== WGooseBadEnding ==
# background: Whitegoose-Good
You can't resist - the temptation of the fork exceeds any temptation know to man, even fresh kelp. You reach up to try and take it in your beak.

Unfortunately, you don't have a lot of experience in stealing things, or carrying things in your mouth. You aren't an expert like {wgoose_name()}. You accidentally stumble, and knock over all the cups and dishes near the fork.

Someone screams, and you can see {wgoose_name()} panicking. You've fucked up and you know that, so you two quickly start running away. "RUN! RUN! RUN!" {wgoose_name()} honks, as well as {p()} can through the knife {p()}'s holding in {pp()} beak, and you can really hear the panic coming through.

With a cry of rage, the same farmer from yesterday stands up from the table, grabs his nearby rake, and starts running angrily towards you two. He noticed you earlier than {wgoose_name()} has planned, so for the first time he's actually catching up with you two.

There's nothing left for you to do, you yell at {wgoose_name()} to keep running, and turn to face the farmer head on.

You can take him, you think. You'll defeat the farmer and protect {wgoose_name()}.
-> WGooseBadEnding2

== WGooseBadEnding2 ==
# background: BloodyRake
He hits you with the rake.

You die.
-> END

== Round2_Loon ==
# background: Loon-Good
It's {loon_name()}!

{P()} is already there, waiting to see you. You're glad to see {ps()}, but you're also not sure how long {p()}'s been watching you, which makes you feel a bit uncomfortable.

"I just got here, don’t worry" {p()} says, though it looks like {p()}’s been sitting there a while. "I was just really excited to see you again, {get_name()}!"

"Oh... thank you," you respond, embarrassed by {pp()} forwardness, but also a bit touched.

"Where do you want to go today?" {p()} asks.

* [You want to go to the middle of the lake and swim around.]
    -> Loon_GoodEnding
* [You want to go to the beach.]
    -> Loon_BadEnding

== Loon_GoodEnding ==
# background: Loon-Good
"The lake seems really nice today," you decide.

Together, the two of you head to the lake and swim out into the center.  It’s still very early in the morning and the fog along the water gives it an eerie appearance. There's a weird tension in the air, like something bad would happen.

But you swim in circles for hours, enjoying each other’s company and chatting about your interesting waterfowl lives.

"I've never felt able to be myself with anyone like this before," {loon_name()} says to you, and you feel honoured. "Usually... I have to hide who I am."

"Of course not! I always want you to feel comfortable," you insist, and {loon_name()} smiles.

"I know this is sudden really sudden... but I love you, {get_name()}"

You can't help it - the feeling of warmth overwhelms you. "I love you too!" You declare, and {loon_name()} looks so happy you are glad you said it.

"Yay! I can't wait for you to be mine forever," {loon_name()} celebrates, and then drags you over to a spot {p()} knows has good food.

You live happily forever after, not including that {loon_name()} never lets anyone come close to you again. But you have {ps()}, so who cares about anyone else?
-> END

== Loon_BadEnding ==
# background: Loon-Good
"The beach is beautiful this time of morning," you decide, thinking out loud, "Maybe we’ll see your swan friend while we’re there."

{loon_name()} looks a bit hurt when you mention seeing the swan, but you head to the beach anyway.  

The two of you waddle along the shore, looking out at the water and chatting about your interesting waterfowl lives.

"And yesterday, I caught and ate the biggest fish!" {loon_name()} exclaims, and you are a vegan but you can respect the effort that {loon_name()} put in.

"Wow! A couple of days ago, I found this new park of the lake with the most tasty aquatic plants, and it was great!"

"That's amazing," {loon_name()} agrees.

After a few hours, you start to get tired, your little duck legs are not meant to walk long distances.

In the distance you notice the swan from yesterday, {swan_name()}, sitting under a tree, eating some grass. 
"Hey, there’s your friend! Let’s go sit with them for a bit and have a snack," you suggest, pointing. You're hungry and tired, so you think this would be a lot of fun.

When you don't get a response, you turn towards {loon_name()} and are shocked to see pure anger on {pp()} loon face.

"What is with you and that swan?!  Do you like {ps()} better than me?" {P()} yells angrily, shocking you because otherwise {p()}'s been very quiest and soft spoken. "Why am I not enough!?" {p()} cries out emotionally, pulling out some of {pp()} feathers in rage. 

You feel scared suddenly of what you thought was your new timid friend.

"No, that’s not what I-" you start to stutter, not sure how to recover the scenario. You're just tired and hungry, but now you don't know how to convey that.

{loon_name()} looks like {p()}'s had enough. {PP()} expression becomes expressionless, and the harshness of what was before a soft face terrifies you. You find yourself frozen in fear.
-> Loon_BadEnding2

== Loon_BadEnding2 ==
# background: stabbyloon
That's when {loon_name()} pulls out a knife, and the shock of it has you screaming in fear. Where did {p()} even get that knife from?! They're birds! Birds aren't supposed to have knives!! You're frozen in place, you try to urge your little waddling legs to run but you can't.

"If I can't have you," {loon_name()} declares. "NO ONE WILL!"

And with a final movement, {p()} takes the knife and slices your small duck throat. "THIS IS YOUR FAULT!" {p()} screams, as you feel everything start to fade away.

You die.
-> END

== Round2_Swan ==
# background: Swan-Good
It's {swan_name()}! {P()}'s just arrived and seems to be in a good mood.

"Goodmorning {get_name()}!" {P()} greets you brightly, and you smile sleepily in response as you wake up. "My photos have been so popular on swanstagram, thank you for them!"

"It was no problem," you reassure, happy to have please {ps()}.

"Do you mind taking some more photos for me? Over by the beach?"

"Of course!" You agree, and together you make your way to the beach. You feel so cool being with {swan_name()}, {p()} has a certain charm.

You spend some time taking more photos, and you show {swan_name()} a preview of the photos.

"You look so good in this one!" You insist, zooming in on the photo.

Suddenly, {swan_name()} looks upset. "Yeah, I guess."

You're not sure what you've done wrong - clearly, {p()}'s enjoyed being complimented before.

* [Ask {swan_name()} what's wrong.]
    -> SwanGoodEnding
* [Brush it off and take more pictures.]
    -> SwanBadEnding

== SwanGoodEnding ==
# background: Swan-Bad
"What’s wrong?" you decide to ask, wanting {swan_name()} to be happy.

"I... have a secret," {p()} replies after a slight pause. A tear drop rolls out from {pp()} eye. "I don't usually tell people this, but... I feel like I can trust you."

"You can always trust me," you reassure, lowering the camera to give {ps()} your full attention. "Nothing you can say would offend or borther me." You would do anything in the world to make {ps()} stop crying.

"Ok..." {p()} replies, but hesitates. "The truth is, when I was a baby swan..."

"Yes?" you prompt, after an extended moment of silence. 

"I was ugly," {p()} finally admits, looking down sadly from you. You realize this is a serious issue, that needs to be handles carefully.

"There's nothing wrong with that," you assure {ps()}. "Everyone has come from somewhere, and you're so beautiful now."

"Are you sure? Sometimes I look at my reflection in the lake, and I think I still look like that little baby swan..."

"Trust me," you say solemly. "You are beautiful, nothing can take away from your beauty."

"Thank you, {get_name()}", {swan_name()} replies, looking emotional over what just appens.

You can't resist - you reach up to brush away {p()} tears. "Don't worry, everyone knows you're beautiful."

There's a moment of silence, where you stare into each other's eyes. It's a poignant moment - you feel like something is coming, but yet you don't want to disturb the moment.

A second later, {swan_name()} reaches down to kiss you. It feels perfect, it feels magical. Like your life has meaning again, like everything in the world is fine. Nothing has ever happened that has made you feel like this before, like stars sparkling.

You hear a "CLICK" and then notice that {swan_name()} has taken a photo of you kissing.

"Perfect shot!" {p()} exclaims, opening the photo to show you. {P()} quickly opens swanstagram and posts the photo, using the hashtag \#LOVE.
-> END

== SwanBadEnding ==
# background: Swan-Bad
You decide it's best not to ask - it's {pp()} personal history, and you don't want to get into it. You just wanna take hot swan pics, and maybe flirt a bit.

"Let's continue taking photos," you suggest, reaching up to angle the camera.

That's when you realize that {swan_name()} is crying, and you hesitate, lowering the camera again. There's an awkward silence, and it's uncomfortable for both of you that {p()}'s crying.

"Uhm... maybe, uh, another time," {swan_name()} stutters through, turning away from you. "I have something to do right now, I'll see you later."

"N-no, wait-" you try to fix the situation, for {ps()} to come back.

But it's too late, {swan_name()} flaps {pp()} wings and flies away from you swiftly, without looking back.

You never talk to {ps()} again, sometimes you see {ps()} from a distance but then {p()} goes away. {P()} seems embarrassed over what happened, and no longer wants to talk to you. Since you ditched the loon for {swan_name()}, {p()} also no longer wants to speak with you.

You're alone under your dock.
-> END