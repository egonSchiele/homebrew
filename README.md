Homebrew
========
Features, usage and installation instructions are [summarized on the homepage][home].

## Adding a New Formula

	brew create [url to package or file]

Then follow the steps.

If it's just a script, post it to a gist and use a `GithubGistFormula` as seen [here](https://github.com/mxcl/homebrew/blob/master/Library/Formula/browser.rb).

Use this to copy things to bin:

	bin.install(script_name)

See the [Formula Cookbook](https://github.com/mxcl/homebrew/wiki/Formula-Cookbook) for more info and the different variables available to you.

## Push!

See where your homebrew is located with `brew --repository`.


What Packages Are Available?
----------------------------
1. You can [browse the Formula directory on GitHub][formula].
2. Or type `brew search` for a list.
3. Or run `brew server` to browse packages off of a local web server.
4. Or visit [braumeister.org][braumeister] to browse packages online.

More Documentation
------------------
`brew help` or `man brew` or check our [wiki][].

Who Are You?
------------
I'm [Max Howell][mxcl] and I'm a splendid chap.


[home]:http://mxcl.github.com/homebrew
[wiki]:http://wiki.github.com/mxcl/homebrew
[mxcl]:http://twitter.com/mxcl
[formula]:http://github.com/mxcl/homebrew/tree/master/Library/Formula/
[braumeister]:http://braumeister.org
