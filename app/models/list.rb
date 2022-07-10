class List < ApplicationRecord
  belongs_to :user

  # ここに追加
  has_many :cards, dependent: :destroy

  validates :title, length: { in: 1..255 }
end
