# Hop On It

Pat and Pam returned to the KPS warehouse to prepare for the actual delivery.
Pam explained the final steps.

> 17: Technical Slide: Show packages flowing between requester (client) and
>     recipient (server), highlighting the path from client to server.

Pam started, "As I mentioned, we have to deliver HTTP packages via the TCP
Turboline because they require TCP Assurance. TCP Assurance guarantees that the
package will be delivered untampered in its entirety. Carriers and recipients
accomplish this by acknowledging each other's messages.

> 18: Technical Slide: 3 diagrams.
>
>       1. Server responding normally with ACK and then response.
>       2. Show path back with question mark or timeout. And show client
>          sending again.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
"After we deliver an HTTP package, in addition to the reply message, the
recipient will also send back an acknowledgement package. Sometimes, they'll
combine the HTTP response and acknowledgement packages to save on postage. If we
don't receive an acknowledgement package within a certain amount of time, then
we'll try delivering again. We always make sure that the package ultimately
arrives at its destination.

> 19: Technical Slide: Multiple clients and multiple servers with the internet in
>     the middle. Show "X" over paths to signal congestion. Maybe show traffic on
>     a highway for metaphor.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
"However, because HTTP packages are so popular and because there are many other
parcel carriers and couriers, the TCP Turboline can suffer overload, or
congestion. Therefore, after the Great Turboline Collapse in 1986, the
Congestion Control Administration, or CCA, formed to regulate Turboline usage.
CCA has strict guidelines to ensure that the Turboline doesn't become so
overwhelmed that no package can be delivered.

> 20: Technical Slide: Walkthrough of the TCP slow start with sliding window.
>     Show the diagram of client-to-server and show above that a sliding window
>     and number.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
"When a carrier needs to deliver a new package, they have to schedule the
delivery with the recipient. We call this a **connection**. To avoid congestion
of the Turboline, CCA dictates a **sliding window** of the number of packages
that may flow between the carrier and the recipient for a given connection. This
sliding window just means that the carrier may only deliver a small number of
packages at one time. As long as the packages are acknowledged, then the window
can "slide" over and permit the carrier to deliver one more package than before.
If the carrier does not receive acknowledgements in a timely manner, then they
must back off and typically halve the number of packages they may send at once.
Basically, lack of acknowledgements indicates that the Turboline is reaching
congestion levels, so the carrier must reduce its window to help relieve the
congestion."

"I see. That sounds like extra work and extra latency, but it makes sense to
ensure that the package is delivered and there is fair use of the Turboline
among all carriers."

"Right. Now, let's get our connection set up so we can deliver the package.
We'll need the help of our coordinator Sam Sync for that."

> 11: Illustration: Sam on the phone with Pat and Pam at the side

Pat and Pam walked over to Sam Sync's office in the warehouse. Pam greeted Sam
while handing him the address for the Puma Kingdom, "Hello, Sam. We have a
package to deliver to the Puma Kingdom as soon as possible. Can you set up a
connection for us please?"

Sam replied, "Hey, Pam! Sure thing. Let me give them a ring."

Sam called the Puma Kingdom and milliseconds later a voice responded back,
"Hello?"

> 21: Technical Slide: 3-way TCP handshake for Sam and Puma Kingdom.

"Hello, this is Sam Sync of KPS, I would like to schedule a delivery. We are
ready to **synchronize** a connection with you."

> 22: Technical Slide: Highlight ACK-SYN from Puma Kingdom with window size set.

"One moment please… OK, we acknowledge your delivery request and are ready to
synchronize as well. However, our receiving department is a little backed up at
the moment. To prevent any issues with this delivery, we need you to keep your
window size to one package please."

> 23: Technical Slide: Highlight ACK from Sam.

"Roger that. We acknowledge your reply and window size request. We will have the
delivery over there shortly."

Sam hung up the phone and relayed the information from the call to Pat and Pam.

> 12: Illustration: Pam addressing Pat. Pat could have a worried face.

Pam was unsurprised, "I figured they might limit the **flow** of packages. The
Puma Kingdom is very popular. Well, this does change things slightly."

"What do you mean?" questioned Pat.

"Remember that this package was a two-packet job. Firechrome Industries
requested two resources. In addition to requesting the root resource `/`,
they also wanted `/favicon.ico`. They're notorious for doing this.

> 24: Technical Slide: TCP diagram again but with multiple packets and sequence
>     numbers.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
"Since you and I are using the same connection, we'll need to track our
individual packages with sequence numbers. This allows the Puma Kingdom to
acknowledge them by number and put split-up packages back together if they come
out of order. Your sequence number is 1 and mine is 2. Therefore, because they
are limiting us to a window size of 1 initially, you'll have to deliver your
package alone before I can deliver mine."

> 12: Reuse Illustration

Pat's eyes widened, "Oh, no! But how will I get there without your help. I've
never used the TCP Turboline before."

"Don't worry. It's not as bad as it seems. The Turboline consists of multiple
stops at router stations. As long as you have an address, you'll be fine. Each
router station has routing table displays that inform couriers which train to
board for a given address.

"Ah, OK. That sounds simple. I think I'm all set!"

"Perfect! Let's get you on the Turboline then!"

> 13: Illustration: Pam seeing Pat off at the TCP Turboline train.

