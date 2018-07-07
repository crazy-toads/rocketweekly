module RocketWeekly
  class Connect
    attr_reader :session

    def initialize
      config = YAML.load_file(File.expand_path('../../../config.yml', __FILE__))
      server = RocketChat::Server.new config['server']
      @session = server.login(config['user'], config['pass'])
    end

    def channels_list
      @session.channels.list(offset: 0, count: 200)
    end

    def channel_history(id)
      @session.channels.history(room: id)
    end
  end
end