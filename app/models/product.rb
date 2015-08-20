class Product < ActiveRecord::Base
	belongs_to :user
  validates :title, presence: true, length: {maximum: 40}
  validates :description, presence: true
  validates :user, presence: true
  validates :price, presence: true
  validates :size, presence: true
  has_attached_file :img,
      :styles => { 
        :medium => "336x336>",
        :thumb => "100x100>"
      },
       :default_url => "no_pic.png"
  validates_attachment_content_type :img, :content_type => /\Aimage\/.*\Z/
  validates_attachment_presence :img


  def self.search(query)
    where("lower(title) LIKE ? OR lower(tags) LIKE ? OR lower(description) LIKE ? OR lower(size) like ?", 
      "%#{query}%".downcase, "%#{query}%".downcase, "%#{query}%".downcase, "%#{query}%".downcase)
  end
end
