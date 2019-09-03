class Phone < ApplicationRecord
	belongs_to :user
	
	START_NO = 1111111111
	END_NO =  9999999999
	validates :number, presence: {:message => 'Invalid Number'},
										 numericality: true,
										 uniqueness: true
	
	validates_inclusion_of :number, :in => START_NO..END_NO
end
