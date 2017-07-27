class Review < ActiveRecord::Base
  belongs_to :sky            #skiesテーブルとのアソシエーション
  belongs_to :user           #usersテーブルとのアソシエーション
end
