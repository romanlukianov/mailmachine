class History < ApplicationRecord
 belongs_to :user

 validates :email_title, presence: true
 validates :email_id, presence: true
 validates :queued, presence: true
 validates :recipients_amount, presence: true
 
end
