To validate JSON:

install ajv-cli from npm

```
npm install -g ajv ajv-cli ajv-formats
asdf reshim nodejs
ajv-cli validate -c ajv-formats --strict=false -s schema.json -d homebrew.json
```
