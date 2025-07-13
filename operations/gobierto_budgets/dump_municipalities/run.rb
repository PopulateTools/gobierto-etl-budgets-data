#!/usr/bin/env ruby
# frozen_string_literal: true

require "bundler/setup"
Bundler.require

require "ine"

INE::Places::Place.all.each do |place|
  puts place.id
end
