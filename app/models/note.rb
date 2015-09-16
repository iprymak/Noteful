class Note < ActiveRecord::Base
  
  def preview
    self.content.slice(0..20) << "...(look for more words)"
  end
  
  belongs_to :user

  validates :title, presence: true
  validates :content, presence: true

  scope :sorted, lambda { order('created_at DESC') }

end

