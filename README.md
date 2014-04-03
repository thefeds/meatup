
MEATup
======

The website for the Monthly FED MEATup, where the Nature front-end developers (and friends) eat lots of MEAT, and go for a few drinks.

http://meatup.info/


Setup Guide
-----------

To run the MEATup website locally, you'll need to follow this guide. Before you start, you'll need [Ruby][ruby], [Bundler][bundler], and [Node.js][node] to be installed.

Clone this repo somewhere sensible and, from within the newly cloned directory, run the setup script:

```sh
make setup
```

The setup script will install all of the dependencies you need to run the site. Pay attention to the output, as this will tell you if anything went wrong.

Later, if you need to update dependencies, you can run this script again.


Running The Site
----------------

To build and serve the site, and make it available to you on http://localhost:4000/, run the following:

```sh
make serve
```

To watch and compile front-end assets, run the following commands:

```sh
make css
```


Development
-----------

Pushes to the `gh-pages` branch will go live immediately. If unsure, work on a feature branch and open a PR.



[bundler]: http://bundler.io/
[jekyll]: http://jekyllrb.com/
[node]: http://nodejs.org/
[ruby]: https://www.ruby-lang.org/
