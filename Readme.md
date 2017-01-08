# Dockerized environment for Kindle Highlights

Didn't want to pollute my environment with ruby, encapsulated in docker...

To enter for development:
```
$ docker run -it --rm -v $(pwd)/code:/code ektar/ruby-kindle /bin/bash
# irb
irb(main):001:0> require 'kindle_highlights'
=> true
irb(main):002:0> kindle = KindleHighlights::Client.new(email_address: "<username>", password: "<password>")
irb(main):003:0> books = kindle.books
<book list>
irb(main):003:0> y books
B00139XTG4: 'The Black Swan: Second Edition: The Impact of the Highly Improbable Fragility"
B008035HQQ: The New Geography of Jobs
B00NP8MDYK: 'The Patient Will See You Now: The Future of Medicine is in Your Hands'
B01B2LHJU4: 'The Road Taken: The History and Future of America''s Infrastructure'
B002RKT6QK: Ulysses
B000JQU6YU: Uncle Tom's Cabin
...
irb(main):004:0> highlights = kindle.highlights_for("B008035HQQ")
irb(main):005:0> y highlights[0..5]
- asin: B008035HQQ
  customerId: A1YH7ZVIIUV8Z7
  embeddedId: CR!YHQ7PP6AKH0JX8SGF21T4HDEE8H1:F183B24F
  endLocation: 482416
  highlight: Unique among industrialized nations, it decided to make high school essentially
    universal; by contrast, European countries&mdash;traditionally more elitist in
    all matters&mdash;waited several decades.
  howLongAgo: 5 months ago
  startLocation: 482224
  timestamp: 1468691806000
- asin: B008035HQQ
  customerId: A1YH7ZVIIUV8Z7
  embeddedId: CR!YHQ7PP6AKH0JX8SGF21T4HDEE8H1:F183B24F
  endLocation: 482982
  highlight: The American worker was so much better educated than the workers of other
    countries that he became the most productive, innovative, and entrepreneurial
    in the world.
  howLongAgo: 5 months ago
  startLocation: 482817
  timestamp: 1468691853000
- asin: B008035HQQ
  customerId: A1YH7ZVIIUV8Z7
  embeddedId: CR!YHQ7PP6AKH0JX8SGF21T4HDEE8H1:F183B24F
  endLocation: 487375
  highlight: innovation happens when people interact in a fertile urban environment
    and their ideas unexpectedly collide to create something that did not exist before.
  howLongAgo: 5 months ago
  startLocation: 487221
  timestamp: 1469070309000
...
```

