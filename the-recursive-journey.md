# The Recursive Journey

> 5. Illustration: Pat and Pam walking toward UDP Express train

As Pat and Pam exited the warehouse, Pat asked, "What is DNS?"

Pam answered, "DNS stands for the Domain Name System. To answer your earlier
question, yes, addresses are just numbers. However, in the world of WAN there
are over 4 billion addresses. There is even a newer address format that has more
addresses than that!
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
"Therefore, it's difficult for our clients to remember the addresses of their
recipients. DNS allows recipients to advertise their address with more memorable
domain names like the host address `rubyonrails.org`. It's up to us to then use
DNS to determine the actual address of the domain name.
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
"Sometimes we keep a copy of the address for a short time, but I couldn't find
one for `rubyonrails.org`. We'll need to make a stop at the Resolver Kingdom in
the Isp Continent to get the address, so let's take the UDP Express train. It's
usually the fastest way to get there."

So, off they went to hop aboard the UDP Express to start their DNS journey.

---

After several milliseconds, they arrived at the Resolver Kingdom. They found the
nearest resolution office and stepped through the door.

> 6. Illustration: Pat and Pam talking with Ren in his office

Pam greeted the office clerk, "Hello, Ren. My friend Pat and I need the address
for a domain name."

Ren responded, "Hey, Pam! Great! What is the domain name you need to resolve?"

"It's `rubyonrails.org`."

Ren walked over to his file cabinet to begin his search. After quickly thumbing
through the records, he raised his head with a disappointing look.

"Sorry, we don't have an address for that domain name right off hand. We'll need
to retrieve it from one of the authoritative DNS kingdoms."

"Authoritative?" interjected Pat.

> 7. Illustration?: Ren explaining to Pat about DNS, holding a map with many
>    dots for the authoritative DNS kingdoms

Inferring Pat's lack of knowledge on DNS, Ren replied, "Yes. Because there
are so many addresses, it's not feasible for all the resolver kingdoms to keep
records for every address. Therefore, the actual domain name records are
distributed among the authoritative kingdoms. Authoritative means they are the
final authority on the address for a domain name. We only keep copies of
addresses as time and storage in our file cabinets allow.
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
"Say, we're a little short-staffed today. Would you mind finding the address at
its authoritative kingdom? Normally, we retrieve the address from the
appropriate kingdom while you wait here. However, this would be a great
opportunity for you to understand DNS better. I know your friend Pam here has
done it before, so you'll be in good hands."

"Sure. That sounds great!"

"Thanks! This will help us immensely," Ren handed Pat a slip of paper and
continued, "Here is the address for the Root Domain Kingdom A. That should be a
good place to start."

Pat and Pam left the resolver office and hopped back on the UDP Express. Pat
handed the address to the conductor and off they went again!

---

> 8. Illustration: Large building with many little packets entering and exiting

Several milliseconds later, they arrived at Root Domain Kingdom A. As he
stepped off the train, Pat noticed a large building in the distance and marveled
at the number of packets entering and exiting.

"Whoa! Is that the main office?"

Pam answered with a smile, "Indeed, it is."

They entered the building and joined one of the lines at the front desk. After a
short time, a clerk motioned them forward.

> 9. Illustration: Clerk handing Pat the slip of paper with addresses on it

"Welcome to the Root Domain Kingdom," the clerk began. "How may I direct you?"

Pat responded, "Hello. We need the address for `rubyonrails.org` please."

Without even hesitating, the clerk replied, "Ah, dot org. Here are a few NS
kingdoms to try." The clerk printed off a list and handed it to Pat.

Pat, visibly confused, inquired, "But these are just a bunch of addresses that
go with other domain names like `a0.org.afilias-nst.info`. Where is an address
for `rubyonrails.org`?"

"Right… We don't keep `A` records on individual domain names like that.
All we have are `NS` records on the NS kingdoms for the top level domains.
You'll have to ask one of those kingdoms for more help."

"`A` records… `NS` records… top level domains?" a still befuddled Pat asked.

Pam stopped Pat, speaking to the clerk, "Thank you so much for your help. We'll
be on our way."

> 10. Illustration?: Pam speaking with Pat as they approach the UDP express again

Pam pulled Pat aside and said "Don't worry! This is how DNS works. We need to
deliver this package soon, so let's get over to one of these NS kingdoms."

"OK, I trust you, but I'm still confused. Sorry if I made a scene back there.
Let's deliver this package!"

"Great! I'll explain more about DNS after we visit the NS kingdom. Let's try
that one you mentioned to the clerk."

---

After another trip on the UDP Express they arrived at one of the org NS
kingdoms. Just like the last time, they entered a large office and approached
the front desk.

> 9. Reuse Illustration

The clerk greeted them, "Hello and thank you for coming to the A0 Org Kingdom.
What can I do for you today?"

Pat replied with his request, "We need the address for `rubyonrails.org` please.
Do you have it?" In his head, Pat repeated "please, please, please."

The clerk searched his records, "Hmm… `rubyonrails.org`… `rubyonrails.org`… Ah
ha!" 

Pat's eyes grew wide in anticipation. The clerk printed off a slip of paper and
handed it to Pat, "This will get you to your destination."

With a smile, Pat gave his thanks. As he and Pam walked away he began to read
the paper. His smile slowly faded away.

