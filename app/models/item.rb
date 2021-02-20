class Item < ApplicationRecord
  with_options presence: true do
    
  end
  belongs_to :user
end
