class Comment < ApplicationRecord
  belongs_to :article
  #belongs_to  つまりコメントと記事は一対一が基本
end
