require 'ElevatorMedia/streamer'

describe "get_content" , type: :request do
    context 'if the api is called' do
        let(:call_endpoint) {get('lib/streamer.rb')}
        it 'reports success' do
            
            expect(ElevatorMedia::Streamer.getContent).to include('{"success":true,')
        end
    end
end

describe "get_content" , type: :request do
    context 'when a joke is requested' do
        let(:call_endpoint) {get('lib/streamer.rb')}
        it 'returns the block of the request' do
            expect(ElevatorMedia::Streamer.getContent).to be_a_kind_of(String)
          end
    end
end
describe "get_content" , type: :request do
    context 'verify if ' do
        let(:call_endpoint) {get('lib/streamer.rb')}
        it 'the api key is still valid' do
            
            expect(ElevatorMedia::Streamer.getContent).not_to include('exceeded the DAILY quota')
        end
    end
end
