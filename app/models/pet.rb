class Pet < ActiveRecord::Base
  has_one :pettype, primary_key: "pettype_id", foreign_key: "id"
  has_many :appointments, primary_key: "appointment_id", foreign_key: "id"

  validates :name, presence: true
  validates :breed, presence: true
  validates :age, presence: true
  validates :weight, presence: true
  validates :lastvisit, presence: true
end
