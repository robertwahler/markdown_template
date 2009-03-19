MarkdownTemplate
================

This plugin allows you to use view files in Markdown with erb
Name your views like this: index.html.markdown

Tested under Rails 2.3

Requires Rdiscount gem

Example: config/environment.rb

    config.gem "rdiscount", :version => '>= 1.3.1.1'

The default rake task will run the spec

Based on a code pattern presented at http://gist.github.com/66499

Copyright (c) 2009 GearheadForHire.com, LLC, released under the MIT license
