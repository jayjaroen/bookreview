class BookSerializer
  include JSONAPI::Serializer
  attributes :name, :author, :image_url, :slug

  has_many :reviews
end
