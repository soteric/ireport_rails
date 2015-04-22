class Release < ActiveRecord::Base
  belongs_to :pillar
  validates_uniqueness_of :name, :scope_id
  validates_presence_of :name, :scope_id, :pillar_id, :fullname
end