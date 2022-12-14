# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

doctors = []



5.times do
    City.create!(name: Faker::Address.city)
end

5.times do
    Specialty.create!(name: Faker::Superhero.power)
end

10.times do
    doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code, city_id: rand(1..5))
    doctors << doctor
end

10.times do |x|
    DoctorSpecialty.create!(doctor_id: doctors[x].id, specialty_id: rand(1..5))
end

20.times do
    Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: rand(1..5))
end

30.times do
    Appointment.create!(date: Faker::Date.in_date_period, patient_id: rand(1..20), doctor_id: rand(1..10), city_id: rand(1..5))
end