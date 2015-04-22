class Pillar < ActiveRecord::Base
	has_many :releases, dependent: :destroy
	validates :name, presence: true, uniqueness: true
end
