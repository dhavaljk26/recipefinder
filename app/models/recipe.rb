
class Recipe
	include HTTParty

    base_uri "http://www.food2fork.com/api"
    default_params key: "f9f75f0383361c95a41bf2995dbefc04"
    format :json

  def self.for term
    get("/search", query: { q: term})["recipes"]
  end

end