class Comment < ApplicationRecord
  belongs_to :article
  validates :text, :name, :title, presence: true
end
