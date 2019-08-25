# frozen_string_literal: true

module ScriBot
  module Commands
    class Test < SlackRubyBot::Commands::Base
      command 'test' do |client, data, _match|
        client.say(channel: data.channel, text: '4')
      end
    end
  end
end
