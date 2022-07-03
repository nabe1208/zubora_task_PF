class List < ApplicationRecord

  belongs_to :user

  has_many :list_categories ,dependent: :destroy
  # 7/2 中間テーブル(list_caetegories)を通してtagsと関連付ける。
  # この記述でList.tagsの取得が可能。
  has_many :tags, through: :list_categories

  # 買い物リスト:0、要件リスト:1、日常リスト:2
  enum default_list_name: { buy: 0, work: 1, everyday: 2 }

end
