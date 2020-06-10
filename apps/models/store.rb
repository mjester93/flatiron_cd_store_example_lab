class Store

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        return @@all
    end

    def get_cds
        cdstore_select = CdStore.all.select {|cdstore| cdstore.store == self}
        return cdstore_select.map {|cdstore| cdstore.cd}
    end

end