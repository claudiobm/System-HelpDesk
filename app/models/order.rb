class Order < ActiveRecord::Base
  belongs_to :order_type
  belongs_to :order_category
  belongs_to :client
  belongs_to :account
  belongs_to :technical
end
