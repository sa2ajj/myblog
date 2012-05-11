public: yes
template: page.html

pam-realm -- control your realms
================================

Summary
-------

Checks the user name against being of form ``<user>@<realm>``, where ``<realm>`` is
supplied as an argument.  In case the check succeeds, this ``@<realm>`` part is
stripped, and the control is passed to the following module.

Options
-------

``debug``
    does not do anytning at the moment

``realm=<realm>``
    specify the ``<realm>`` to check against

``allowbare``
    also allows the user name to be of form just ``<user>`` without any ``@<realm>``

``nostrip``
    in certain cases, it may be of use to just check if the user name is of
    proper form

Example
-------

::

    auth    requisite   pam_realm.so    realm=mail.example.com
    auth    require     pam_unix.so

Download
--------

The latest version (0.2) is available as a `tarball <pam-realm-0.2.tar.gz>`_.

Alternatively, you can check the code at `github <https://github.com/sa2ajj/pam-realm>`_.

Bugs
----

Huh?

Author
------

Mikhail Sobolev <mss@mawhrin.net>

Copyright
---------

::

    Copyright (C) 2002, Mikhail Sobolev

    You may use, modify and redistribute this program according to the terms
    and conditions of GPL v2
