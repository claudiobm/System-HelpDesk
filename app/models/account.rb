class Account < ActiveRecord::Base
  belongs_to :account_department
  
  validates_presence_of :name, :email
  validates_uniqueness_of :email, :case_sensitive => true
  
  scope :actived, :conditions => {:is_actived => true}
end
#Account sao os usuarios que iram efetuar os registros
