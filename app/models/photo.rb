class Photo < ActiveRecord::Base
  belongs_to :user
  has_many :likes
  has_many :comments

   has_attached_file :image, :styles => { :large => "1000x1000>", :medium => "500x500>", :thumb => "200x200>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
