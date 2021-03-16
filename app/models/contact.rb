class Contact < ApplicationRecord

  belongs_to :parent_user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :group

  with_options presence: true do
    validates :image
    validates :group_id
    validates :last_name_c_j
    validates :first_name_c_j
    validates :last_name_c_k
    validates :first_name_c_k
  end

end
