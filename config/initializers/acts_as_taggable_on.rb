ActsAsTaggableOn::Tag.class_eval do
  extend FriendlyId

  friendly_id :name, use: :slugged

  def should_generate_new_friendly_id?
    self.slug.nil?
  end
end