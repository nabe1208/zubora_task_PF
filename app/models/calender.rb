class Calender < ApplicationRecord
  has_many :lists ,dependent: :destroy
  has_many :tags ,dependent: :destroy
end
