class Tag < ApplicationRecord

# optional: true で外部キーのnilを許可
  belongs_to :list_category, optional: true
  belongs_to :colender, optional: true

  validates :tag_name, presence: true

end
