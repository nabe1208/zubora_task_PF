class Tag < ApplicationRecord

  has_many :list_categories, dependent: :destroy
  has_many :lists, through: :list_categories
# optional: true で外部キーのnilを許可
  belongs_to :colender, optional: true

  validates :tag_name, presence: true
  # 変数を定義-タグの登録個数制限
  validate :check_number_of_tags

  def check_number_of_tags
    if Tag.count > 10
      errors.add(:list_category, '登録できる個数は10個までです。')
    end
  end
end

