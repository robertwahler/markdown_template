MarkdownTemplate
================

This plugin allows you to use view files in Markdown with ERB.

Name your views like this: index.html.markdown

Tested under Rails 2.3.X

Dependencies
------------

Requires the Rdiscount gem, add this to your Rails Gemfile:

    gem "rdiscount", "~> 1.6.5"  # markdown_template plugin

Testing
-------

    gem install bundler

    bundle update
    bundle exec spec spec/markdown_template/markdown_template_spec.rb

Based on a code pattern presented at http://gist.github.com/66499

Copyright (c) 2009-2011 GearheadForHire, LLC, released under the MIT license
