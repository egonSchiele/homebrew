# Adding a New Formula

	brew create [url to package or file]

Then follow the steps.

# Formulas From Github Gists

If it's just a script, post it to a gist and use a `GithubGistFormula` as seen [here](https://github.com/mxcl/homebrew/blob/master/Library/Formula/browser.rb).

# Formulas Where You Just Download a File

Use `DownloadFormula`:

    require 'formula'

    class Bootstrap < DownloadFormula
      url 'http://twitter.github.com/bootstrap/assets/bootstrap.zip'
      homepage 'http://twitter.github.com/bootstrap/index.html'
      md5 '47739d7abb48a70b69062f21991fdfcf'
      version '2.0.0'
    end

# Misc Tips

All formulas located in: `/usr/local/Library/Formula`

Use this to copy things to bin:

	bin.install(script_name)

See the [Formula Cookbook](https://github.com/mxcl/homebrew/wiki/Formula-Cookbook) for more info and the different variables available to you.

# Pull new changes from main repo:

	git pull mxcl master
	git push origin

# What Packages Are Available?

1. You can (browse the Formula directory on GitHub)[http://github.com/mxcl/homebrew/tree/master/Library/Formula/].
2. Or type `brew search` for a list.
3. Or run `brew server` to browse packages off of a local web server.
4. Or visit [braumeister.org][http://braumeister.org] to browse packages online.
