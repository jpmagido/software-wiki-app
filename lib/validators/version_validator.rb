module Validators
  class VersionValidator < ActiveModel::Validator
    def validate(record)
      version_uniq?(record)
      format_correct?(record)
    end

    private

    def version_uniq?(record)
      unless record.class.where(version: record.version, software_identity: record.software_identity).empty?
        record.errors.add :version, 'This version ever exist for the same software!'
      end
    end

    def format_correct?(record)
      unless record.version&.match '^[0-9][0-9.]*$'
        record.errors.add :version, 'Version must be present with valid format: only digits and dots'
      end
    end
  end
end
  