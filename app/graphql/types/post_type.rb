module Types
  class PostType < Types::BaseObject
    field :id, String, null: true
    field :content, String, null: true
  end
end