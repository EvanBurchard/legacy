[![Build Status](https://travis-ci.org/EvanBurchard/legacy.svg?branch=master)](https://travis-ci.org/EvanBurchard/legacy)

# README

The intention of this app is to collect common practices of web development.  Common practices does not mean best practices. Anything you can think of to make this app harder to work with is fair game.

* Cargo culting: copying code from one place to another
* Fat controllers
* Inheritance hierarchies (model STI etc) that don't reflect meaningful relationships
* Multiple responsibilities for objects and methods
* Renaming the same variable many times in a single controller action
* Dead routes, dead code
* Add gems for whatever, or no reason at all.
* Failing, pending, and passing tests are all A-OK.  Try not to get a fully green test suite though... we're too agile for that to be possible.
* Add a test framework or 3 if you want
* Add features... sooooo many features  

To contribute, send any PR you want.  Here are the limitations:
* Don't be too dramatic about your changes. replacing the whole app with obfuscated C is a no go
* Don't break EVERYTHING.  Try to make changes insidious if possible.  Something a manager would miss without a careful look at your commit, or overlook for the sake of progress.
* Don't try to haxxorz anyone's computer who runs this.  Commits somehow introducing security vulnerabilities for someone running the app locally won't be accepted.

What?  Why?
* You can use this as a sandbox for whatever you want.  Feel like trying out a new front-end/testing/package managing/etc. framework? Just toss it in and watch what it can break.
* If you've never worked at a company with legacy code, this is a good chance to understand why best practices are best, and what the alternative can be like.
* If you have worked at a company with legacy code, this might find some nostalgia.
