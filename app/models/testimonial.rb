class Testimonial < ApplicationRecord
  belongs_to :item
  before_save :check_author

  def check_author
    if self.author.blank?
      self.author = 'Guest'
    end
  end
end
