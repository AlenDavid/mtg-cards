download:
	wget -P downloads https://mtgjson.com/api/v5/AllPrintings.psql.zip
	wget -P downloads https://mtgjson.com/api/v5/AllPricesToday.psql.zip

./downloads/AllPrintings.psql.zip:
	wget -P downloads https://mtgjson.com/api/v5/AllPrintings.psql.zip

./downloads/AllPricesToday.psql.zip:
	wget -P downloads https://mtgjson.com/api/v5/AllPricesToday.psql.zip

extract: ./downloads/AllPrintings.psql.zip ./downloads/AllPricesToday.psql.zip
	tar -xf ./downloads/AllPrintings.psql.zip -C ./migrations
	tar -xf ./downloads/AllPricesToday.psql.zip -C ./migrations

migrate:
	psql -h localhost -U postgres -f ./migrations/AllPrintings.psql
	psql -h localhost -U postgres -f ./migrations/AllPricesToday.psql

install: extract migrate


.PHONY: extract install extract migrate
