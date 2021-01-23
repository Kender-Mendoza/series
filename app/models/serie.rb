class Serie < ApplicationRecord
    belongs_to :prequel, class_name: "Serie", optional: true, dependent: :destroy
    belongs_to :sequel, class_name: "Serie", optional: true

    validates :prequel, uniqueness: true, allow_nil: true
    validates :sequel, uniqueness: true, allow_nil: true
    after_validation :errors_message_related
    after_validation :update_related, if: -> {errors.empty?}
        
    def errors_message_related
        return true if prequel_id.nil? && sequel_id.nil? # si secuela y precuela son iguales

        errors.add :prequel, message: "y sequela no pueden ser iguales." if prequel_id == sequel_id
        
        errors.add :prequel, message: "no puede ser la misma serie" if prequel == self
        errors.add :prequel, message: "no existe" if !prequel_id.nil? && Serie.find_by(id: prequel_id).nil?
        errors.add :prequel, message: "Ya tiene sequela" if self&.prequel&.sequel_id
        
        errors.add :sequel, message: "no puede ser la misma serie" if sequel == self
        errors.add :sequel, message: "no existe" if !sequel_id.nil? && Serie.find_by(id: sequel_id).nil?
        errors.add :sequel, message: "Ya tiene prequela" if self&.sequel&.prequel_id
    end

    def update_related
        unless prequel.nil?
            serie_prequel = prequel
            serie_prequel.sequel = self
            serie_prequel.save(validate: false)
        end 
        
        unless sequel.nil?
            serie_sequel = sequel
            serie_sequel.prequel = self
            serie_sequel.save(validate: false)
        end
    end
end
