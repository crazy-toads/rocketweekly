require 'yaml'
require 'rocketchat'

$:.unshift File.dirname(__FILE__) unless $:.include? File.dirname(__FILE__)
require 'rocketchat/room'
require 'rocketchat/messages/channel'
require 'rocketweekly/connect'