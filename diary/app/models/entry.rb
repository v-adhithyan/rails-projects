class Entry < ApplicationRecord
  validates :date, presence: true, length: {maximum: 10}
end
