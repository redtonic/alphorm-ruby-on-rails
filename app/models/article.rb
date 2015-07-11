class Article < ActiveRecord::Base
  # title: string
  # content: text
  # category: Category
  # author: User

  belongs_to :category
  belongs_to :author, class_name: "User"
end
