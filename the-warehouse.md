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
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
"In this case, these messages adhere to the HTTP protocol. A standardized format
for requesting information and replying with information. Even the garbled
messages follow that format, but they've been encrypted to ensure
confidentiality between the requester and recipient. Encrypted messages use the
secure HTTPS protocol."

"I see," acknowledged Pat. "So how do the patterns in the HTTP format work?"

"Good question," replied Pam. "As I mentioned, HTTP messages are usually
grouped into requests and replies, which have similarities and differences in
their formats.
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
"As you might guess, requests are outgoing packages, so they require specific
fields to properly describe the request. Their format looks like this: on the
first line is the method of the request, the resource being requested, and the
version of HTTP being used. The next several lines are for headers which list
extra information or limitations on the request. After skipping a line, the
request may supply an optional message body to further qualify the resource
being requested."

"That's a lot of information. What types of methods are there?" inquired Pat.

"There are several standard methods," answered Pam, "but the most common ones
we see from our clients are GET, POST, PUT, and DELETE. Methods indicate to
the receiver the nature of the request so they know how to process the
request and generate an appropriate reply package.
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
"GET requests are the most basic and indicate a simple request for the resource.
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
"POST requests indicate that the requester wants to provide some information to
the receiver, but the requester isn't too sure _where_ to supply the
information. For example, if a requester wanted to purchase an item from a
store, they could send their order details to a generic resource name like
'/checkout'. Then, the store would reply with an acknowledgment of the order
along with a receipt.
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
"PUT requests are very similar to POST requests, but the requester typically
knows where to supply the information. Generally, our clients use PUT requests
for updating information that the receiver manages for them. For example, if a
store keeps track of a requester's name, then the requester can use a PUT
request to update their name at the store.
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
"Finally, DELETE requests are used to delete a resource. If a requester has
multiple addresses saved in their account at a store, then they can use a DELETE
request to remove one of those addresses."

"I see. So methods make a requester's intent more precise, but I'm still
confused by the headers. What are the 'extra information or limitations' you
mentioned?"

"Headers are primarily useful for meta data, which basically means information
that describes the package itself. Remember, the request itself may be a GET
method for a resource like '/friends'. The requester might specify that they
would like to receive back their list of friends in a specific format.
Therefore, the requester can add an 'Accept' header to ask for a reply in an
exact format. It's still up to the recipient to honor the format request in
their reply.
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
"Now, there are many more headers than methods, and a receiver can support their
own custom headers too. Headers are 'key-value' pairs, which just means each
header line consists of the name of the header, a colon ':', and the value for
the header. The 'Accept' header I mentioned earlier could look like `Accept:
*/*`, which means the requester will accept any format from the recipient.
In addition to the 'Accept' header, there are other common headers our clients
and their recipients use.
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
"The 'Content-Type' header allows a recipient to include in their reply which
format they are actually sending back.
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
"The 'Host' header allows a requester to specify the particular address of the
recipient. It is especially necessary if multiple recipients live in the same
kingdom.
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
"The 'Content-Length' header allows a recipient to describe how big the reply
message is.
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
"And there are various other headers available to requesters and recipients."

"Wow! That is a lot of options. If recipients use headers too, does that mean
their reply packages are similar to request packages?"

"Yes, the reply messages are almost the same, but instead of a request method,
they start with a status line. A status line includes the version of HTTP, a
status code, and status description.
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
"Just as methods offer a standard way to describe the type of request, status
codes allow a standard way to describe the type of reply. Status codes are
simply three-digit numbers followed by a descriptive phrase. The most common
status code is 200, which is usually followed by 'OK'. This means everything is
good with the request package, so the recipient can reply with the requested
information.
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
"A status code of 304 'Not Modified' means the request package is for the same
resource and that resource hasn't changed since it was last sent to the
requester. This allows the recipient to avoid resending the message body and to
respond more quickly to the requester.
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
"A status code of 404 'Not Found' indicates that the recipient does not have the
requested resource, so they cannot fulfill the request. In fact, any status code
that starts with '4' means that the client's request is invalid for some reason,
so the recipient will not reply with the message. Another example is 401
'Unauthorized', which means the requester is not allowed to request a particular
resource.
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
"Finally, status codes that start with '5' mean that the recipient is having
trouble responding with the package even if the request is valid. The most
general example is 500 'Internal Server Error' if the recipient's warehouse or
processing is having issues fulfilling requests."

"You really know your HTTP! Thanks for explaining that to me. I think I'm ready
to deliver this package."

Pat studied the package to find the address for the Puma Kingdom. He noticed
that the host address said "rubyonrails.org".

"Um," started Pat, "where do we deliver this? I don't understand this host
address. I thought addresses were just numbers."

Pam replied, "Ah. This sounds like a perfect time for you to learn about DNS.
Let's go!"

With a puzzled look on his face, Pat proceeded out the warehouse with Pam to
deliver the package.
