# Pat Packet Visits Ruby Rails

## Intro

Pat Packet is an eager, bright packet who is excited about his first day at KPS
(Kernel Parcel Services). KPS is a large company that serves all the shipping
needs of the Apple Pro continent, so Pat knows this is an amazing opportunity.

In school, Pat trained in ICMP LAN Delivery but he hopes to get a leg up at KPS
and travel the world in TCP WAN Delivery. His ultimate goal is to one day visit
the renowned Puma Kingdom and maybe even meet its esteemed leader Ruby Rails.

One day as Pat was returning from a delivery he overheard that Firechrome
Industries had just dropped off an important package destined for the Puma
Kingdom for Ruby Rails herself! Pat immediately rushed to the office of his boss
Benedict Buffer.

> "I have to deliver this package!" exclaimed Pat.
 
> "What do you think qualifies you to deliver this package?" asked Benedict.
> "You haven't even made your first WAN delivery. This is a _**very**_
> important package that must be delivered timely and safely."
 
> "But I have been studying WAN distribution at night," replied Pat. "How will I
> ever fully learn unless you give me a shot?"

Pat thought for a minute and then offered a solution.

> "I heard that this package is larger than most and may require a two-packet
> job," Pat continued, "What if I took the job with Pam Packet?"
 
> Mulling over Pat's proposition, Benedict responded, "Well, Pam is our best
> courier and has made the trek to the Puma Kingdom many a time. OK. Under Pam's
> direction, you may deliver the package."

Elated, Pat hugged his boss and thanked him profusely. Pat then rushed off to
the WAN warehouse to meet with Pam.

## HTTP

Pat arrived at the WAN warehouse and marveled at the number of packages that
awaited delivery. He saw Pam at the back of the warehouse sifting through
packages. He ran over to greet her.

> "Hi, Pam," said Pat.
 
> "Hi, Pat, good to see you," replied Pam. "Benedict called earlier to say that
> we are delivering an important package to the Puma Kingdom together."
 
> Pat piped, "Yes! It's for Ruby Rails too!"
 
> Pam echoed Pat's enthusiasm, "Great! I was just sorting through the packages
> to get what we need."

Pat noticed the packages were different from what he had delivered in the past.
Some of the packages had similar looking messages with uppercase words like GET
and POST. Other messages were completely garbled.

> "So what kind of packages are these?" asked Pat, "I can understand most of
> them because they follow a pattern, but others look like nonsense."
 
> Pam answered, "In the world of WAN distribution — and even LAN — packages
> typically conform to a specific protocol for their messages. I'm sure you're
> already familiar with this concept in your type of deliveries.<br>
>
> "In this case, these messages adhere to the HTTP protocol. A
> standardized format for requesting information and replying with
> information."
>
 
> "I see," acknowledged Pat. "So how do the patterns in the format work?"
 
> "Good question," replied Pam. "As I mentioned, HTTP messages are usually
> grouped into requests and replies, which have similarities and differences in
> their formats.
>
> "As you might guess, requests are outgoing packages, so they require specific
> fields to properly describe the request. Their format looks like this: on the
> first line is the method of the request, the resource being requested, and the
> version of HTTP being used. The next several lines are for headers which list
> extra information or limitations on the request. After skipping a
> line, the request may supply an optional message body to further qualify the
> resource being requested."
>
 
> "That's a lot of information. What types of methods are there?" inquired Pat.
 
> "There are several standard methods," answered Pam, "but the most common ones
> we see from our clients are GET, POST, PUT, and DELETE. Methods indicate to
> the receiver the nature of the request so they know how to process the
> request and generate an appropriate reply package.
>
> GET requests are the most basic and indicate a simple request for the
> resource.
>
> POST requests indicate that the requester wants to provide some information to
> the receiver, but the requester isn't too sure <em>where</em> to supply the
> information. For example, if a requester wanted to purchase an item from a
> store, they could send their order details to a generic resource name like
> '/checkout'. Then, the store would reply with an acknowledgment of the order
> along with a receipt.
>
> PUT requests are very similar to POST requests, but the requester typically
> knows where to supply the information. Generally, our clients use PUT requests
> for updating information that the receiver manages for them. For example, if a
> store keeps track of a requester's name, then the requester can use a PUT
> request to update their name at the store.
>
> Finally, DELETE requests are used to delete a resource. If a requester has
> multiple addresses saved at a store, then they can use a DELETE request to
> remove one of those addresses.
