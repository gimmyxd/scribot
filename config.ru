$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'dotenv'
Dotenv.load

require 'scribot'
require 'web'

Thread.abort_on_exception = true

Thread.new do
  begin
    ScriBot::Bot.run
  rescue StandardError => e
    STDERR.puts "ERROR: #{e}"
    STDERR.puts e.backtrace
    raise e
  end
end

run ScriBot::Web
