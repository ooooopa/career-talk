class Topic < ApplicationRecord
    include SearchCop
    has_many :comment, dependent: :destroy
    belongs_to :user
    has_many :favorites, dependent: :destroy
    
    validates :topic, presence: true
    validates :title, presence: true, length: { maximum: 255 }
    
    search_scope :search do
      attributes :title, :topic
    end
end
