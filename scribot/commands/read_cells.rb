# frozen_string_literal: true

require 'scribot/lib/google_sheets'
require 'pry-byebug'

module ScriBot
  module Commands
    class ReadCells < SlackRubyBot::Commands::Base
      command 'read_cells' do |client, data, _match|
        client.say(
          channel: data.channel,
          text: ScriBot::Lib::GoogleSheets.read_cells
        )
      end
    end
  end
end
