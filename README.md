TDD Made Easy
=============

"TDD Made Easy" is an experimental tool for learning or practicing Test Driven Development (TDD).

Getting started
----------------

* Ensure you have `git` and `ruby` on your `$PATH`
* Run `scripts/start` to get started
* Run `scripts/run-tests` to run the tests

How it works
------------

Each time you run `scripts/run-tests` some automated tests will be run. Your job is to always write the simplest code possible in order to get all the tests to pass, but without writing any code that the tests do not cover.

Take care when running `scripts/run-tests` because if the tests fail, then all the code you wrote will be deleted. This encourages you to try small steps, and to avoid getting over-commited to any solution that may be too complicated.

What? How can it be easy ? Isn't TDD *necessarily* hard ?
---------------------------------------------------------

You're not wrong, many people struggle to learn TDD, for a variety of reasons. One, it encompasses many smaller skills and they all need to be sufficiently developed before you begin to benefit completely from the practice. It's often for people to fall back into test-after development, because of the struggle of writinig a good test for something new and novel. Secondly, it can be hard to see the value of those tests. Whether from the perspective of correctness, refactorability or aiding design, it's not always obvious to see how TDD is strictly better than test-after development, or even peer review, although I would claim that it certainly is.

However, I wanted to write a tool that helps to encourage healthy development practices and discourage all of our bad habits. Oftentimes learning a new skill requires unlearning some previous behavior, and I find that while the most direct path towards self-improvement will be painful, it saves you time.

Therefore, I've decided to implement this tool using the [Test && Commit || Revert (TCR)](https://medium.com/@kentbeck_7670/test-commit-revert-870bbd756864) technique that was first described by Kent Beck back in 2018. 

The basic idea is that you start with a failing test.

* As in with TDD, your test must be failing when you start
* Write the simplest code you can to make the tests pass
* Run the tests
* If the tests pass you can commit
* If the tests fail otherwise revert to the previous commit

This naturally encourages small, safe steps, especially when refactoring a complex piece of work.

