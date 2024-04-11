download:
	rm ./downloads/AllPrintings.psql.zip
	wget -P downloads https://mtgjson.com/api/v5/AllPrintings.psql.zip

./downloads/AllPrintings.psql.zip:
	wget -P downloads https://mtgjson.com/api/v5/AllPrintings.psql.zip

extract: ./downloads/AllPrintings.psql.zip
	tar -xf ./downloads/AllPrintings.psql.zip -C ./migrations

migrate:
	psql -h localhost -U postgres -f ./migrations/AllPrintings.psql

install: extract migrate


.PHONY: extract install extract migrate
