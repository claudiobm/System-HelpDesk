class TechnocalClientAddress < ActiveRecord::Base
  belongs_to :technical
  belongs_to :client_address
end
