# Bevelwork Tap

## Available Formulae

- **quick-ssm**: Quickly connect to AWS servers from the CLI. No GUI or SSH needed.
- **quick-pipreqs**: Quickly generate requirements.txt from Python projects.
- **quick-time**: Simple CLI tool for time tracking using a clear text TOML-based format.

## How do I install these formulae?

`brew install bevelwork/tap/<formula>`

Or `brew tap bevelwork/tap` and then `brew install <formula>`.

### Examples:
```bash
# Install quick-ssm
brew install bevelwork/tap/quick-ssm

# Install quick-pipreqs
brew install bevelwork/tap/quick-pipreqs

# Install quick-time
brew install bevelwork/tap/quick-time
```

Or, in a `brew bundle` `Brewfile`:

```ruby
tap "bevelwork/tap"
brew "quick-ssm"
brew "quick-pipreqs"
brew "quick-time"
```

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
