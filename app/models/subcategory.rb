class Subcategory < ActiveRecord::Base
    belongs_to :category
  
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
