class Trip < ApplicationRecord

  has_many :comments, :dependent => :destroy
  has_many :users, through: :comments
  # validates :water_type, presence: true
  # validates :name, presence: true

  validates :name, presence: true
  accepts_nested_attributes_for :comments, allow_destroy: true
end





  def self.get_image
    Trip.all.each do |trip|
        if trip.water_type === 'bay'
          @image = 'https://images.unsplash.com/photo-1478029038552-886ff55b44d0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
        elsif trip.water_type === 'lake'
          @image = 'https://images.unsplash.com/photo-1446717157973-03f219469f59?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
        elsif trip.water_type === 'ocean'
          @image = 'https://images.unsplash.com/photo-1542683549-cf229d5ea6f8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
        elsif trip.water_type === 'river'
          @image = 'https://images.unsplash.com/photo-1459524472745-8aa28d2d2a6b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
        end
        trip.update(image: @image)
      end
    end
  end
