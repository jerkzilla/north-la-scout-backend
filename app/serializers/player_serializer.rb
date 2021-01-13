class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :school, :year, :scout, :video_link
end
