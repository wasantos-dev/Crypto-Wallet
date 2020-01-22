# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

spinner = TTY::Spinner.new("[:spinner] Criando Moedas")	
spinner.auto_spin 

coins = [
					{
						description: "Bitcoin",
						acronym: "BTC",
						url_image: "https://imagepng.org/wp-content/uploads/2017/06/moeda-bitcoin-coin.png"
					},
					{
						description: "Ethereum",
						acronym: "ETH",
						url_image: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/ETHEREUM-YOUTUBE-PROFILE-PIC.png/600px-ETHEREUM-YOUTUBE-PROFILE-PIC.png"
					},
					{
						description: "Dash",
						acronym: "DASH",
						url_image: "https://images.cointelegraph.com/images/240_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS9zdG9yYWdlL3VwbG9hZHMvdmlldy82YzlhZTM1NGQwY2E4OTdlNTU1OThlZTZhOGJmM2UxMC5wbmc=.png"
					}
				]

coins.each do |coin|
	Coin.find_or_create_by!(coin)
end

spinner.success("(Concluído com Sucesso)")