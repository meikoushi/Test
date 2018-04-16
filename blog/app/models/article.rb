class Article < ApplicationRecord
    has_many :comments
    #一つのArticleには複数のcommentsがつく。　
    validates :title, presence:true,
    length: {minimum:5}
    #データに対してタイトルは空白もしくは5文字以下だとfalseで返す
end
