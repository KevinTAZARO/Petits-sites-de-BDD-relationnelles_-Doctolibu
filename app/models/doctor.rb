class Doctor < ApplicationRecord
    belongs_to :city
    has_many :doctor_specialties
    has_many :appointments
    has_many :specialties, through: :doctor_specialties
    has_many :patients, through: :appointments
end