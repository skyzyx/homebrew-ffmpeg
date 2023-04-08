class FfmpegSkyzyx < Formula
  desc "Play, record, convert, and stream audio and video"
  homepage "https://ffmpeg.org/"
  url "https://ffmpeg.org/releases/ffmpeg-6.0.tar.xz"
  sha256 "57be87c22d9b49c112b6d24bc67d42508660e6b718b3db89c44e47e289137082"
  revision 1
  head "https://github.com/FFmpeg/FFmpeg.git"

  conflicts_with "ffmpeg", :because => "ffmpeg-skyzyx also ships a ffmpeg binary"

  depends_on "make" => :build
  depends_on "nasm" => :build
  depends_on "pkg-config" => :build
  depends_on "texi2html" => :build

  depends_on "aom"
  depends_on "automake"
  depends_on "coreutils"
  depends_on "dav1d"
  depends_on "dwarf"
  depends_on "dwarfutils"
  depends_on "faac"
  depends_on "fdk-aac"
  depends_on "fdk-aac-encoder"
  depends_on "fontconfig"
  depends_on "freetype"
  depends_on "frei0r"
  depends_on "git"
  depends_on "glib"
  depends_on "gnutls"
  depends_on "lame"
  depends_on "libaacs"
  depends_on "libass"
  depends_on "libbluray"
  depends_on "libffi"
  depends_on "libgsm"
  depends_on "libiconv"
  depends_on "libmodplug"
  depends_on "librsvg"
  depends_on "libsoxr"
  depends_on "libtool"
  depends_on "libvidstab"
  depends_on "libvo-aacenc"
  depends_on "libvorbis"
  depends_on "libvpx"
  depends_on "libxml2"
  depends_on "opencore-amr"
  depends_on "openh264"
  depends_on "openjpeg"
  depends_on "opus"
  depends_on "rtmpdump"
  depends_on "rubberband"
  depends_on "sdl12-compat"
  depends_on "sdl2"
  depends_on "shtool"
  depends_on "snappy"
  depends_on "speex"
  depends_on "srt"
  depends_on "tesseract"
  depends_on "theora"
  depends_on "two-lame"
  depends_on "wavpack"
  depends_on "webp"
  depends_on "wget"
  depends_on "x264"
  depends_on "x265"
  depends_on "xvid"
  depends_on "xz"
  depends_on "yasm"
  depends_on "zeromq"
  depends_on "zimg"
  depends_on "zlib"

  def install
    # Work around Xcode 11 clang bug
    # https://bitbucket.org/multicoreware/x265/issues/514/wrong-code-generated-on-macos-1015
    # https://trac.ffmpeg.org/ticket/8073#comment:12
    ENV.append_to_cflags "-fno-stack-check" if DevelopmentTools.clang_build_version >= 1010

    # # FreeType
    # ENV.append_to_cflags `freetype-config --cflags`
    # ENV.append "LDFLAGS", `freetype-config --libs`

    # FFI
    ENV.append "LIBFFI_CFLAGS", "-I/usr/include/ffi"
    ENV.append "LIBFFI_LIBS", "-lffi"

    # glib
    ENV.append "GLIB_CFLAGS", "-I/usr/local/include/glib-2.0"
    ENV.append "GLIB_CFLAGS", "-I/usr/local/lib/glib-2.0/include"
    ENV.append "GLIB_LIBS", "-lglib-2.0"
    ENV.append "GLIB_LIBS", "-lgio-2.0"

    # pkg-config
    ENV.append_path "PKG_CONFIG_PATH", "/usr/local/lib/pkgconfig"
    ENV.append_path "PKG_CONFIG_PATH", "/usr/lib/pkgconfig"
    # ENV.append_path "PKG_CONFIG_PATH", "/opt/X11/lib/pkgconfig"

    args = %W[
      --prefix=#{prefix}
      --disable-htmlpages
      --disable-indev=jack
      --disable-libjack
      --disable-podpages
      --disable-txtpages
      --enable-decoder=aac
      --enable-decoder=ac3
      --enable-decoder=alac
      --enable-decoder=apng
      --enable-decoder=ass
      --enable-decoder=av1
      --enable-decoder=bmp
      --enable-decoder=flac
      --enable-decoder=flv
      --enable-decoder=gif
      --enable-decoder=h264
      --enable-decoder=hevc
      --enable-decoder=jpeg2000
      --enable-decoder=libvorbis
      --enable-decoder=libvpx_vp8
      --enable-decoder=libvpx_vp9
      --enable-decoder=mp3
      --enable-decoder=mpeg4
      --enable-decoder=png
      --enable-decoder=srt
      --enable-decoder=ssa
      --enable-decoder=text
      --enable-decoder=theora
      --enable-decoder=tiff
      --enable-decoder=vc1
      --enable-decoder=vc1image
      --enable-decoder=vorbis
      --enable-decoder=vp8
      --enable-decoder=vp9
      --enable-decoder=wavpack
      --enable-decoder=webp
      --enable-decoder=webvtt
      --enable-decoder=yuv4
      --enable-decoder=zlib
      --enable-demuxer=aac
      --enable-demuxer=ac3
      --enable-demuxer=apng
      --enable-demuxer=ass
      --enable-demuxer=av1
      --enable-demuxer=dash
      --enable-demuxer=flac
      --enable-demuxer=flv
      --enable-demuxer=gif
      --enable-demuxer=h264
      --enable-demuxer=hevc
      --enable-demuxer=hls
      --enable-demuxer=m4v
      --enable-demuxer=matroska
      --enable-demuxer=mov
      --enable-demuxer=mp3
      --enable-demuxer=ogg
      --enable-demuxer=srt
      --enable-demuxer=vc1
      --enable-demuxer=wav
      --enable-demuxer=webm_dash_manifest
      --enable-demuxer=webvtt
      --enable-encoder=aac
      --enable-encoder=ac3
      --enable-encoder=alac
      --enable-encoder=apng
      --enable-encoder=ass
      --enable-encoder=flac
      --enable-encoder=flv
      --enable-encoder=gif
      --enable-encoder=h264_videotoolbox
      --enable-encoder=hevc_videotoolbox
      --enable-encoder=jpeg2000
      --enable-encoder=libmp3lame
      --enable-encoder=libtheora
      --enable-encoder=libaom_av1
      --enable-encoder=libsvtav1
      --enable-encoder=libvorbis
      --enable-encoder=libvpx_vp8
      --enable-encoder=libvpx_vp9
      --enable-encoder=libwebp
      --enable-encoder=libwebp_anim
      --enable-encoder=libx264
      --enable-encoder=libx265
      --enable-encoder=libxvid
      --enable-encoder=mpeg4
      --enable-encoder=png
      --enable-encoder=srt
      --enable-encoder=ssa
      --enable-encoder=text
      --enable-encoder=tiff
      --enable-encoder=vorbis
      --enable-encoder=webvtt
      --enable-encoder=yuv4
      --enable-encoder=zlib
      --enable-ffplay
      --enable-ffprobe
      --enable-fontconfig
      --enable-frei0r
      --enable-gnutls
      --enable-gpl
      --enable-hwaccel=h264_videotoolbox
      --enable-hwaccel=hevc_videotoolbox
      --enable-hwaccel=mpeg2_videotoolbox
      --enable-hwaccel=mpeg4_videotoolbox
      --enable-libxml2
      --enable-libaom
      --enable-libass
      --enable-libbluray
      --enable-libdav1d
      --enable-libfdk-aac
      --enable-libfontconfig
      --enable-libfreetype
      --enable-libgsm
      --enable-libmodplug
      --enable-libmp3lame
      --enable-libopencore-amrnb
      --enable-libopencore-amrwb
      --enable-libopenh264
      --enable-libopenjpeg
      --enable-libopus
      --enable-librtmp
      --enable-librubberband
      --enable-libsnappy
      --enable-libsoxr
      --enable-libspeex
      --enable-libsrt
      --enable-libtesseract
      --enable-libtheora
      --enable-libtwolame
      --enable-libvidstab
      --enable-libvorbis
      --enable-libvpx
      --enable-libwebp
      --enable-libx264
      --enable-libx265
      --enable-libxvid
      --enable-libzimg
      --enable-libzmq
      --enable-lzma
      --enable-muxer=ac3
      --enable-muxer=apng
      --enable-muxer=ass
      --enable-muxer=av1
      --enable-muxer=dash
      --enable-muxer=flac
      --enable-muxer=flv
      --enable-muxer=gif
      --enable-muxer=h264
      --enable-muxer=hevc
      --enable-muxer=hls
      --enable-muxer=m4v
      --enable-muxer=matroska
      --enable-muxer=matroska_audio
      --enable-muxer=mov
      --enable-muxer=mp3
      --enable-muxer=mp4
      --enable-muxer=oga
      --enable-muxer=ogg
      --enable-muxer=ogv
      --enable-muxer=srt
      --enable-muxer=vc1
      --enable-muxer=webm
      --enable-muxer=webm_chunk
      --enable-muxer=webm_dash_manifest
      --enable-muxer=webp
      --enable-muxer=webvtt
      --enable-nonfree
      --enable-pthreads
      --enable-shared
      --enable-small
      --enable-version3
      --enable-videotoolbox
      --extra-version=skyzyx
      --cc=#{ENV.cc}
      --host-cflags="#{ENV.cflags.strip}"
    ]

    system "./configure", *args
    system "make", "install"

    # Build and install additional FFmpeg tools
    system "make", "alltools"
    bin.install Dir["tools/*"].select { |f| File.executable? f }

    # Fix for Non-executables that were installed to bin/
    mv bin/"python", pkgshare/"python", :force => true
  end

  test do
    # Create an example mp4 file
    mp4out = testpath/"video.mp4"
    system bin/"ffmpeg", "-filter_complex", "testsrc=rate=1:duration=1", mp4out
    assert_predicate mp4out, :exist?
  end
end
