module Validators
  class VersionValidator < ActiveModel::Validator
    def validate(record)
      if not record.class.where(version: record.version, software_identity: record.software_identity).empty?
        record.errors.add :version, 'This version ever exist for the same software!' 
      end
    end
  end
end
