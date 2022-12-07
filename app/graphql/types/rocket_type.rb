module Types
    class RocketType < BaseObject
      field :id, ID, null: false
      field :name, String, null: false
      field :mass, String, null: false
      field :height, String, null: false
      field :diameter, String, null: false
    end
  end
  