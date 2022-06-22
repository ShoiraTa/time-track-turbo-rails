class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :activities
  has_one_attached :image 
  
  def image_thumbnail 
    image.variant.resize('150X150!').processed
  end

  def to_s
    name
  end

  def getName
    self.name.split(' ')[0]
  end
  def lastName
    self.name.split(' ')[1]
  end

end