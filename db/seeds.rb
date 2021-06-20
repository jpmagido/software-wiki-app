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
Property.destroy_all

p "j'ai tout supprimé"

software1 = Software.create!(name: 'SAGE', description: 'Je fais la compta')

concept = Concept.create!(
  name: 'PROJET',
  short_text: 'logiciel slack',
  description: "Un projet est un ensemble d'activités avec un début et une fin oug oug oug..."
)

Property.create!(concept_id: concept.id ,name: 'date de début', description: "La date de début d'un projet est la date à laquelle le projet blablabla.... Cette date détermine généralement la date de début des opérations")
Property.create!(concept_id: concept.id, name: 'propriétaire', description: "Le propriétaire blablabla")
Property.create!(concept_id: concept.id, name: 'date de fin', description: "La date de fin d'un projet est la date à laquelle le projet bloblablo.... Cette date détermine généralement la date de fin des opérations")
Property.create!(concept_id: concept.id, name: 'date des données', description: "La date des données est la date à laquelle les données bloblablo.... Cette date détermine généralement la date des données")

SoftwareConcept.create!(software_id: software1.id, concept_id: concept.id)

p 'Seed done :)'
