require_relative '../config/environment.rb'

lion_king = Cd.new("Lion King", "Various Artists")
thriller = Cd.new("Triller", "Michael Jackson")
lemonade = Cd.new("Lemonade", "Beyonce")
four = Cd.new("Four", "Beyonce")

blockbuster = Store.new("Blockbuster")
sam_goodie = Store.new("Sam Goodie")
barnes_and_noble = Store.new("Barnes and Noble")

blockbuster_and_thriller = CdStore.new(blockbuster, thriller)
blockbuster_and_lion_king = CdStore.new(blockbuster, lion_king)



binding.pry
