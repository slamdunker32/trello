class Card < ApplicationRecord
  belongs_to :list

  # ==========ここから追加==========
  validates :title, length: { in: 1..255 }
  validates :memo,  length: { maximum: 1000 }
  # ==========ここまで追加==========
end
