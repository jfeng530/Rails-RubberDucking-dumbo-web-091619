class Duck < ApplicationRecord
    belongs_to :student
    # validate :name_check, :des_check, :stu_check 
    validates :name, :description, :student_id, presence: :true

    private 

    def name_check
        if self.name == ""
            errors.add(:name, "Name must exist")
        end
    end 

    def des_check
        if self.description == ""
            errors.add(:description, "Must have description")
        end 
    end 

    def stu_check
        if self.student_id == nil
            errors.add(:student_id, "Must have student")
        end 
    end 
end
