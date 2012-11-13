#!/usr/bin/env ruby

require 'vegas'

app= Proc.new{|env|
  [200,{'Content-type' => 'text/html'},["<h1>This is web server X.</h1><p/>
#{env.inspect}"]]
}

Vegas::Runner.new(app,'rack_app')
