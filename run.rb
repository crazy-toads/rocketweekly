require 'yaml'
require_relative './lib/rocketweekly'

rocket = RocketWeekly::Connect.new

output = {}
rocket.channels_list.each do |channel|
  output[channel.name] = {
    'id' => channel.id,
    'owner' => channel.owner ? channel.owner['username'] : '----'
  }
  puts '--------------'
  puts channel.name
  rocket.channel_history(channel.id).each do |m|
    printf "%s %-20s\n", m['u']['username'], m['msg']
    puts
  end
  break
end

puts '--------------'
