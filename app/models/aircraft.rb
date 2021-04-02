class Aircraft < ActiveRecord::Base

    def self.all_roles
        return ['Attacker', 'Bomber', 'Dive-Bomber', 'Fighter', 'Heavy-Bomber']
#         %w(Attacker Bomber Dive\ Bomber Fighter Heavy\ Bomber)
    end

    def self.get_same_country(id)
        country = Aircraft.find(id).country

        return Aircraft.where(country: country)
    end
    
end
