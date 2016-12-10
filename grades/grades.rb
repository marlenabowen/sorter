class Grade
    def self.get_letter_grade_A(grade)
        if grade >= 90 && grade <= 100
            "A"
        else
            "not A"
        end
    end
    
    def self.get_letter_grade_B(grade)
        if grade >= 80 && grade <= 89
            "B"
        else
            "not B"
        end
    end
end