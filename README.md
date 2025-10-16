# debby-actions

A GitHub Action to run the [Debby dbt linter package](https://www.debbyapp.com).

## Usage

Create a GitHub workflow in your repository at `.github/workflows/debby.yml`, and add the following content.

```yaml
name: Debby
on: [push]

jobs:
  debby:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4

      # install the dbt adapter you're using
      - run: pip install dbt-core dbt-snowflake
      
      # generate a manifest.json for debby to use
      - run: dbt parse 
      
      # run the action
      - uses: tjwaterman99/debby-actions@v0.0.4
```
