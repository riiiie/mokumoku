class Relationship < ApplicationRecord
  # 誰かをフォローした人
  belongs_to :follower, class_name: "User"

  # 誰かにフォローされた人
  belongs_to :follow, class_name: "User"
end
