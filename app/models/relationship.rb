class Relationship < ApplicationRecord
  # 相手
  belongs_to :follower, class_name: "User"

  # 自分
  belongs_to :follow, class_name: "User"
end
