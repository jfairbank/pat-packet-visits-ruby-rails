# The Warehouse

Pat arrived at the WAN warehouse and marveled at the number of packages that
awaited delivery. He saw Pam at the back of the warehouse sifting through
packages. He ran over to greet her.

"Hi, Pam," said Pat.

"Hi, Pat, good to see you," replied Pam. "Benedict called earlier to say that
we are delivering an important package to the Puma Kingdom together."

Pat piped, "Yes! It's for Ruby Rails too!"

Pam echoed Pat's enthusiasm, "Great! I was just sorting through the packages
to get what we need."

Pat noticed the packages were different from what he had delivered in the past.
Some of the packages had similar looking messages with uppercase words like GET
and POST. Other messages were completely garbled.

"So what kind of packages are these?" asked Pat, "I can understand most of
them because they follow a pattern, but others look like nonsense."

Pam answered, "In the world of WAN distribution — and even LAN — packages
typically conform to a specific protocol for their messages. I'm sure you're
already familiar with this concept in your type of deliveries.
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"In this case, these messages adhere to the HTTP
protocol. A
standardized format for requesting information and replying with
information."

"I see," acknowledged Pat. "So how do the patterns in the format work?"

"Good question," replied Pam. "As I mentioned, HTTP messages are usually
grouped into requests and replies, which have similarities and differences in
their formats.
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"As you might guess, requests are outgoing
packages, so they require specific
fields to properly describe the request. Their format looks like this: on the
first line is the method of the request, the resource being requested, and the
version of HTTP being used. The next several lines are for headers which list
extra information or limitations on the request. After skipping a
line, the request may supply an optional message body to further qualify the
resource being requested."

"That's a lot of information. What types of methods are there?" inquired Pat.

"There are several standard methods," answered Pam, "but the most common ones
we see from our clients are GET, POST, PUT, and DELETE. Methods indicate to
the receiver the nature of the request so they know how to process the
request and generate an appropriate reply package.
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;GET requests are the most basic and indicate a
simple request for the resource.
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;POST requests
indicate that the requester wants to provide some information to
the receiver, but the requester isn't too sure <em>where</em> to supply the
information. For example, if a requester wanted to purchase an item from a
store, they could send their order details to a generic resource name like
'/checkout'. Then, the store would reply with an acknowledgment of the order
along with a receipt.
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PUT requests are very similar to POST requests,
but the requester typically knows where to supply the information. Generally,
our clients use PUT requests for updating information that the receiver manages
for them. For example, if a store keeps track of a requester's name, then the
requester can use a PUT request to update their name at the store.
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Finally, DELETE requests are used to delete a
resource. If a requester has multiple addresses saved at a store, then they can
use a DELETE request to remove one of those addresses."