class Category < ActiveRecord::Base
  has_many :subcategories
  
  validates :slug, uniqueness: true, presence: true,
                   exclusion: {in: %w[signup login]}

  before_validation :generate_slug

  def to_param
    "#{id}-#{slug}".parameterize
  end

  def generate_slug
    self.slug ||= name.parameterize
  end
  
end
