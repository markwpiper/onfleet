module Onfleet
  class Task < OnfleetObject
    include Onfleet::Actions::Create
    include Onfleet::Actions::Save
    include Onfleet::Actions::Update
    include Onfleet::Actions::Get
    include Onfleet::Actions::List
    include Onfleet::Actions::Delete
    include Onfleet::Actions::QueryMetadata

    def self.api_url
      '/tasks'
    end

    def self.complete id, params
      url = "#{self.api_url}/#{id}/complete"
      Onfleet.request(url, :post, params)
      true
    end

  end
end
