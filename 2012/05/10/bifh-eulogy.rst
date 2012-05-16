public: yes
tags:
    - bifh
    - build system
    - ci
summary: |
    Things come and go, but experience is what you might retain.
share:
    - twitter

BIFH: Eulogy
============

(**Update**: for those who think it's premature, according to `Wikipedia
<http://en.wikipedia.org/wiki/Eulogy>`_: *On occasions, eulogies are given to
those who are severely ill or elderly in order to express words of love and
gratitude before they pass away.*)

While working on many devices (`770`_, `N800`_, `N810`_, `N900`_ and `N9`_) and
software updates for them our R&D activities heavily relied on the build system
created by the team I led and, later, by the team I worked in.

.. _770: http://nokia.com/770

.. _N800: http://europe.nokia.com/support/product-support/nokia-n800-internet-tablet

.. _N810: http://nokia.com/n810

.. _N900: http://nokia.com/n900

.. _N9: http://nokia.com/n9

The build system's name is ``BIFH``.  When we put it in use, the name stood for
*Bastard Integrator From Hell*, however, later on, we worked hard on improving
what we had and eventually it became *Beloved Integration Friendly Helper*.

I am going to write a few posts that cover the following topics in a hope that
it is somehow useful for other people who face same kind of situations.  (As
soon as an item is written about, it is going to contain a link to the
corresponding post, so you may bookmark this page and check it [time to time]
to see if the continuation is available):

* A Bit of History
* Goals of Release & Integration
* Introduction to Integration
* Terminology
* System Architecture
* Environment
* Roles

However, before I start to carefully choose words and polish sentences, I'd
like to thank many people who did a lot to make the whole thing working and
progressing.

First of all, I'd like to thank André Dolenc who gave me this chance to learn a
lot and work on all these products by hiring me.

I worked with a great team (part of which I collected myself :)).  I thank them
very much for their devotion, resilience, knowledge, energy and support.

**IT**

* Jesus Climent
* Stefano Mosconi
* Mika Marjamäki
* Eero Heino
* Ville Jouppi
* Steve Jayna
* Michał Gałka
* Dawid Romaldowski
* Ramez Hanna

**Integration Support**

* Janardhana Adatravu
* Madhusudhan Nanjappa
* Ram Kalaskar

**Release Management**

* Jorma Virkkunen

**Error Management**

* Shahin Shahini
* Eric Le Roux

**Configuration & Customization Management**

* Marc Dillon
* Jari Tenhunen
* Rodrigo Abreu

**Test Automation**

* Mikko Mäkkinen
* Ville Ilvonen
* Lauri Kantonen
* Alexander Kotelnikov

**BIFH Developers**

* Aliaksei Katovich
* Alexander Kanevskiy
* Ed Bartosh
* Ugandhar Reddy
* Markus Törnqvist
* Dmitry Rozhkov
* Pami Ketolainen
* Anton Berezin
* Richard Braakman

And I'd like to thank many other people:

* Kimmo Hämäläinen
* Yauheni Kaliuta
* Alexander Shishkin
* Natalia Dobrovolskaya
* Alexey Vyskubov
* Reto Zingg
* Oleg Romashin
* Leonid Zolotarev
* Juha Kallioinen
* Jussi Hakala
* Riku Voipio
* Johan Ericsson
* Mikko Leppänen
* Grigori Timonen
* Francesco Vozza
* ...
* *And many, many other*

And the last, but not least, I'd like to thank Jussi Hurmola who supported me
well during hard times of recovering from burn out.

..
    vim:tw=79
