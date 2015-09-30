|Build Status| |Deploy|

Legacy community portals
========================

-  `wiki <http://legacyapp.wikia.com/wiki/Legacyapp_Wikia>`__
-  `Little War Game clan "Legacy" <http://littlwargame.com>`__
-  `Live demo instance <http://legacyapp.herokuapp.com>`__

README
======

The intention of this app is to collect common practices of web
development. Common practices does not mean best practices. Anything you
can think of to make this app harder to work with is fair game.

-  Cargo culting: copying code from one place to another
-  Fat controllers
-  Inheritance hierarchies (model STI etc) that don't reflect meaningful
   relationships
-  Multiple responsibilities for objects and methods
-  Renaming the same variable many times in a single controller action
-  Dead routes, dead code
-  Add gems for whatever, or no reason at all.
-  Failing, pending, and passing tests are all A-OK. Try not to get a
   fully green test suite though... we're too agile for that to be
   possible.
-  Add a test framework or 3 if you want
-  Add features... sooooo many features
-  Making things better, or fixing "mistakes" from other people is ok
   too. There's no ideal proportion of "good" and "bad"

To contribute, send any PR you want. Here are the fairly minimal
limitations: \* Don't be too dramatic about your changes. replacing the
whole app with obfuscated C is a no go \* Don't break EVERYTHING. Try to
make changes insidious if possible. Something a manager would miss
without a careful look at your commit, or overlook for the sake of
progress. \* Don't try to haxxorz anyone's computer who runs this.
Commits somehow introducing security vulnerabilities for someone running
the app locally won't be accepted. \* Resetting (hard) to a much earlier
version and destroying history likely doesn't help to accumulate code,
which is part of the goal.

What? Why? \* You can use this as a sandbox for whatever you want. Feel
like trying out a new front-end/testing/package managing/etc. framework?
Just toss it in and watch what it can break. \* If you've never worked
at a company with legacy code, this is a good chance to understand why
best practices are best, and what the alternative can be like. \* If you
have worked at a company with legacy code, this might find some
nostalgia. \*Added a comment. 3rd time's a charm.

.. |Build Status| image:: https://travis-ci.org/EvanBurchard/legacy.svg?branch=master
   :target: https://travis-ci.org/EvanBurchard/legacy
.. |Deploy| image:: https://www.herokucdn.com/deploy/button.png
   :target: https://heroku.com/deploy
