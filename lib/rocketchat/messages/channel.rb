module RocketChat
  module Messages
    class Channel < Room
      def history(room: nil, since: nil, count: 10)
        response = session.request_json(
          '/api/v1/channels.history',
          body: {
            roomId: room,
            oldest: since,
            count: count
          })
        response['messages'] if response['success']
      end
    end
  end
end