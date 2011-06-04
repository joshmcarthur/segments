# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "segments"
  gem.homepage = "http://github.com/joshmcarthur/segments"
  gem.version = File.exists?('VERSION') ? File.read('VERSION') : ''
  gem.license = "MIT"
  gem.summary = %Q{A Rails 3 Engine for managing text segments}
  gem.description = %Q{A Rails 3 Engine for managing and rendering text segments into your Rails web application. Segments are short-to-medium blocks of text or HTML that you wish to use throughout your application. It includes a web interface for managing segments, and is automatically compatible with Internationalization (I18n)}
  gem.email = "joshua.mcarthur@gmail.com"
  gem.authors = ["Josh McArthur"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

