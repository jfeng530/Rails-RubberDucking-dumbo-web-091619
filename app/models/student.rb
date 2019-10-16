class Student < ApplicationRecord
    has_many :ducks, dependent: :destroy
    # validate :name, :mod
    validate :name_check
    # validate :mod_check

    private

    # def mod_check
    #     if self.mod == nil || self.mod > 5 || self.mod < 1
    #       errors.add(:mod, "Mod must be 1-5")
    #     end
    # end

    def name_check
        if self.name == ""
            errors.add(:name)
        end
    end 
    
end
