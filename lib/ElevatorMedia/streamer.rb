require 'uri'
require 'net/http'
require 'openssl'
module ElevatorMedia
    class Streamer    
        def self.getContent
                url = URI("https://dad-jokes.p.rapidapi.com/random/joke")

                http = Net::HTTP.new(url.host, url.port)
                http.use_ssl = true
                http.verify_mode = OpenSSL::SSL::VERIFY_NONE

                request = Net::HTTP::Get.new(url)
                request["x-rapidapi-host"] = 'dad-jokes.p.rapidapi.com'
                request["x-rapidapi-key"] = '36fb0db1a6mshe5d13498e58691ap11daaejsn80217e7cbefb'

                response = http.request(request)
                puts response.body


                return response.body

        end
    end
end        