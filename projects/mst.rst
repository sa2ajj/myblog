public: yes

My Screenshot Tool
==================

While working on `Maemo <http://maemo.org>`_ port of `FBReader
<http://fbreader.org>`_, I wanted to grab nice pictures to attract attention of
people who might be interested in the program/port.

Here is the tool that was used for obtaining screenshots: `mst-0.4.tar.gz <mst-0.4.tar.gz>`_

After download type ``make`` to get the executable.

The usage is pretty simple: just type ``./mst``.  You should see something like::

    $ ./mst
    MST: will serve /home/mss/MyDocs/.images
    Firing up MST...
    Attempting to use port 10101 .. Success!
    MST started. Please point your browser at http://localhost:10101

Now point your favourite browser to the specified port (you do not have to run
it on this very computer!) and you are done.

.. note:: the data directory is not created by the application.  The directory
    name is default for the images directory on `Nokia 770 <http://nokia.com/770>`_.

.. important:: many things are hardcoded. Sorry about that.  I needed to grab
    screenshots and this is a tool that came out of my needs.

Thanks go to:

* Mathew Allum for `didiwiki <http://didiwiki.org>`_ -- the http code was borrowed from there (the link seem to be dead though)
* Tommi Komulainen for the code that actually saves the png file (this was an internal tool he originally created)

Last changed::

    Tue, 11 Oct 2005 00:36:24 +0400
