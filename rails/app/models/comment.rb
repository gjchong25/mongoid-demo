class Comment
  include Mongoid::Document
  field :name, type: String
  field :message, type: String

  belongs_to :post

  def avatar_url
    Avatar.where(name: name).first&.url
  end
end
