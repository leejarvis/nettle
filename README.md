# Nettle

A wrapper around `net/http` for a simplified API. Extremely feature lacking at
the moment.

## Installation

    $ gem install nettle

## Usage

```ruby
response = Nettle.get("http://google.com")
response.body #=> lots of html

response = Nettle.post("http://google.com", foo: "bar")
response.code #=> "405"
```