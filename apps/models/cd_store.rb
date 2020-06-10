class CdStore

    attr_reader :store, :cd

    @@all = []

    def initialize(store, cd)
        @store = store
        @cd = cd
        @@all << self
    end

    def self.all
        return @@all
    end
end