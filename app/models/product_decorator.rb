Spree::Product.class_eval do
  
  has_many :mp3s, :dependent => :destroy
  after_save :destroy_mp3s, :if => :deleted?
  
  private
  
  # Manually destroy associated Mp3's, because Spree only nullifies Products and never deletes them.
  def destroy_mp3s
    mp3s.destroy
  end

end
