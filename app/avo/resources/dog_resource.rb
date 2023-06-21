class DogResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  
  field :id, as: :id
  field :name, as: :text
  field :person, as: :belongs_to
end
