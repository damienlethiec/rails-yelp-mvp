Restaurant.destroy_all
restaurants_attributes = [
  {
    name:         "Tchai",
    address:      "Rue Oberkampf",
    phone_number: "0611111111",
    category:     "japanese"
  },
  {
    name:         "Bocuse",
    address:      "Lyon",
    phone_number: "0622222222",
    category:     "french"
  },
  {
    name:         "Frichti",
    address:      "Paris",
    phone_number: "0633333333",
    category:     "french"
  },
  {
    name:         "Crèperie",
    address:      "Bretagne",
    phone_number: "0644444444",
    category:     "french"
  },
  {
    name:         "Pizzeria",
    address:      "Italie",
    phone_number: "0655555555",
    category:     "italian"
  }
]
restaurants_attributes.each { |params| Restaurant.create!(params) }
