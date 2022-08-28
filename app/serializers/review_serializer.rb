class ReviewSerializer
  include JSONAPI::Serializer
  attributes :title, :score, :book_id
end
