class Institute < ActiveRecord::Base
	
	has_attached_file :logo, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/
  	
  	has_attached_file :cover, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/
end
