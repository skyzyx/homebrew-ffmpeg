#! /usr/bin/env bash

cat << EOF > "README.md"
# homebrew-ffmpeg

A build of FFMPEG which supports more than the official Homebrew build.

## Why not the formula from homebrew-core?

The \`ffmpeg\` package from homebrew-core supports most modern codecs, including H.264/AVC, H.265/HEVC, Theora, VP8, VP9, AV1, and support for Intel Quick Sync hardware encoding/decoding (in [Sandy Bridge and newer Macs](https://en.wikipedia.org/wiki/List_of_Macintosh_models_grouped_by_CPU_type#Sandy_Bridge)).

This \`ffmpeg-skyzyx\` package supports all of that plus: [Apple Lossless]; [Animated PNG] (used for animated stickers and Memoji); [SSA/ASS], [SRT], and [WebVTT] subtitles; [Microsoft VC1]; Google [WebP]/[WebM]; [MPEG-DASH] streaming; HTTP Live Streaming ([HLS]); [FreeType]; [Opus] (VOIP audio); and some alternate encoder implementations.

Last built/tested on macOS 13.2 ”Ventura” with Xcode 14.1.0 on both Intel and Apple Silicon CPUs.

## Installation

\`\`\`bash
brew unlink ffmpeg
brew install skyzyx/ffmpeg/ffmpeg-skyzyx
\`\`\`

Or…

\`\`\`bash
brew unlink ffmpeg
brew tap skyzyx/ffmpeg
brew install ffmpeg-skyzyx
\`\`\`

Or install via URL (which will not receive updates):

\`\`\`bash
brew install https://raw.githubusercontent.com/skyzyx/homebrew-ffmpeg/master/Formula/ffmpeg-skyzyx.rb
\`\`\`

Or, if you’re debugging with a local clone (or you’re _Future Ryan_ and you’re trying to remember how to do this:)

\`\`\`bash
brew install --verbose --debug --build-from-source ./Formula/ffmpeg-skyzyx.rb
\`\`\`

(You might need to use \`reinstall\` instead.)

## Support

### Build Configuration

\`\`\`bash
LIBFFI_CFLAGS=-I/usr/include/ffi \\
LIBFFI_LIBS=-lffi \\
GLIB_CFLAGS="-I/usr/local/include/glib-2.0 -I/usr/local/lib/glib-2.0/include" \\
GLIB_LIBS="-lglib-2.0 -lgio-2.0" \\
PKG_CONFIG_PATH=\$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig:/usr/lib/pkgconfig:/opt/X11/lib/pkgconfig \\
./configure \\
$(xargs -0 -d '\n' -I% echo "    % " < docs/buildconf.txt)
&& make -j\$(nproc) ffmpeg \\
&& make install
\`\`\`

### Decode

#### Decoding Codecs

$(xargs -0 -d '\n' < docs/codecs-decode.txt | sed "s/\n/ /g")

#### Decoding Packages

$(xargs -0 -d '\n' < docs/decoders.txt | sed "s/\n/ /g")

### Encode

#### Encoding Codecs

$(xargs -0 -d '\n' < docs/codecs-encode.txt | sed "s/\n/ /g")

#### Encoding Packages

$(xargs -0 -d '\n' < docs/encoders.txt | sed "s/\n/ /g")

### Muxers

$(xargs -0 -d '\n' < docs/muxers.txt | sed "s/\n/ /g")

### Demuxers

$(xargs -0 -d '\n' < docs/demuxers.txt | sed "s/\n/ /g")

### Pixel Formats

$(xargs -0 -d '\n' < docs/pix_fmts.txt | sed "s/\n/ /g")

### Bitstream Filters

$(xargs -0 -d '\n' < docs/bsfs.txt | sed "s/\n/ /g")

### Hardware Acceleration

$(xargs -0 -d '\n' < docs/hwaccels.txt | sed "s/\n/ /g")

## Documentation

\`brew help\`, \`man brew\` or check [Homebrew's documentation](https://docs.brew.sh).

  [Animated PNG]: https://developer.mozilla.org/en-US/docs/Mozilla/Tech/APNG
  [Apple Lossless]: https://macosforge.github.io/alac/
  [FreeType]: https://www.freetype.org
  [HLS]: https://developer.mozilla.org/en-US/docs/Web/Guide/Audio_and_video_delivery/Setting_up_adaptive_streaming_media_sources
  [Microsoft VC1]: https://en.wikipedia.org/wiki/VC-1
  [MPEG-DASH]: https://developer.mozilla.org/en-US/docs/Web/Guide/Audio_and_video_delivery/Setting_up_adaptive_streaming_media_sources
  [Opus]: http://opus-codec.org
  [SRT]: https://matroska.org/technical/specs/subtitles/srt.html
  [SSA/ASS]: https://matroska.org/technical/specs/subtitles/ssa.html
  [WebM]: https://www.webmproject.org/tools/
  [WebP]: https://developers.google.com/speed/webp/docs/using
  [WebVTT]: https://w3c.github.io/webvtt/
EOF
