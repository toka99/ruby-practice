class Article < ApplicationRecord
    
    def active_model_serializer
        FancyPostSerializer
      end
    belongs_to :user
    has_many :comments, dependent: :destroy
    validates :title, presence: true,
                      length: { minimum: 5 }

    validates :text, presence: true,
                      length: { minimum: 10 }

end
