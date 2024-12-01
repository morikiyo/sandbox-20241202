class Memo < ApplicationRecord
  validates :body, presence: true
end
