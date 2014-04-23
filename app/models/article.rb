class Article < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  def self.mapping
    {
      article: {
        properties: {
          id: {
            type: "long"
          },
          content: {
            type: "string"
          },
          title: {
            type: "string"
          },
          updated_at: {
            format: "dateOptionalTime",
            type: "date"
          },
          price: {
            type: "float"
          },
          trendiness: {
            type: "float"
          },
          published_on: {
            format: "dateOptionalTime",
            type: "date"
          },
          created_at: {
            format: "dateOptionalTime",
            type: "date"
          }
        }
      }
    }

  end

  def self.search(query)
    __elasticsearch__.search(query)
  end

  
end
