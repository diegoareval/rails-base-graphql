require 'rest-client'

module WebServices
    module HTTP
        class Space_X
            def self.fetch_rockets
                response = RestClient.get 'https://api.spacexdata.com/v4/rockets'
                json = JSON.parse response.body
                serialize_info(json)
            end

            def self.serialize_info(info)
                serialized_items = []
                info.each do |item|
                    serialized_items.push({
                        id: item["id"],
                        name: item["name"],
                        mass: "#{item["mass"]["lb"]}lbs",
                        height: "#{item["height"]["feet"]}ft",
                        diameter: "#{item["diameter"]["feet"]}ft"
                     })
                  end
                serialized_items
            end
        end
    end
end