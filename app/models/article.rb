class Article < ActiveRecord::Base
  # title: string
  # content: text
  # summary: text
  # category: Category
  # author: User

  validates :category, presence: true
  validates :author, presence: true
  validates :title, presence: true
  validates :content, presence: true

  belongs_to :category
  belongs_to :author, class_name: "User"

end