Pat and Pam rushed over to the Turboline boarding station. Pam handed Pat a copy
of the address, his sequence number, and his individual package, "Here is
everything you'll need. We're running out of time, so please hurry. We don't
want Firechrome Industries to grow dissatisfied with our service. That could
hurt your chance at becoming a WAN courier too."

Pat nodded with a look of determination, "I'll do my best. Thanks for all your
help, Pam."

Pat boarded the train and waved bye to Pam. As Pat disappeared over the horizon,
Pam suddenly grew apprehensive. She realized that she forgot to tell Pat that
the routing tables use CIDR addresses, not normal addresses…

---

> 14: Illustration: Router station (like a subway station) with several
> couriers (packets like Pat). Have a big screen with illegible text hanging
> from the ceiling. Pat looking up toward the screen.

After several milliseconds, Pat reached his first stop. As he disembarked from
the train, he became quickly overwhelmed. He could not believe the number of
couriers scurrying from train to train. They all appeared to know exactly where
to go and what to do.

He remembered Pam's advice, though, and looked up to see a large screen with
multiple addresses on it. "That must be the routing table," he said to himself.

> 25: Technical Slide: Routing table with CIDR addresses and next hops.

He ran over to get a better look. As he examined the table more closely, he
became confused. "The Puma Kingdom's address isn't anywhere on that list. All
the addresses look different too. They have slashes with more numbers in them."
Pat frantically looked back and forth from the table to the numerous trains in
the hope that he would suddenly know what to do.

> 15: Illustration: Pat speaking with attendant at kiosk

As he began to feel dismayed, he saw a kiosk nearby with an attendant. He
hurried over to the attendant and begged for assistance, "Hello. I'm new to the
Turboline. I have an address, but I have no idea how to interpret the routing
table above. Can you please assist me?"

The attendant responded, "Well, of course. I bet you've never seen CIDR
addresses."

"CIDR addresses?"

"Just as I guessed. CIDR, or classless inter-domain routing, is just a fancy
technique of describing multiple addresses. Let's see your address."

Pat handed the attendant the address, and the attendant continued, "Ah. Your
address is 192.30.252.153. That means you'll want to go to with train AS423
which is for destinations in 192.30.0.0/16.

> 26: Technical Slide: Explain dotted quad IP addresses (4 of 2^8).

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
"See, there is an extensive number of router stations, and we can only store so
many addresses in our routing tables. Therefore, it's simpler if we use the
special CIDR address format to encode multiple addresses. As you know, addresses
are four numbers that range from 0 to 255. That range comes from two to the
power of 8, which is 256. So, we can use the slashes as a special way of
specifying a more specific range for those four numbers together.

> 27: Technical Slide: Explain CIDR. Expand acronym and show how masking works.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
"The slash is called a mask which means it prevents certain numbers from
changing. The number after the slash masks numbers from left to right. In the
case of 192.30.0.0/16, the number 16 masks the 192 and 30. We use the first 8 of
16 to mask 192 and the remaining 8 to mask 30. That means this address
encompasses all addresses from 192.30.0.0 to 192.30.255.255.
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
"As you get closer to your destination, the CIDR address you need at each router
station will usually grow more and more specific until you finally reach your
destination."

"Wow, thanks! That explains a lot. I think I have what I need then. Thank you
again!"

"No problem and good luck!"

> 16: Illustration: Pat running to a train.

With a feeling of relief, Pat ran over to next train and boarded. The train then
dashed off to the next router station.

---

Pat became accustomed to the flow of the router stations and made more hops from
train to train with greater ease. Pat was sure he would arrive at the Puma
Kingdom soon. At one of his last stops, Pat confidently sauntered over to the
next train only to find an attendant blocking the door.

> 17: Illustration: Pat speaking with attendant blocking the way to the next
>     train.

Pat approached the attendant, "Excuse me. I need to be on this train for my next
destination. May I please board?"

The attendant replied, "Sorry, sir. This train has reached its max passenger
capacity. Due to CCA regulations, I cannot allow you to board."

"But according to the routing table, this is the train I need. Without this
train, I cannot deliver this package."

"I understand, but regulations are regulations. You're welcome to wait at the
station for a short time. Another train on this route may make it in another two
to three seconds. Any longer than that, though, and I will have to ask you to
return back to your carrier."

"Oh, no! Two to three seconds is too long, and why would I need to go back?"

> 28: Technical Slide: Show packets backing up at a router buffer.

"Router stations themselves can only hold so many couriers. CCA guidelines
dictate that to avoid congestion at stations, attendants must ask couriers after
a short while to leave and try their delivery later."

"This is an extremely important package, though! Surely, there is something you
can do. Is there another route by chance?"

> 17: Reuse Illustration

Pat quickly handed the attendant the address.

The attendant examined the address and thought for a moment, "Well, typically we
prefer couriers take the shortest route to their destination, but there are
exceptions. It's a little longer route, but you can take train AS865 and follow
the routing table as normal from the next station."

> 16: Reuse Illustration

"Really? That works for me. Thank you!"

Pat rushed off to the train. As he approached the boarding platform, he saw the
doors begin to close on the train. He dove with all his might and made it in the
train just as the doors shut. He breathed a sigh of relief and prepared for the
final leg of his journey.
