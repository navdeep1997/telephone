class User < ApplicationRecord
	has_many :phones
	
	def allocate
		assign_number
        while @old_num.present?
        	assign_number
        end
        self.phones.create!(number: @random_num)
	end

	def allocate_fancy_number(number)
		assigned = Phone.find_by(number: number)
		if assigned.blank?
			@random_num = number
		else
			assign_number
	        while @old_num.present?
	        	assign_number
	        end
		end
		self.phones.create!(number: @random_num)
	end

	def assign_number
		@random_num = rand(Phone::START_NO..Phone::END_NO)
		@old_num = Phone.find_by(number: @random_num)
	end
end
