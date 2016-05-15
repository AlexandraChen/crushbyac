class Fill < ActiveRecord::Base
  belongs_to :user
  has_attached_file :img, :styles => { :medium => "450x450>", :thumb => "100x100>"}, :default_url => "no_pic.png"
  validates_attachment_content_type :img, :content_type => /\Aimage\/.*\Z/
  validates_attachment_presence :img
  validates :name, presence: true, uniqueness: true
  validates_inclusion_of :fill_type, in: Choices['fill']
end
