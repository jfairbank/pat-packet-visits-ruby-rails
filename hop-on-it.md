# Hop On It

Pat and Pam returned to KPS to prepare for the actual delivery. Pam explained
the final steps.

Pam started, "As I mentioned, we have to deliver HTTP packages via the TCP
Turboline because they require TCP Assurance. TCP Assurance guarantees that the
package will be delivered untampered in its entirety. Carriers and recipients
accomplish this by acknowledging each other's messages.
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
"After we deliver an HTTP package, in addition to the reply message, the
recipient will also send back an acknowledgement package. Sometimes, they'll
combine the HTTP response and acknowledgement packages to save on postage. If we
don't receive an acknowledgement package within a certain amount of time, then
we'll try delivering again. We always make sure that the package ultimately
arrives at its destination.
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
"However, because HTTP packages are so popular and because there are many other
parcel carriers and couriers, the TCP Turboline can suffer overload, or
congestion. Therefore, after the Great Turboline Collapse in 1986, the
Congestion Control Administration, or CCA, formed to regulate Turboline usage.
CCA has strict guidelines to ensure that the Turboline doesn't get so
overwhelmed that no package can be delivered.
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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

More to come…
