class ListCategory < ApplicationRecord

  belongs_to :list
  # 7/2 変更のち確認 複数のタグに所有されるのでbelongs_to
  belongs_to :tag

  validates :list_id, presence: true
  validates :tag_id, presence: true

end
