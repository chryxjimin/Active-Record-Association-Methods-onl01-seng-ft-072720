class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    Genre.all.map {|g| g.name}.first
  end

  def drake_made_this
    self.artist = Artist.find_or_create_by(name: "Drake")
    #binding.pry
  end
end
