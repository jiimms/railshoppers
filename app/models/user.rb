class User < ApplicationRecord
	validates_presence_of :name
	has_attached_file :avatar, styles: {medium: "300x300>", thumb: "100x100>" }, default_url: "missing.jpg"
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
