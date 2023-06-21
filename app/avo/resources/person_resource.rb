class PersonResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  
  # NOTE: This might look weird, but I follow this pattern to be easy to understand what is in each view
  with_options only_on: :index do
    field :id, as: :id
    field :name, as: :text
    field :dogs, as: :tags do |model, resource, view|
      model.dogs.pluck(:name)
    end
  end

  with_options only_on: :show do
    field :id, as: :id
    field :name, as: :text
    field :dogs, as: :has_many
  end

  with_options only_on: :forms do
    field :id, as: :id
    field :name, as: :text
    field :dogs, as: :has_many
  end
end
