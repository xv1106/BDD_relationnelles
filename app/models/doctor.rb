class Doctor < ApplicationRecord
  belongs_to :city
  has_many :appointments
  has_many :patients, through: