# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

10.times do |i|
    Patient.create!(name: "Patient#{i+1}", email: "patient_#{i+1}@gmail.com")   
end

10.times do |i|
    Physician.create!(name: "Physician#{i+1}", email: "physician_#{i+1}@gmail.com")
end

10.times do |i|
    Industry.create!(name: "Industry#{i+1}", email: "industry_#{i+1}@gmail.com")
end

10.times do |i|
    Sector.create!(name: "Sector#{i+1}")
end

5.times do |i|
    Appointment.create(patient_id: Patient.find(i+1).id,physician_id: Physician.find(i+1).id,appointment_date: Time.now)
    IndustriesSector.create(industry_id: Industry.find(i+1).id,sector_id: Sector.find(i+1).id)
end