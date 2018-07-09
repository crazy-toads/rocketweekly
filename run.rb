require_relative './lib/rocketweekly'

case ARGV[0]
when 'list'
  rocket = RocketWeekly::Connect.new
  list = rocket.channels_list
  puts rocket.channels_list.map &:show
  puts '---------------------'
  puts "total: #{list.count} canaux"
when 'history'
  rocket = RocketWeekly::Connect.new
  week = ARGV[1]
  channel = ARGV[2]
  puts channel
else
  puts "Usage: #{ARGV[0]} <command> [<argument>]"
  puts
  puts "  possible commands:"
  puts "  list - list all channels information"
  puts "  history <week> <channel> - give messages for the given week"
end

#   puts '--------------'
#   puts channel.show
#   # rocket.channel_history(channel.id).each do |m|
#   #   printf "%s %-20s\n", m['u']['username'], m['msg']
#   #   puts
#   # end
# end

