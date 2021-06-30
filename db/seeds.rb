require 'ffaker'

SoftwareConcept.destroy_all
Interaction.destroy_all
Property.destroy_all
Concept.destroy_all
Software.destroy_all
Role.destroy_all
Procedure.destroy_all

p "j'ai tout supprimé"

@software1 = Software.create!(name: 'SAGE', description: 'Je fais la compta')
@project_manager = Role.create!(name: 'chef de projet', description: 'le chef de projet est garant du bon déroulement des opérations')
@planificator = Role.create!(name: 'planificateur', description: 'le plannification organise le déroulement du projet')

def create_project_concept

  project_concept = Concept.create!(
    name: 'PROJET',
    short_text: 'Ceci est un projet de qualité',
    description: "Un projet est un ensemble d'activités avec un début et une fin oug oug oug..."
  )

  start_date_property = Property.create!(concept_id: project_concept.id, name: 'date de début', description: "La date de début d'un projet est la date à laquelle le projet blablabla.... Cette date détermine généralement la date de début des opérations")
  Interaction.create!(
    name: 2,
    title: "modifier la data de début d'un projet",
    role: @project_manager,
    description: "attention, la modification de la date de début de projet peut avoir un impact sur les autres activités",
    target: start_date_property)

  Property.create!(concept_id: project_concept.id, name: 'propriétaire', description: "Le propriétaire blablabla")
  Property.create!(concept_id: project_concept.id, name: 'date de fin', description: "La date de fin d'un projet est la date à laquelle le projet bloblablo.... Cette date détermine généralement la date de fin des opérations")
  Property.create!(concept_id: project_concept.id, name: 'date des données', description: "La date des données est la date à laquelle les données bloblablo.... Cette date détermine généralement la date des données")

  create_interaction = Interaction.create!(
    name: 0,
    title: 'créer un nouveau projet',
    role: @project_manager,
    description: "la création d'un nouveau projet a pour effet de générer un nouvel identifiant",
    target: project_concept)

  delete_interaction = Interaction.create!(
    name: 1,
    title: 'supprimer un projet existant',
    role: @planificator,
    description: "la suppression d'un nouveau projet a pour effet de supprimer les activités associées",
    target: project_concept)

  edit_interaction = Interaction.create!(
    name: 2,
    title: 'modifier un projet existant',
    role: @project_manager,
    description: "la modification d'un nouveau projet a pour effet de modifier les activités associées",
    target: project_concept)

  [create_interaction, delete_interaction, edit_interaction].each do |interaction|
    rand(1..5).times do
      Procedure.create!(
        name: FFaker::Lorem.word,
        description: FFaker::Book.description,
        actions: FFaker::Lorem.sentence,
        interaction_id: interaction.id
      )
    end
  end

  p "Procédures crées"

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
