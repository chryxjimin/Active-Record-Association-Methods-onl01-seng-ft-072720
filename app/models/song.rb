class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    Genre.all.map {|g| g.name}.first
  end
end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    # Drake doesn't exist in the database as an artist yet, so you'll have to create a record
    # Hint: you won't want to create an artist record every time this method is called, only if an Drake is *not found*

  end

  # it '#drake_made_this' do
  #   expect(@song.artist).to eq(nil)
  #
  #   @song.drake_made_this
  #
  #   expect(@song.artist).to be_a(Artist)
  #   expect(@song.artist.name).to eq("Drake")
  #
  #   expect(Artist.all.length).to eq(1)
  #
  #   kiki = Song.create(name: 'In My Feelings')
  #
  #   kiki.drake_made_this
  #
  #   expect(kiki.artist).to be_a(Artist)
  #   expect(kiki.artist.name).to eq("Drake")
  #
  #   expect(Artist.all.length).to eq(1), 'Create only one Drake artist record in the database, even if method is run multiple times'
  #
