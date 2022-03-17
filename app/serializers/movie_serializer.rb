class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :length, :director, :description, :poster_url, :category, :discount, :female_director, :summary


  #custom methods
  def summary
    # byebug
    #byebug instance: drop self
    "#{self.object.title} - #{self.object.description[0..49]}..."
  end
end
