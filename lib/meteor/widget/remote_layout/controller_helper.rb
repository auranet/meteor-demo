require 'net/http'
require 'net/https'
require 'open-uri'
require 'hpricot'
require 'ruby-debug'

module Meteor
  module Widget
    module RemoteLayout
      module ControllerHelper
        
        def content(url)
          response = Net::HTTP.get_response(URI::parse(url))
          if response
            response_code = response.code
            response_code = "999" if response.body =~ /\AERROR:/
            if response_code == "200"
              return absolutize(url, response.body)
            else
              return "Made request to #{url}, got response code #{response_code}" + (response_code == "999" ? "\n#{response.body}" : "")
            end
          else
            return "Error getting response for URL #{url}"
          end
        end
        
        def absolutize(url, body)
          document = Hpricot(body)
          (document/"img").each do |img|
            debugger
            source = img.attributes['src']
            if source !~ /\Ahttp:\/\//
              img.attributes['src'] = "#{url}" + source
              p img
            end
          end
          document.to_s
        end
        
      end
    end
  end
end