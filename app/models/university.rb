class University < ActiveRecord::Base
	validates  :subject, presence: true
	validates :firstname, :lastname, length: {in: 3..30}
	#validates :email, :uniqueness => true
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
	#validates :age, numericality: true
	before_save :fullname
	def fullname
		full_name = firstname+ " " + lastname
	end

end
