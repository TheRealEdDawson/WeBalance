#!/usr/bin/env ruby

require 'vegas'

app= Proc.new{|env|
  [200,{'Content-type' => 'text/plain'},["This is an app.
#{env.inspect}"]]
}

Vegas::Runner.new(app,'rack_app')
