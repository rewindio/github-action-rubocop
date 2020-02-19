# github-action-rubocop

Github action to run [Rubocop](https://github.com/rubocop-hq/rubocop) only on the files changed in the current commit.
Runs rubocop only on the changes in the current commit

## Usage

### `workflow.yml` Example

Place in a `.yml` file such as this one in your `.github/workflows` folder. [Refer to the documentation on workflow YAML syntax here.](https://help.github.com/en/articles/workflow-syntax-for-github-actions)

```bash
name: Invalidate Cloudfront
on: push

jobs:
  deploy:
    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@master

      - name: Rubocop checks
        uses: docker://rewindio/github-action-rubocop
```

### Environment Variables

none.

### Required Secret Variables

none.

## License

This project is distributed under the [MIT license](LICENSE.md).
