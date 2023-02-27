class List < ApplicationRecord

  scope :status, -> (stat) { where(status: stat) }

  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  validates :name, presence: true
  validates :name, uniqueness: true
  has_one_attached :photo

  STATUSES = %w[pending approved rejected].freeze

  def approved?
    status == 'approved'
  end
end
