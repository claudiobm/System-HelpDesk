class Account < ActiveRecord::Base
  belongs_to :account_department
  
  scope :actived, :conditions => {:is_actived => true}
end
#Account sao os usuarios que iram efetuar os registros
