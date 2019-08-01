# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
 Docteur.destroy_all
 Patient.destroy_all
 Appointment.destroy_all
 Specialty.destroy_all
 City.destroy_all
 Competence.destroy_all

 	docteurs_list = [ ]
	patients_list = [ ]
	cities_list = [ ]
	specialties_list = [ ]

100.times do 
	city = City.create(name: Faker::Address.city)
	cities_list << city 
	
	docteur = Docteur.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code, city: cities_list.sample)
	docteurs_list << docteur
	
	patient = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: cities_list.sample)
	patients_list << patient

	specialty = Specialty.create(name: Faker::Address.street_name)
	specialties_list << specialty

	competence = Competence.create(name: Faker::Job.field, docteur: docteurs_list.sample, specialty: specialties_list.sample)
	
	Appointment.create(date: Faker::Date.forward(days: 23), patient: patients_list.sample, docteur: docteurs_list.sample, city: cities_list.sample)
end