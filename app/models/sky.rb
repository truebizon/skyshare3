class Sky < ActiveRecord::Base
  belongs_to :user
  has_many :reviews                 #reviewsテーブルとのアソシエーション
end
