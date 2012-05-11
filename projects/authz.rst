public: yes
template: page.html

==========================================
AuthZ Tools -- manipulate your authz files
==========================================

This is a package that contains several tools to manipulate authz files (as
used by ``mod_auth_svn`` module for `Subversion <http://subversion.apache.org>`_.
The main reason for this package to exist -- big authz files and authz files
located on remote computers.

Usage
=====

authz-tool
----------

Its usage is pretty simple::

  authz-tool <authzfile> <operation> [<arg>]

Where ``<operation>`` is one of the following:

``getgroups``
    dumps the content of ``[groups]`` section to the standard output

``setgroups``
    replaces the contents of the ``[groups]`` section with what is given on the
    standard input.  if the input does not have a ``[groups]`` section, the
    ``[groups]`` section in the specified file will be removed

``get <repo>``
    dump all sections that are related to the specified repository

``set <repo>``
    replaces all sections for the specified repository with what is given on
    the standard input.  the input is going to be checked and only appropriate
    sections will be put in the file

``del <repo>``
    remove all sections related to the specified repository

.. note:: for the operations with general unqualified sections, you may
    specify '' (empty string) as a repository name

authz-admin
-----------

``authz-admin`` is a CGI script that allows modification of an authz file

It can be used in two essentially different ways:

* there are no restrictions accessing the script
* user must be authenticated to access the script

Installation (Common Part)
``````````````````````````

* copy the script to ``/usr/lib/cgi-bin``
* modify two variables at the very beginning of the file:

    ``authz_file``
        authz file you'd like to maintain
    ``template_file``
        template that is part of this package

* make sure the script is exectuable: ``chmod +x /usr/lib/cgi-bin/authz-admin``
* make sure that the authz file is writable for the user under which web
  server is running (in case of Debian)::

    chown www-data:www-data /path/to/authz/file
    chmod u+w /path/to/authz/file

* point your browser to ``http://your-host.example.org/cgi-bin/authz-admin``

Restricted Access
`````````````````

When run script checks if the user had to authenticate herself.  If yes, then
the script will perform additional checks to see if the user can perform
certain operations. The rights are granted by adding user to the special groups
(these must be defined in ``[groups]`` section):

``authz-admin-super``
    only users from this group can modify ``[groups]`` section

``authz-admin-global``
    users from this group can modify all non qualified paths (sections that are
    named like ``[/path]``)

``authz-admin-<repo>``
    users from this group can modify paths for the specific repo (sections that
    are named like ``[<repo>:/path]``)

So to restrict certain operations to specific users you'd have to do the
following (for apache):

* add to the configuration file a section like::

    <Location /cgi-bin/authz-admin>
      AuthType Basic
      AuthName "Editing Authz File"
      AuthFileName /path/to/htpasswd/file
      Require valid-user
    </Location>

* add to ``[groups]`` section of your authz file at least the following line::

    authz-admin-super = yourusername

* restart apache and here you are done

Downloads
=========

The latest code is available at `github <https://github.com/sa2ajj/authz-tools>`_.

`v0.6.1 <authz-tools-0.6.1.tar.gz>`_, 13.07.2005
    Jon Schewe suggested to use ``SCRIPT_NAME`` variable instead of hardcoding the path

`v0.6 <authz-tools-0.6.tar.gz>`_, 22.06.2005
    fixed a bug with authz-admin (it did not append new line in one place,
    result was that some lines were merged which caused problems); paths for a
    particular repository are shown in the lexicographical order (helps to
    navigate through multiple entries); added preliminary code for htpasswd
    files management

`v0.5 <authz-tools-0.5.tar.gz>`_, 5.04.2005
    Fixed a bug (``authz-admin`` did not seem to do what it was expected to
    do); added fine grained rights for manipulating authz files via cgi-script

`v0.4.2 <authz-tools-0.4.2.tar.gz>`_, 3.04.2005
    Added one more configuration parameter to the ``authz-admin`` script
    (thanks, extrealm): you can now specify how you access the script on your
    server

`v0.4 <authz-tools-0.4.tar.gz>`_, 3.04.2005
    Added ``authz-admin`` cgi-script

`v0.3 <authz-tools-0.3.tar.gz>`_, 2.04.2005
    Initial version

Bugs
====

Huh?

.. note:: the tools are not supported any more.

Author
======

Mikhail Sobolev, mss@mawhrin.net

Copyright
=========

::

    Copyright (C) 2005, Mikhail Sobolev

    You may use, modify and redistribute this program according to the terms and
    conditions of GPL v2

Credits
=======

Thanks to ``darix`` at `#svn <irc://irc.freenode.net/svn>`_ for the idea::

    <darix> start coding

and to `Alexey Vyskubov <http://only.mawhrin.net/~alexey/>`_::

    if you finished coding, release it!

I'd also like to thank these people:

* `Jon Schewe <http://mtu.net/~jpschewe/>`_

Revision
========

Last updated::

    Wed, 13 Jul 2005 01:19:05 +0400
