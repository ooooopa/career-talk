class Topic < ApplicationRecord
    has_many :message, dependent: :destroy
    belongs_to :user
    has_many :favorites, dependent: :destroy
    
    validates :topic, presence: true
    validates :title, presence: true, length: { maximum: 255 }
end
