$:.unshift File.dirname(__FILE__) unless $:.include? File.dirname(__FILE__)

require 'rocketchat'
require 'rocketchat/channel'

require 'rocketweekly/connect'