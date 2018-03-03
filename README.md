# ContentType

A parser for HTTP Content-Type headers.

It's an extraction from [Plug](https://github.com/elixir-plug/plug) by Plataformatec.


## Installation

Add `content_type` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:content_type, "~> 0.1.0"}
  ]
end
```


## Usage

Parsing a content type:

```elixir
import ContentType

content_type "text/plain"                        
# => {:ok, "text", "plain", %{}}

content_type "x-sample/json; charset=utf-8" 
# => {:ok, "x-sample", "json", %{"charset" => "utf-8"}}

content_type "APPLICATION/vnd.ms-data+XML"
# => {:ok, "application", "vnd.ms-data+xml", %{}}

content_type "x/*"
# => :error
```

Parsing a media type (with potential wildcards):

```elixir
import ContentType

media_type "x/*"
# => {:ok, "x", "*", %{}}

media_type "text/*; q=1.0"
# => {:ok, "text", "*", %{"q" => "1.0"}}

media_type "x y"
# => :error
```


## License

The source code is released under Apache 2 License.
Check LICENSE file for more information.
