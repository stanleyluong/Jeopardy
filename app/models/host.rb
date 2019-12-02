class Host < ApplicationRecord
    has_many :teams
    has_many :rounds_hosts
    has_many :rounds, through: :rounds_hosts
    has_secure_password
    #needs additional relationships
end
