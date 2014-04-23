require 'elasticsearch/rails/tasks/import'

namespace :es do
  task 'create_w_mapping' => :environment do
    Article.__elasticsearch__.client.indices.create \
      index: Article.index_name,
      body: { settings: Article.settings.to_hash, mappings: Article.mapping }
  end
end


