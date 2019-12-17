module Onfleet
  class OrganizationsContainer < OnfleetObject
    include Onfleet::Actions::Get

    def self.api_url
      '/containers/organizations'
    end
  end

  class TeamsContainer < OnfleetObject
    include Onfleet::Actions::Get

    def self.api_url
      '/containers/teams'
    end
  end

  class WorkersContainer < OnfleetObject
    include Onfleet::Actions::Get

    def self.api_url
      '/containers/workers'
    end
  end
end
