#! /usr/bin/env bash

cat << EOF > "README.md"
# skyzyx/ffmpeg/ffmpeg-skyzyx

A build of FFMPEG which supports more than the official Homebrew build.

## Installation

\`brew install skyzyx/taps/ffmpeg-skyzyx\`

Or \`brew tap skyzyx/taps\` and then \`brew install ffmpeg-skyzyx\`.

Or install via URL (which will not receive updates):

\`\`\`bash
brew install https://raw.githubusercontent.com/skyzyx/homebrew-ffmpeg/master/Formula/ffmpeg-skyzyx.rb
\`\`\`

## Support

### Build Configuration

\`\`\`
./configure $(cat docs/buildconf.txt | tr "\n" " ")
\`\`\`

### Decode

#### Decoding Codecs

$(cat docs/codecs-decode.txt | xargs | sed "s/\n/ /g")

#### Decoding Packages

$(cat docs/decoders.txt | xargs | sed "s/\n/ /g")

### Encode

#### Encoding Codecs

$(cat docs/codecs-encode.txt | xargs | sed "s/\n/ /g")

#### Encoding Packages

$(cat docs/encoders.txt | xargs | sed "s/\n/ /g")

### Muxers

$(cat docs/muxers.txt | xargs | sed "s/\n/ /g")

### Demuxers

$(cat docs/demuxers.txt | xargs | sed "s/\n/ /g")

### Pixel Formats

$(cat docs/pix_fmts.txt | xargs | sed "s/\n/ /g")

### Bitstream Filters

$(cat docs/bsfs.txt | xargs | sed "s/\n/ /g")

### Hardware Acceleration

$(cat docs/hwaccels.txt | xargs | sed "s/\n/ /g")

## Documentation

\`brew help\`, \`man brew\` or check [Homebrew's documentation](https://docs.brew.sh).
EOF
