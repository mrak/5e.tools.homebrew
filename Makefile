fetch-schema:
	curl https://raw.githubusercontent.com/TheGiddyLimit/homebrew/master/schema.json -o schema.json

dependencies:
	asdf install
	npm install

lint:
	npm exec -- ajv-cli validate -c ajv-formats --strict=false -s schema.json -d Wonder\'s\ Wands\ of\ Literal\ Legerdemain.json
	npm exec -- ajv-cli validate -c ajv-formats --strict=false -s schema.json -d Dungeon\ Master\'s\ Homebrew.json
	npm exec -- ajv-cli validate -c ajv-formats --strict=false -s schema.json -d complete.json

unify:
	node scripts/unify.mjs Wonder\'s\ Wands\ of\ Literal\ Legerdemain.json Dungeon\ Master\'s\ Homebrew.json > complete.json
