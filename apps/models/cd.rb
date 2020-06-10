class Cd

    attr_accessor :cd_name, :artist_name

    @@all = []

    def initialize(cd_name, artist_name)
        @cd_name = cd_name
        @artist_name = artist_name
        @@all << self
    end

    def self.all
        return @@all
    end

    def find_by_store
        # Grab all the stores that have the cd
        by_store = CdStore.all.select do |cdstore|
            cdstore.cd == self
        end
        return by_store.map do |cdstore|
            cdstore.store
        end
    end

    def self.find_by_artist_name(artist_name)
        artist = self.all.select do |cd|
            cd.artist_name == artist_name
        end
        return artist.map do |cd|
            cd.cd_name
        end
    end

end