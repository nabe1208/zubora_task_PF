class List < ApplicationRecord
  has_many :list_categories ,dependent: :destroy
  belongs_to :user
end
