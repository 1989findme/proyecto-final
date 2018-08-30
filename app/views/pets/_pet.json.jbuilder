json.extract! pet, :id, :photo, :name, :specie, :breed, :municipal_record, :vaccines, :sex, :size, :age, :created_at, :updated_at
json.url pet_url(pet, format: :json)
