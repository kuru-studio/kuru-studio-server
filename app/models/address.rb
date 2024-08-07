class Address < ApplicationRecord
  include ActsAsTenant

  validates :name, presence: true

  belongs_to :user, class_name: 'User', foreign_key: :user_id, optional: false
end
