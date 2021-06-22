# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

SoftwareConcept.destroy_all
Property.destroy_all
Concept.destroy_all
Software.destroy_all

p "j'ai tout supprimé"

@software1 = Software.create!(name: 'SAGE', description: 'Je fais la compta')

def create_project_concept

  project_concept = Concept.create!(
    name: 'PROJET',
    short_text: 'Ceci est un projet de qualité',
    description: "Un projet est un ensemble d'activités avec un début et une fin oug oug oug..."
  )

  Property.create!(concept_id: project_concept.id, name: 'date de début', description: "La date de début d'un projet est la date à laquelle le projet blablabla.... Cette date détermine généralement la date de début des opérations")
  Property.create!(concept_id: project_concept.id, name: 'propriétaire', description: "Le propriétaire blablabla")
  Property.create!(concept_id: project_concept.id, name: 'date de fin', description: "La date de fin d'un projet est la date à laquelle le projet bloblablo.... Cette date détermine généralement la date de fin des opérations")
  Property.create!(concept_id: project_concept.id, name: 'date des données', description: "La date des données est la date à laquelle les données bloblablo.... Cette date détermine généralement la date des données")

  SoftwareConcept.create!(software_id: @software1.id, concept_id: project_concept.id)

  p 'Project Concept created '
end

def create_activity_concept

  actitivy_concept = Concept.create!(
    name: 'ACTIVITY',
    short_text: 'Ceci est une activité de qualité',
    description: "Une activité englobe de nombreux facteurs déterminant pour le logiciel ici présent oug oug oug..."
  )

  Property.create!(concept_id: actitivy_concept.id, name: 'nature', description: "La nature détermine l'existence blablabla")
  Property.create!(concept_id: actitivy_concept.id, name: 'date de début', description: FFaker::Lorem.sentence)
  Property.create!(concept_id: actitivy_concept.id, name: 'date de fin', description: FFaker::Lorem.sentence)
  Property.create!(concept_id: actitivy_concept.id, name: 'date des données', description: FFaker::Lorem.sentence)

  SoftwareConcept.create!(software_id: @software1.id, concept_id: actitivy_concept.id)

  p 'Activity Concept created '
end

def create_resource_concept

  resource_concept = Concept.create!(
    name: 'RESSOURCE',
    short_text: 'Ceci est une ressource de qualité',
    description: "Une ressource est utilisée par l'organisation pour subvenir aux besoins communs oug oug oug..."
  )

  Property.create!(concept_id: resource_concept.id, name: 'nature', description: "La nature détermine l'existence blablabla")
  Property.create!(concept_id: resource_concept.id, name: 'qualité', description: FFaker::Lorem.sentence)
  Property.create!(concept_id: resource_concept.id, name: 'organisation', description: FFaker::Lorem.sentence)
  Property.create!(concept_id: resource_concept.id, name: 'date des données', description: FFaker::Lorem.sentence)

  SoftwareConcept.create!(software_id: @software1.id, concept_id: resource_concept.id)

  p 'Resources Concept created '
end

def create_affectation_concept

  affectation_concept = Concept.create!(
    name: 'AFFECTATION',
    short_text: 'Ceci est une affectation de qualité',
    description: "Une affectation est utilisée par l'organisation pour subvenir aux besoins communs oug oug oug..."
  )

  Property.create!(concept_id: affectation_concept.id, name: 'nature', description: "La nature détermine l'existence blablabla")
  Property.create!(concept_id: affectation_concept.id, name: 'date de démarrage', description: FFaker::Lorem.sentence)
  Property.create!(concept_id: affectation_concept.id, name: 'organisation', description: FFaker::Lorem.sentence)
  Property.create!(concept_id: affectation_concept.id, name: 'date de fin', description: FFaker::Lorem.sentence)

  SoftwareConcept.create!(software_id: @software1.id, concept_id: affectation_concept.id)

  p 'Affectation Concept created '
end

create_project_concept
create_activity_concept
create_resource_concept
create_affectation_concept

p 'Seed done :)'