"These are more `NS` records all to the same place," he exclaimed. "They start
with `ns` followed by a number and then `.gratisdns.dk`. It seems like these
DNS kingdoms keep giving us the runaround."

> 10. Reuse Illustration

"Not at all!" responded Pam. "Like I said, this is how DNS works. I promised I
would explain everything, so let's board the train, and I'll clarify how DNS
works."

---

> 11. Technical Slide: Graph of DNS structure

Back on the train, Pam addressed Pat, "OK. I don't want you to be confused, so
let's walk through DNS. DNS is a recursive and iterative system we use to
determine addresses for domain names.

> 12. Technical Slide: Path to resolver highlighted

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
"If we don't already have a copy of the address, then normally we go to our
local resolver like earlier. Next, we give the local resolver a _recursive_
request for an address. What that means is that they will try whatever they need
to do to obtain the address. If they don't have a copy of the address already,
then they will take an _iterative_ process to find it from another kingdom.

> 13. Technical Slide: Path to root domain kingdoms highlighted. Show
>     domain names with the extra dot at the end to indicate root domain.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
"You and I have undertaken the iterative process this time so you can understand
how resolvers work to retrieve the addresses we couriers need. This iterative
process is crucial to ensure DNS kingdoms can reasonably store the billions of
addresses and domain names. Therefore, it has a hierarchical structure that
starts with the root domain kingdoms. The root domain kingdoms are responsible
for storing addresses for the top level domain kingdoms.

> 14. Technical Slide: Same path highlighted. Show list of TLDs.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
"Top level domains, or TLDs for short, are just categorical names used in domain
names. You've already seen `.org`, which is primarily used by organizations.
Other popular TLDs are `.com`, `.net`, and `.io`, which startups love. There
are numerous other TLDs as well.

> 15. Technical Slide: Root domain handing back NS records. Have example NS
>     record text?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
"The root domain kingdoms hand out `NS` records to these TLD kingdoms, which are
like referrals. The root domain kingdoms are essentially saying, 'I don't know
where `rubyonrails.org` is, but I can direct you to someone that has a better
shot at knowing.'

> 16. Technical Slide: Zoom in on portion of graph with TLDs. Show normal server
>     registering domain names with NS servers and those NS servers' being
>     registered with TLD servers. Show TLD server handing back NS records to
>     the final server.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
"Next, the TLD kingdoms do something similar. Usually, a TLD kingdom only knows
about NS kingdoms. Regular kingdoms like the Puma Kingdom will employ at least
two NS kingdoms to advertise the `rubyonrails.org` address. In turn these NS
kingdoms will register with the TLD kingdoms, so the TLD kingdoms can hand out
referrals, or `NS` records, to them.

> 17. Technical Slide: Highlight path to NS server. Show couple replies along
>     path with 'A' and 'CNAME' responses. Show 'A' and 'CNAME' example
>     responses up close too.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
"Finally, remember earlier when our resolver friend Ren mentioned 'authoritative
DNS kingdoms'? These NS kingdoms — one of which we will visit next — are
typically the authoritative kingdoms that have the final say on addresses for
regular kingdoms. Therefore, they hand out `A` or `CNAME` records. `A` records
are known as host records. They give the actual address for a domain name.
`CNAME` records are like aliases. If `rubyonrails.org` wanted to advertise
another domain name like `rubyonrailsftw.com`, then they could use a `CNAME`
record that aliases back to `rubyonrails.org`. The benefit of this over an `A`
record is that if their address changes, they only need to update one `A` record
for `rubyonrails.org`. The alias, `rubyonrailsftw.com`, will still work because
it points to whatever address `rubyonrails.org` points to.

> 18. Technical Slide: Flip graph upside down and show in a tree-like manner.
>     Show costs/latency numbers along edges.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
"Therefore, you see that the DNS kingdoms are structured in a distributed,
hierarchical manner. They are recursive in that the higher levels of the system
will yield to the lower levels to eventually get an address for a domain name.
This allows addresses to be stored in a saner, more efficient manner, albeit at
the cost of more time to retrieve an address. This delay in time to obtain an
address, also known as latency, is also why higher levels like the resolver will
save a copy of the address for a while after they retrieve it. If the resolver
receives another request for the address, then they can use their copy and avoid
the extra latency to retrieve it from an authoritative kingdom."

"Wow! It all makes sense now. If all the kingdoms stored all the addresses, then
that would require a lot of storage. It would also complicate keeping addresses
up to date at all the kingdoms."

"Exactly."

"Thank you for explaining that. I feel better now. Latency sounds pretty
important, so we need to get a move on!"

"No doubt. Unfortunately, we are always limited by distance. We'll do our best
after we get the address from the last kingdom."

---

> 9. Reuse Illustration

Pat and Pam finally arrived at one of the NS kingdoms. Like before, they entered
a large building and met with one of the clerks. At long last, they obtained the
address for `rubyonrails.org`. Pat was more than elated.

> 10. Reuse Illustration

Pat began, "Great! Now we have the address, let's hop back on the UDP Express
to deliver the package!"

Pam responded, "Well, it's not that easy."

"Huh?"

"HTTP packages can't be delivered via the UDP Express. We have to use the TCP
Turboline instead. Before we can do that, we need to make sure the Puma Kingdom
is ready for our delivery too. We need to head back to KPS and schedule the
delivery, so let's go!"
