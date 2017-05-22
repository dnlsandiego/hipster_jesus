# HipsterJesus

A simple wrapper for [HipsterJesus](http://hipsterjesus.com/), a service that generates "lorem ipsum"-like text in hipster lingo.

## Quickstart

Install the package by adding `hipster_jesus` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:hipster_jesus, "~> 0.1.0"}]
end
```

Add `hipster_jesus` to the applications options in your `mix.exs`:

```elixir
def application do
  [applications: [:hipster_jesus]]
end
```

Finally, fetch and try it out in the elixir console:
```
mix deps.get
iex -S mix
```

## Usage

Fetch a hipster flavored lorem ipsum text:
```elixir
{:ok, text} = HipsterJesus.preach
```

`text` would now contain something along the lines of:
```
"Deep v ethical messenger bag bespoke enamel pin.  Kinfolk fingerstache man bun, forage kitsch man braid lomo glossier kogi cray viral normcore pitchfork truffaut.  Copper mug meditation iceland lo-fi pour-over before they sold out.  Neutra yuccie flannel single-origin coffee......."
```

#### With options
```elixir
{:ok, text} = HipsterJesus.preach(paragraphs: 2, type: "hipster-latin", html: true)
```

## Options
`paragraphs` - Number of paragraphs to fetch.

`type` - Choice of `hipster-latin` or `hipster-centric`. The former mixes in traditional lorem ipsum text while the latter is just hipster lingo.

`html` - The the text in `<p></p>` tags.
