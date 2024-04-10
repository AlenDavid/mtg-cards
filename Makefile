download:
	wget -P downloads https://mtgjson.com/api/v5/AllPrintings.psql.zip

./downloads/AllPrintings.psql.zip:
	wget -P downloads https://mtgjson.com/api/v5/AllPrintings.psql.zip

extract: ./downloads/AllPrintings.psql.zip
	tar -xf ./downloads/AllPrintings.psql.zip -C ./migrations

install: extract

.PHONY: extract install
