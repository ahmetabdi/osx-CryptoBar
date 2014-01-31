# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/osx'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'crypto_bar'
  app.icon = "icon.icns"
  app.codesign_for_release = false
  app.info_plist['LSUIElement'] = true
end
