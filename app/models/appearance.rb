class Appearance < ApplicationRecord
  belongs_to :episode
  belongs_to :guest
  validates :episode_id, numericality: { greater_than: 0}
  validates :guest_id, numericality: { greater_than: 0}
  validates :rating, presence: true, inclusion: {in: [1,2,3,4,5]}
end
