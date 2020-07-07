# PHP Lint for GitHub actions
PHP Lint for GitHub on PHP 7.4

copy this into .github/workflows/phplint.yml:

```yaml
name: phplint
on: [push, pull_request]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2

      - name: PHP Lint
        uses: maddy2101/actions-phplint@master
```