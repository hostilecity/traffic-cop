# frozen_string_literal: true

require 'socket'

# Accept http requests
class Server
  class << self
    # Server.run([port]) => tcpserver
    #
    # Creates a new server socket bound to _port_.
    #
    #   Server.run do |message, sender, flags|
    #     puts message.inspect
    #     "HTTP/1.0 200 OK"
    #   end
    #
    def run(port = 3000, &block)
      server = TCPServer.new port
      loop do
        Thread.start(server.accept) do |client|
          begin
            client.puts block.call(client.recvmsg)
          ensure
            client.close
          end
        end
      end
    end
  end
end
