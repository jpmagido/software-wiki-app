# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

SoftwareConcept.destroy_all
Software.destroy_all
Concept.destroy_all

p "j'ai tout supprimé"

software1 = Software.create!(name: '', description: '')

concept1 = Concept.create!(name: '', short_text: '', description: '')
concept2 = Concept.create!(name: '', short_text: '', description: '')


SoftwareConcept.create!(software_id: software1.id, concept_id: concept1.id)
SoftwareConcept.create!(software_id: software1.id, concept_id: concept2.id)

p 'Seed done :)'
