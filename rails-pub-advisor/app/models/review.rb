class Review < ApplicationRecord
  belongs_to :pub
  validates :stars, inclusion: { in: [1, 2, 3, 4, 5] }
end
