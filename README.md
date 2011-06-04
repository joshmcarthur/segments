Segments
========

A Rails 3 Engine for managing and rendering text segments into your Rails web application. Segments are short-to-medium blocks of text or HTML that you wish to use throughout your application. It includes a web interface for managing segments, and is automatically compatible with Internationalization (I18n).

Features
--------

* Rails 3 Engine
* Internationalized web interface
* Customizable
* Supports segments in multiple languages
* ActiveRecord backend

Installation
------------

1. Add Segments to your Gemfile
    `gem 'segments'` (Stable)
    `gem 'segments', :git => 'https://github.com/joshmcarthur/segments.git`
2. Install the engine
    `bundle install`
    `rails generate segments`
3. Migrate database
    `rake db:migrate`

Usage
-----

* Managing segments:
    * Start your application, and visit /segments to manage segments
    * A segment has a key (Like an Internationalization key, except a string), content and a locale for which it should be rendered (I18n's default locale is the default). Keys can be the same, as long as the locale is different. This effectively means that you can have the same segment, for different languages.
    * If you require this segment page to be secured, you can override the authenticate_segments method of the SegmentsController to authenticate users.
* Displaying segments:
    * A helper method called render_segment is available to all views. This block accpets a single argument, which is the key of the segment to render. The code that finds the segment uses I18n's current locale, so as long as this is set correctly, the correct segment will be rendered. 
 
Contributing
------------
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

Copyright
---------

Copyright (c) 2011 Josh McArthur. See LICENSE.txt for
further details.

