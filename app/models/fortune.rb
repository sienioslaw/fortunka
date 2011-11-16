class Fortune < ActiveRecord::Base
	has_many :comments, :dependent => :destroy
	
	# atrybut: quotation
	validates :body, :presence => true
	# validates_presence_of :quotation
	validates_length_of :body, :in => 2..128
	# validates_length_of :quotation, :minimum => 2, :maximum => 128
	validates_uniqueness_of :body, :case_sensitive => false

	# atrybut: source
	

	def self.search(search)
	if search
		where('body LIKE ?', "%#{search}%")
	else
		scoped
	end
	end
	
	 
end
