require 'yaml'

module RocketChat
  class Room
    def show
      data.to_yaml
    end
  end
end