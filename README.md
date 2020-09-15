# FEEN.cr

[![Build Status](https://travis-ci.org/sashite/feen.cr.svg?branch=master)](https://travis-ci.org/sashite/feen.cr)

> __FEEN__ (Forsyth–Edwards Expanded Notation) support for the Crystal language.

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     feen:
       github: sashite/feen.cr
   ```

2. Run `shards install`

## Usage

```crystal
require "feen"

# Dump a classic Tsume Shogi problem
FEEN.dump(
  "active_side_id": 0,
  "board": {
     3 => "s",
     4 => "k" ,
     5 => "s",
    22 => "+P",
    43 => "+B"
  },
  "indexes": [9, 9],
  "pieces_in_hand_grouped_by_sides": [
    %w[S],
    %w[r r b g g g g s n n n n p p p p p p p p p p p p p p p p p]
  ]
)
# => "3,s,k,s,3/9/4,+P,4/9/7,+B,1/9/9/9/9 0 S/b,g,g,g,g,n,n,n,n,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,r,r,s"

# Parse a classic Tsume Shogi problem
FEEN.parse("3,s,k,s,3/9/4,+P,4/9/7,+B,1/9/9/9/9 0 S/b,g,g,g,g,n,n,n,n,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,r,r,s")
# => {
#      "active_side_id": 0,
#      "board": {
#         3 => "s",
#         4 => "k" ,
#         5 => "s",
#        22 => "+P",
#        43 => "+B"
#      },
#      "indexes": [9, 9],
#      "pieces_in_hand_grouped_by_sides": [
#        %w[S],
#        %w[b g g g g n n n n p p p p p p p p p p p p p p p p p r r s]
#      ]
#    }
```

## License

The code is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## About Sashite

This library is maintained by [Sashite](https://sashite.com/).

With some [lines of code](https://github.com/sashite/), let's share the beauty of Chinese, Japanese and Western cultures through the game of chess!
