class Contact < ApplicationRecord
  validates :name, :email, :body, presence: true
end
