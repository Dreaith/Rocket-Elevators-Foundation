class DadjokeController < ApplicationController
    def get_dad_jokes
        url = URI("https://dad-jokes.p.rapidapi.com/random/joke")

        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE

        request = Net::HTTP::Get.new(url)
        request["x-rapidapi-host"] = 'dad-jokes.p.rapidapi.com'
        request["x-rapidapi-key"] = '159acabce8msh2b562a281291436p12513fjsnaa2b0da87ce8'

        response = http.request(request)
        puts response.read_body
        
        send_data(response,
            :filename => "streamer.rb",
            :type => "application/json")
    end
end