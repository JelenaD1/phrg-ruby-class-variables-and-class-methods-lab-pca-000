class Song

    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count = @@count += 1
       
        @@genres << @genre
        @@artists << @artist
 
    end 
   

    def self.count
     @@count
        
     end 

     def self.artists
        @@artists.uniq
     end 

     def self.genres
        @@genres.uniq
     end

     def self.genre_count
        output = {}
        self.genres.each do |genre|
            # binding.pry
            song_count = @@genres.count(genre)
            output[genre] = song_count
        end
        output
    end

    def self.artist_count
        output = {}
        self.artists.each do |artist|
            # binding.pry
            artist_count = @@artists.count(artist)
            output[artist] = artist_count
        end
        output
    end






end
