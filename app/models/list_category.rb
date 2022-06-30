class ListCategory < ApplicationRecord
  has_many :tags ,dependent: :destroy
  belongs_to :list
end
