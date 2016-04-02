# The Recursive Journey

As Pat and Pam exited the warehouse, Pat asked, "What is DNS?"

Pam answered, "DNS stands for the Domain Name System. To answer your earlier
question, yes, addresses are just numbers. However, in the world of WAN there
are over 4 billion addresses. There is even a newer address format that has more
addresses than that!
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
"Therefore, it's difficult for our clients to remember the addresses of their
recipients. DNS allows recipients to advertise their address with more memorable
domain names like the host address 'rubyonrails.org'. It's up to us to then use
DNS to determine the actual address of the domain name.
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
"Sometimes we keep a copy of the address for a short time, but I couldn't find
one for 'rubyonrails.org'. We'll need to make a stop at the Resolver Kingdom in the Isp
Continent to get the address, so let's take the UDP Express train. It's usually
the fastest way to get there."

So, off they went to hop aboard the UDP Express to start their DNS journey.

---

After several milliseconds, they arrived at the Resolver Kingdom. They found the
nearest resolution office and stepped through the door.

Pam greeted the office clerk, "Hello, Ren. My friend Pat and I need the address
for a domain name."

Ren responded, "Hey, Pam! Great! What is the domain name you need to resolve?"

"It's 'rubyonrails.org'."

Ren walked over to his file cabinet to begin his search. After quickly thumbing
through the records, he raised his head with a disappointing look.

"Sorry, we don't have an address for that domain name right off hand. We'll need
to retrieve it from one of the authoritative DNS kingdoms."

"Authoritative?" interjected Pat.

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

Several milliseconds later, they arrived at Root Domain Kingdom A. As he
stepped off the train, Pat noticed a large building in the distance and marveled
at the number of packets entering and exiting.

"Whoa! Is that the main office?"

Pam answered with a smile, "Indeed, it is."

They entered the building and joined one of the lines at the front desk. After a
short time, a clerk motioned them forward.

"Welcome to the Root Domain Kingdom," the clerk began. "How may I direct you?"

Pat responded, "Hello. We need the address for 'rubyonrails.org' please."

Without even hesitating, the clerk replied, "Ah, dot org. Here are a few NS
kingdoms to try." The clerk printed off a list and handed it to Pat.

Pat, visibly confused, inquired, "But these are just a bunch of addresses that
go with other domain names like 'a0.org.afilias-nst.info'. None of them are
'rubyonrails.org'."

"Right&hellip; We don't keep records on individual domain names like that. All
we have are records on the NS kingdoms for the top level domains. You'll have to
ask one of those kingdoms for the address."

"Top level domains?" a still befuddled Pat asked.

Pam stopped Pat, speaking to the clerk, "Thank you so much for your help. We'll
be on our way."

More to come…
