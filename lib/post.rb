require 'rest_client'
require 'json'

class Post

  def comparator(hmap)
    jdata = hmap.to_json
    response = RestClient.post 'http://localhost:4567/api/1.0/rule/comparator', jdata, :content_type => :'application/json'
    puts response
  end

  def observer(hmap)
    jdata = hmap.to_json
    response = RestClient.post 'http://localhost:4567/api/1.0/rule/observer', jdata, :content_type => :'application/json'
    puts response
  end

end
