class Segment < ActiveRecord::Base

  validates_uniqueness_of :key, :scope => :locale
  validates_presence_of :content, :locale
  before_validation :set_default_locale
  
  private
  
  def set_default_locale
    return unless self.locale.nil? || self.locale.blank?
    self.locale = I18n.default_locale
  end
  
end
