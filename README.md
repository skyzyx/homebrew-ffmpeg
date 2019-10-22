# homebrew-ffmpeg

A build of FFMPEG which supports more than the official Homebrew build.

## Installation

`brew install skyzyx/ffmpeg/ffmpeg-skyzyx`

Or `brew tap skyzyx/ffmpeg` and then `brew install ffmpeg-skyzyx`.

Or install via URL (which will not receive updates):

```bash
brew install https://raw.githubusercontent.com/skyzyx/homebrew-ffmpeg/master/Formula/ffmpeg-skyzyx.rb
```

## Support

### Build Configuration

```bash
LIBFFI_CFLAGS=-I/usr/include/ffi \
LIBFFI_LIBS=-lffi \
GLIB_CFLAGS="-I/usr/local/include/glib-2.0 -I/usr/local/lib/glib-2.0/include" \
GLIB_LIBS="-lglib-2.0 -lgio-2.0" \
CFLAGS=`freetype-config --cflags` \
LDFLAGS=`freetype-config --libs` \
PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig:/usr/lib/pkgconfig:/opt/X11/lib/pkgconfig \
./configure \
    --prefix=/usr/local/Cellar/ffmpeg-skyzyx/HEAD-0b8956b_1 \
    --disable-htmlpages \
    --disable-indev=jack \
    --disable-libjack \
    --disable-podpages \
    --disable-txtpages \
    --enable-avisynth \
    --enable-chromaprint \
    --enable-decoder=aac \
    --enable-decoder=ac3 \
    --enable-decoder=alac \
    --enable-decoder=apng \
    --enable-decoder=ass \
    --enable-decoder=bmp \
    --enable-decoder=flac \
    --enable-decoder=flv \
    --enable-decoder=gif \
    --enable-decoder=h264 \
    --enable-decoder=hevc \
    --enable-decoder=jpeg2000 \
    --enable-decoder=libvorbis \
    --enable-decoder=libvpx_vp8 \
    --enable-decoder=libvpx_vp9 \
    --enable-decoder=mp3 \
    --enable-decoder=mpeg4 \
    --enable-decoder=png \
    --enable-decoder=srt \
    --enable-decoder=ssa \
    --enable-decoder=text \
    --enable-decoder=theora \
    --enable-decoder=tiff \
    --enable-decoder=vc1 \
    --enable-decoder=vc1image \
    --enable-decoder=vorbis \
    --enable-decoder=vp8 \
    --enable-decoder=vp9 \
    --enable-decoder=wavpack \
    --enable-decoder=webp \
    --enable-decoder=webvtt \
    --enable-decoder=yuv4 \
    --enable-decoder=zlib \
    --enable-demuxer=aac \
    --enable-demuxer=ac3 \
    --enable-demuxer=apng \
    --enable-demuxer=ass \
    --enable-demuxer=dash \
    --enable-demuxer=flac \
    --enable-demuxer=flv \
    --enable-demuxer=gif \
    --enable-demuxer=h264 \
    --enable-demuxer=hevc \
    --enable-demuxer=hls \
    --enable-demuxer=m4v \
    --enable-demuxer=matroska \
    --enable-demuxer=mov \
    --enable-demuxer=mp3 \
    --enable-demuxer=ogg \
    --enable-demuxer=srt \
    --enable-demuxer=vc1 \
    --enable-demuxer=wav \
    --enable-demuxer=webm_dash_manifest \
    --enable-demuxer=webvtt \
    --enable-encoder=aac \
    --enable-encoder=ac3 \
    --enable-encoder=alac \
    --enable-encoder=apng \
    --enable-encoder=ass \
    --enable-encoder=flac \
    --enable-encoder=flv \
    --enable-encoder=gif \
    --enable-encoder=h264_videotoolbox \
    --enable-encoder=hevc_videotoolbox \
    --enable-encoder=jpeg2000 \
    --enable-encoder=libmp3lame \
    --enable-encoder=libtheora \
    --enable-encoder=libvorbis \
    --enable-encoder=libvpx_vp8 \
    --enable-encoder=libvpx_vp9 \
    --enable-encoder=libwebp \
    --enable-encoder=libwebp_anim \
    --enable-encoder=libx264 \
    --enable-encoder=libx265 \
    --enable-encoder=libxvid \
    --enable-encoder=mpeg4 \
    --enable-encoder=png \
    --enable-encoder=srt \
    --enable-encoder=ssa \
    --enable-encoder=text \
    --enable-encoder=tiff \
    --enable-encoder=vorbis \
    --enable-encoder=webvtt \
    --enable-encoder=yuv4 \
    --enable-encoder=zlib \
    --enable-ffplay \
    --enable-ffprobe \
    --enable-fontconfig \
    --enable-frei0r \
    --enable-gnutls \
    --enable-gpl \
    --enable-hwaccel=h264_videotoolbox \
    --enable-hwaccel=hevc_videotoolbox \
    --enable-hwaccel=mpeg2_videotoolbox \
    --enable-hwaccel=mpeg4_videotoolbox \
    --enable-libaom \
    --enable-libass \
    --enable-libbluray \
    --enable-libdav1d \
    --enable-libfdk-aac \
    --enable-libfontconfig \
    --enable-libfreetype \
    --enable-libgsm \
    --enable-libmodplug \
    --enable-libmp3lame \
    --enable-libopencore-amrnb \
    --enable-libopencore-amrwb \
    --enable-libopenh264 \
    --enable-libopenjpeg \
    --enable-libopus \
    --enable-librtmp \
    --enable-librubberband \
    --enable-libsnappy \
    --enable-libsoxr \
    --enable-libspeex \
    --enable-libtesseract \
    --enable-libtheora \
    --enable-libtwolame \
    --enable-libvidstab \
    --enable-libvorbis \
    --enable-libvpx \
    --enable-libwavpack \
    --enable-libwebp \
    --enable-libx264 \
    --enable-libx265 \
    --enable-libxvid \
    --enable-libzimg \
    --enable-libzmq \
    --enable-lzma \
    --enable-muxer=ac3 \
    --enable-muxer=apng \
    --enable-muxer=ass \
    --enable-muxer=chromaprint \
    --enable-muxer=dash \
    --enable-muxer=flac \
    --enable-muxer=flv \
    --enable-muxer=gif \
    --enable-muxer=h264 \
    --enable-muxer=hevc \
    --enable-muxer=hls \
    --enable-muxer=m4v \
    --enable-muxer=matroska \
    --enable-muxer=matroska_audio \
    --enable-muxer=mov \
    --enable-muxer=mp3 \
    --enable-muxer=mp4 \
    --enable-muxer=oga \
    --enable-muxer=ogg \
    --enable-muxer=ogv \
    --enable-muxer=srt \
    --enable-muxer=vc1 \
    --enable-muxer=webm \
    --enable-muxer=webm_chunk \
    --enable-muxer=webm_dash_manifest \
    --enable-muxer=webp \
    --enable-muxer=webvtt \
    --enable-nonfree \
    --enable-pthreads \
    --enable-shared \
    --enable-small \
    --enable-version3 \
    --enable-videotoolbox \
    --extra-version=skyzyx \
    --cc=clang \
&& make -j$(nproc) ffmpeg \
&& make install
```

### Decode

#### Decoding Codecs

`012v` `4xm` `8bps` `8svx_exp` `8svx_fib` `aac_latm` `aac` `aasc` `ac3` `acelp.kelvin` `adpcm_4xm` `adpcm_adx` `adpcm_afc` `adpcm_agm` `adpcm_aica` `adpcm_ct` `adpcm_dtk` `adpcm_ea_maxis_xa` `adpcm_ea_r1` `adpcm_ea_r2` `adpcm_ea_r3` `adpcm_ea_xas` `adpcm_ea` `adpcm_g722` `adpcm_g726` `adpcm_g726le` `adpcm_ima_amv` `adpcm_ima_apc` `adpcm_ima_dat4` `adpcm_ima_dk3` `adpcm_ima_dk4` `adpcm_ima_ea_eacs` `adpcm_ima_ea_sead` `adpcm_ima_iss` `adpcm_ima_oki` `adpcm_ima_qt` `adpcm_ima_rad` `adpcm_ima_smjpeg` `adpcm_ima_wav` `adpcm_ima_ws` `adpcm_ms` `adpcm_mtaf` `adpcm_psx` `adpcm_sbpro_2` `adpcm_sbpro_3` `adpcm_sbpro_4` `adpcm_swf` `adpcm_thp_le` `adpcm_thp` `adpcm_vima` `adpcm_xa` `adpcm_yamaha` `agm` `aic` `alac` `alias_pix` `amr_nb` `amr_wb` `amv` `anm` `ansi` `ape` `apng` `aptx_hd` `aptx` `arbc` `ass` `asv1` `asv2` `atrac1` `atrac3` `atrac3al` `atrac3p` `atrac3pal` `atrac9` `aura2` `aura` `av1` `avc` `avrn` `avrp` `avs` `avui` `ayuv` `bethsoftvid` `bfi` `binkaudio_dct` `binkaudio_rdft` `binkvideo` `bintext` `bitpacked` `bmp` `bmv_audio` `bmv_video` `brender_pix` `c93` `cavs` `cdgraphics` `cdxl` `cfhd` `cinepak` `clearvideo` `cljr` `cllc` `cmv` `comfortnoise` `cook` `cpia` `cscd` `cyuv` `dds` `dfa` `dirac` `dnxhd` `dolby_e` `dpx` `dsd_lsbf_planar` `dsd_lsbf` `dsd_msbf_planar` `dsd_msbf` `dsicinaudio` `dsicinvideo` `dss_sp` `dst` `dts` `dvaudio` `dvb_subtitle` `dvd_subtitle` `dvvideo` `dxa` `dxtory` `dxv` `eac3` `eia_608` `escape124` `escape130` `evrc` `exr` `ffv1` `ffvhuff` `fic` `fits` `flac` `flashsv2` `flashsv` `flic` `flv1` `fmvc` `fraps` `frwu` `g2m` `g723_1` `g729` `gdv` `gif` `gremlin_dpcm` `gsm_ms` `gsm` `h261` `h263` `h263i` `h263p` `h264` `hap` `hcom` `hdmv_pgs_subtitle` `hevc` `hnm4video` `hq_hqa` `hqx` `huffyuv` `hymt` `iac` `idcin` `idf` `iff_ilbm` `ilbc` `imc` `imm4` `imm5` `indeo2` `indeo3` `indeo4` `indeo5` `interplay_dpcm` `interplayacm` `interplayvideo` `jacosub` `jpeg2000` `jpegls` `jv` `kgv1` `kmvc` `lagarith` `loco` `lscr` `m101` `mace3` `mace6` `mad` `magicyuv` `mdec` `metasound` `microdvd` `mimic` `mjpeg` `mjpegb` `mlp` `mmvideo` `motionpixels` `mov_text` `mp1` `mp2` `mp3` `mp3adu` `mp3on4` `mp4als` `mpeg1video` `mpeg2video` `mpeg4` `mpl2` `msa1` `mscc` `msmpeg4v1` `msmpeg4v2` `msmpeg4v3` `msrle` `mss1` `mss2` `msvideo1` `mszh` `mts2` `musepack7` `musepack8` `mvc1` `mvc2` `mwsc` `mxpeg` `nellymoser` `nuv` `opus` `paf_audio` `paf_video` `pam` `pbm` `pcm_alaw` `pcm_bluray` `pcm_dvd` `pcm_f16le` `pcm_f24le` `pcm_f32be` `pcm_f32le` `pcm_f64be` `pcm_f64le` `pcm_lxf` `pcm_mulaw` `pcm_s16be_planar` `pcm_s16be` `pcm_s16le_planar` `pcm_s16le` `pcm_s24be` `pcm_s24daud` `pcm_s24le_planar` `pcm_s24le` `pcm_s32be` `pcm_s32le_planar` `pcm_s32le` `pcm_s64be` `pcm_s64le` `pcm_s8_planar` `pcm_s8` `pcm_u16be` `pcm_u16le` `pcm_u24be` `pcm_u24le` `pcm_u32be` `pcm_u32le` `pcm_u8` `pcm_vidc` `pcm_zork` `pcx` `pgm` `pgmyuv` `pictor` `pixlet` `pjs` `png` `ppm` `prores` `prosumer` `psd` `ptx` `qcelp` `qdm2` `qdmc` `qdraw` `qpeg` `qtrle` `r10k` `r210` `ra_144` `ra_288` `ralf` `rasc` `rawvideo` `realtext` `rl2` `roq_dpcm` `roq` `rpza` `rscc` `rv10` `rv20` `rv30` `rv40` `s302m` `sami` `sanm` `sbc` `scpr` `screenpresso` `sdx2_dpcm` `sgi` `sgirle` `sheervideo` `shorten` `sipr` `smackaudio` `smackvideo` `smc` `smvjpeg` `snow` `sol_dpcm` `sonic` `sp5x` `speedhq` `speex` `srgc` `stl` `subrip` `subviewer1` `subviewer` `sunrast` `svq1` `svq3` `tak` `targa_y216` `targa` `tdsc` `text` `tgq` `tgv` `theora` `thp` `tiertexseqvideo` `tiff` `tmv` `tqi` `truehd` `truemotion1` `truemotion2` `truemotion2rt` `truespeech` `tscc2` `tscc` `tta` `twinvq` `txd` `ulti` `utvideo` `v210` `v210x` `v308` `v408` `v410` `vb` `vble` `vc1` `vc1image` `vcr1` `vixl` `vmdaudio` `vmdvideo` `vmnc` `vorbis` `vp3` `vp4` `vp5` `vp6` `vp6a` `vp6f` `vp7` `vp8` `vp9` `vplayer` `wavesynth` `wavpack` `wcmv` `webp` `webvtt` `westwood_snd1` `wmalossless` `wmapro` `wmav1` `wmav2` `wmavoice` `wmv1` `wmv2` `wmv3` `wmv3image` `wnv1` `wrapped_avframe` `ws_vqa` `xan_dpcm` `xan_wc3` `xan_wc4` `xbin` `xbm` `xface` `xma1` `xma2` `xpm` `xsub` `xwd` `y41p` `ylc` `yop` `yuv4` `zerocodec` `zlib` `zmbv`

#### Decoding Packages

`012v` `4xm` `8bps` `8svx_exp` `8svx_fib` `aac_at` `aac_fixed` `aac_latm` `aac` `aasc` `ac3_at` `ac3_fixed` `ac3` `acelp.kelvin` `adpcm_4xm` `adpcm_adx` `adpcm_afc` `adpcm_agm` `adpcm_aica` `adpcm_ct` `adpcm_dtk` `adpcm_ea_maxis_xa` `adpcm_ea_r1` `adpcm_ea_r2` `adpcm_ea_r3` `adpcm_ea_xas` `adpcm_ea` `adpcm_ima_amv` `adpcm_ima_apc` `adpcm_ima_dat4` `adpcm_ima_dk3` `adpcm_ima_dk4` `adpcm_ima_ea_eacs` `adpcm_ima_ea_sead` `adpcm_ima_iss` `adpcm_ima_oki` `adpcm_ima_qt_at` `adpcm_ima_qt` `adpcm_ima_rad` `adpcm_ima_smjpeg` `adpcm_ima_wav` `adpcm_ima_ws` `adpcm_ms` `adpcm_mtaf` `adpcm_psx` `adpcm_sbpro_2` `adpcm_sbpro_3` `adpcm_sbpro_4` `adpcm_swf` `adpcm_thp_le` `adpcm_thp` `adpcm_vima` `adpcm_xa` `adpcm_yamaha` `agm` `aic` `alac_at` `alac` `alias_pix` `als` `amr_nb_at` `amrnb` `amrwb` `amv` `anm` `ansi` `ape` `apng` `aptx_hd` `aptx` `arbc` `ass` `asv1` `asv2` `atrac1` `atrac3` `atrac3al` `atrac3plus` `atrac3plusal` `atrac9` `aura2` `aura` `avrn` `avrp` `avs` `avui` `ayuv` `bethsoftvid` `bfi` `binkaudio_dct` `binkaudio_rdft` `binkvideo` `bintext` `bitpacked` `bmp` `bmv_audio` `bmv_video` `brender_pix` `c93` `camstudio` `camtasia` `cavs` `cc_dec` `cdgraphics` `cdxl` `cfhd` `cinepak` `clearvideo` `cljr` `cllc` `comfortnoise` `cook` `cpia` `cyuv` `dca` `dds` `dfa` `dirac` `dnxhd` `dolby_e` `dpx` `dsd_lsbf_planar` `dsd_lsbf` `dsd_msbf_planar` `dsd_msbf` `dsicinaudio` `dsicinvideo` `dss_sp` `dst` `dvaudio` `dvbsub` `dvdsub` `dvvideo` `dxa` `dxtory` `dxv` `eac3_at` `eac3` `eacmv` `eamad` `eatgq` `eatgv` `eatqi` `escape124` `escape130` `evrc` `exr` `ffv1` `ffvhuff` `fic` `fits` `flac` `flashsv2` `flashsv` `flic` `flv` `fmvc` `fraps` `frwu` `g2m` `g722` `g723_1` `g726` `g726le` `g729` `gdv` `gif` `gremlin_dpcm` `gsm_ms_at` `gsm_ms` `gsm` `h261` `h263` `h263i` `h263p` `h264` `hap` `hcom` `hevc` `hnm4video` `hq_hqa` `hqx` `huffyuv` `hymt` `iac` `idcinvideo` `idf` `iff` `ilbc_at` `ilbc` `imc` `imm4` `imm5` `indeo2` `indeo3` `indeo4` `indeo5` `interplay_dpcm` `interplayacm` `interplayvideo` `jacosub` `jpeg2000` `jpegls` `jv` `kgv1` `kmvc` `lagarith` `libaom-av1` `libdav1d` `libfdk_aac` `libgsm_ms` `libgsm` `libopencore_amrnb` `libopencore_amrwb` `libopenh264` `libopenjpeg` `libopus` `libspeex` `libvorbis` `libvpx-vp9` `libvpx` `loco` `lscr` `m101` `mace3` `mace6` `magicyuv` `mdec` `metasound` `microdvd` `mimic` `mjpeg` `mjpegb` `mlp` `mmvideo` `motionpixels` `mov_text` `mp1_at` `mp1` `mp1float` `mp2_at` `mp2` `mp2float` `mp3_at` `mp3` `mp3adu` `mp3adufloat` `mp3float` `mp3on4` `mp3on4float` `mpc7` `mpc8` `mpeg1video` `mpeg2video` `mpeg4` `mpegvideo` `mpl2` `msa1` `mscc` `msmpeg4` `msmpeg4v1` `msmpeg4v2` `msrle` `mss1` `mss2` `msvideo1` `mszh` `mts2` `mvc1` `mvc2` `mwsc` `mxpeg` `nellymoser` `nuv` `on2avc` `opus` `paf_audio` `paf_video` `pam` `pbm` `pcm_alaw_at` `pcm_alaw` `pcm_bluray` `pcm_dvd` `pcm_f16le` `pcm_f24le` `pcm_f32be` `pcm_f32le` `pcm_f64be` `pcm_f64le` `pcm_lxf` `pcm_mulaw_at` `pcm_mulaw` `pcm_s16be_planar` `pcm_s16be` `pcm_s16le_planar` `pcm_s16le` `pcm_s24be` `pcm_s24daud` `pcm_s24le_planar` `pcm_s24le` `pcm_s32be` `pcm_s32le_planar` `pcm_s32le` `pcm_s64be` `pcm_s64le` `pcm_s8_planar` `pcm_s8` `pcm_u16be` `pcm_u16le` `pcm_u24be` `pcm_u24le` `pcm_u32be` `pcm_u32le` `pcm_u8` `pcm_vidc` `pcm_zork` `pcx` `pgm` `pgmyuv` `pgssub` `pictor` `pixlet` `pjs` `png` `ppm` `prores` `prosumer` `psd` `ptx` `qcelp` `qdm2_at` `qdm2` `qdmc_at` `qdmc` `qdraw` `qpeg` `qtrle` `r10k` `r210` `ralf` `rasc` `rawvideo` `real_144` `real_288` `realtext` `rl2` `roq_dpcm` `roqvideo` `rpza` `rscc` `rv10` `rv20` `rv30` `rv40` `s302m` `sami` `sanm` `sbc` `scpr` `screenpresso` `sdx2_dpcm` `sgi` `sgirle` `sheervideo` `shorten` `sipr` `smackaud` `smackvid` `smc` `smvjpeg` `snow` `sol_dpcm` `sonic` `sp5x` `speedhq` `srgc` `srt` `ssa` `stl` `subrip` `subviewer1` `subviewer` `sunrast` `svq1` `svq3` `tak` `targa_y216` `targa` `tdsc` `text` `theora` `thp` `tiertexseqvideo` `tiff` `tmv` `truehd` `truemotion1` `truemotion2` `truemotion2rt` `truespeech` `tscc2` `tta` `twinvq` `txd` `ultimotion` `utvideo` `v210` `v210x` `v308` `v408` `v410` `vb` `vble` `vc1` `vc1image` `vcr1` `vmdaudio` `vmdvideo` `vmnc` `vorbis` `vp3` `vp4` `vp5` `vp6` `vp6a` `vp6f` `vp7` `vp8` `vp9` `vplayer` `vqavideo` `wavesynth` `wavpack` `wcmv` `webp` `webvtt` `wmalossless` `wmapro` `wmav1` `wmav2` `wmavoice` `wmv1` `wmv2` `wmv3` `wmv3image` `wnv1` `wrapped_avframe` `ws_snd1` `xan_dpcm` `xan_wc3` `xan_wc4` `xbin` `xbm` `xface` `xl` `xma1` `xma2` `xpm` `xsub` `xwd` `y41p` `ylc` `yop` `yuv4` `zerocodec` `zlib` `zmbv`

### Encode

#### Encoding Codecs

`a64_multi5` `a64_multi` `aac` `ac3` `adpcm_adx` `adpcm_g722` `adpcm_g726` `adpcm_g726le` `adpcm_ima_qt` `adpcm_ima_wav` `adpcm_ms` `adpcm_swf` `adpcm_yamaha` `alac` `alias_pix` `amr_nb` `amv` `apng` `aptx_hd` `aptx` `ass` `asv1` `asv2` `av1` `avrp` `avui` `ayuv` `bmp` `cinepak` `cljr` `comfortnoise` `dirac` `dnxhd` `dpx` `dts` `dvb_subtitle` `dvd_subtitle` `dvvideo` `eac3` `ffv1` `ffvhuff` `fits` `flac` `flashsv2` `flashsv` `flv1` `g723_1` `gif` `gsm_ms` `gsm` `h261` `h263` `h263p` `h264` `hap` `hevc` `huffyuv` `ilbc` `jpeg2000` `jpegls` `ljpeg` `magicyuv` `mjpeg` `mlp` `mov_text` `mp2` `mp3` `mpeg1video` `mpeg2video` `mpeg4` `msmpeg4v2` `msmpeg4v3` `msvideo1` `nellymoser` `opus` `pam` `pbm` `pcm_alaw` `pcm_dvd` `pcm_f32be` `pcm_f32le` `pcm_f64be` `pcm_f64le` `pcm_mulaw` `pcm_s16be_planar` `pcm_s16be` `pcm_s16le_planar` `pcm_s16le` `pcm_s24be` `pcm_s24daud` `pcm_s24le_planar` `pcm_s24le` `pcm_s32be` `pcm_s32le_planar` `pcm_s32le` `pcm_s64be` `pcm_s64le` `pcm_s8_planar` `pcm_s8` `pcm_u16be` `pcm_u16le` `pcm_u24be` `pcm_u24le` `pcm_u32be` `pcm_u32le` `pcm_u8` `pcm_vidc` `pcx` `pgm` `pgmyuv` `png` `ppm` `prores` `qtrle` `r10k` `r210` `ra_144` `rawvideo` `roq_dpcm` `roq` `rv10` `rv20` `s302m` `sbc` `sgi` `snow` `sonic` `sonicls` `speex` `subrip` `sunrast` `svq1` `targa` `text` `theora` `tiff` `truehd` `tta` `utvideo` `v210` `v308` `v408` `v410` `vorbis` `vp8` `vp9` `wavpack` `webp` `webvtt` `wmav1` `wmav2` `wmv1` `wmv2` `wrapped_avframe` `xbm` `xface` `xsub` `xwd` `y41p` `yuv4` `zlib` `zmbv`

#### Encoding Packages

`a64multi5` `a64multi` `aac_at` `aac` `ac3_fixed` `ac3` `adpcm_adx` `adpcm_ima_qt` `adpcm_ima_wav` `adpcm_ms` `adpcm_swf` `adpcm_yamaha` `alac_at` `alac` `alias_pix` `amv` `apng` `aptx_hd` `aptx` `ass` `asv1` `asv2` `avrp` `avui` `ayuv` `bmp` `cinepak` `cljr` `comfortnoise` `dca` `dnxhd` `dpx` `dvbsub` `dvdsub` `dvvideo` `eac3` `ffv1` `ffvhuff` `fits` `flac` `flashsv2` `flashsv` `flv` `g722` `g723_1` `g726` `g726le` `gif` `h261` `h263` `h263p` `h264_videotoolbox` `hap` `hevc_videotoolbox` `huffyuv` `ilbc_at` `jpeg2000` `jpegls` `libaom-av1` `libfdk_aac` `libgsm_ms` `libgsm` `libmp3lame` `libopencore_amrnb` `libopenh264` `libopenjpeg` `libopus` `libspeex` `libtheora` `libtwolame` `libvorbis` `libvpx-vp9` `libvpx` `libwavpack` `libwebp_anim` `libwebp` `libx264` `libx264rgb` `libx265` `libxvid` `ljpeg` `magicyuv` `mjpeg` `mlp` `mov_text` `mp2` `mp2fixed` `mpeg1video` `mpeg2video` `mpeg4` `msmpeg4` `msmpeg4v2` `msvideo1` `nellymoser` `opus` `pam` `pbm` `pcm_alaw_at` `pcm_alaw` `pcm_dvd` `pcm_f32be` `pcm_f32le` `pcm_f64be` `pcm_f64le` `pcm_mulaw_at` `pcm_mulaw` `pcm_s16be_planar` `pcm_s16be` `pcm_s16le_planar` `pcm_s16le` `pcm_s24be` `pcm_s24daud` `pcm_s24le_planar` `pcm_s24le` `pcm_s32be` `pcm_s32le_planar` `pcm_s32le` `pcm_s64be` `pcm_s64le` `pcm_s8_planar` `pcm_s8` `pcm_u16be` `pcm_u16le` `pcm_u24be` `pcm_u24le` `pcm_u32be` `pcm_u32le` `pcm_u8` `pcm_vidc` `pcx` `pgm` `pgmyuv` `png` `ppm` `prores_aw` `prores_ks` `prores` `qtrle` `r10k` `r210` `rawvideo` `real_144` `roq_dpcm` `roqvideo` `rv10` `rv20` `s302m` `sbc` `sgi` `snow` `sonic` `sonicls` `srt` `ssa` `subrip` `sunrast` `svq1` `targa` `text` `tiff` `truehd` `tta` `utvideo` `v210` `v308` `v408` `v410` `vc2` `vorbis` `wavpack` `webvtt` `wmav1` `wmav2` `wmv1` `wmv2` `wrapped_avframe` `xbm` `xface` `xsub` `xwd` `y41p` `yuv4` `zlib` `zmbv`

### Muxers

`3g2` `3gp` `a64` `ac3` `adts` `adx` `aiff` `alaw` `amr` `apng` `aptx` `aptx_hd` `asf` `asf_stream` `ass` `ast` `au` `avi` `avm2` `avs2` `bit` `caf` `cavsvideo` `chromaprint` `codec2` `codec2raw` `crc` `dash` `data` `daud` `dirac` `dnxhd` `dts` `dv` `dvd` `eac3` `f32be` `f32le` `f4v` `f64be` `f64le` `ffmetadata` `fifo` `fifo_test` `film_cpk` `filmstrip` `fits` `flac` `flv` `framecrc` `framehash` `framemd5` `g722` `g723_1` `g726` `g726le` `gif` `gsm` `gxf` `h261` `h263` `h264` `hash` `hds` `hevc` `hls` `ico` `ilbc` `image2` `image2pipe` `ipod` `ircam` `ismv` `ivf` `jacosub` `latm` `lrc` `m4v` `matroska` `md5` `microdvd` `mjpeg` `mkvtimestamp_v2` `mlp` `mmf` `mov` `mp2` `mp3` `mp4` `mpeg` `mpeg1video` `mpeg2video` `mpegts` `mpjpeg` `mulaw` `mxf` `mxf_d10` `mxf_opatom` `null` `nut` `oga` `ogg` `ogv` `oma` `opus` `psp` `rawvideo` `rm` `roq` `rso` `rtp` `rtp_mpegts` `rtsp` `s16be` `s16le` `s24be` `s24le` `s32be` `s32le` `s8` `sap` `sbc` `scc` `sdl,sdl2` `segment` `singlejpeg` `smjpeg` `smoothstreaming` `sox` `spdif` `spx` `srt` `stream_segment,ssegment` `streamhash` `sup` `svcd` `swf` `tee` `truehd` `tta` `u16be` `u16le` `u24be` `u24le` `u32be` `u32le` `u8` `uncodedframecrc` `vc1` `vc1test` `vcd` `vidc` `vob` `voc` `w64` `wav` `webm` `webm_chunk` `webm_dash_manifest` `webp` `webvtt` `wtv` `wv` `yuv4mpegpipe`

### Demuxers

`3dostr` `4xm` `aa` `aac` `ac3` `acm` `act` `adf` `adp` `ads` `adx` `aea` `afc` `aiff` `aix` `alaw` `alias_pix` `amr` `amrnb` `amrwb` `anm` `apc` `ape` `apng` `aptx` `aptx_hd` `aqtitle` `asf` `asf_o` `ass` `ast` `au` `avfoundation` `avi` `avisynth` `avr` `avs` `avs2` `bethsoftvid` `bfi` `bfstm` `bin` `bink` `bit` `bmp_pipe` `bmv` `boa` `brender_pix` `brstm` `c93` `caf` `cavsvideo` `cdg` `cdxl` `cine` `codec2` `codec2raw` `concat` `data` `daud` `dcstr` `dds_pipe` `dfa` `dhav` `dirac` `dnxhd` `dpx_pipe` `dsf` `dsicin` `dss` `dts` `dtshd` `dv` `dvbsub` `dvbtxt` `dxa` `ea` `ea_cdata` `eac3` `epaf` `exr_pipe` `f32be` `f32le` `f64be` `f64le` `ffmetadata` `film_cpk` `filmstrip` `fits` `flac` `flic` `flv` `frm` `fsb` `g722` `g723_1` `g726` `g726le` `g729` `gdv` `genh` `gif` `gif_pipe` `gsm` `gxf` `h261` `h263` `h264` `hcom` `hevc` `hls` `hnm` `ico` `idcin` `idf` `iff` `ifv` `ilbc` `image2` `image2pipe` `ingenient` `ipmovie` `ircam` `iss` `iv8` `ivf` `ivr` `j2k_pipe` `jacosub` `jpeg_pipe` `jpegls_pipe` `jv` `kux` `lavfi` `libmodplug` `live_flv` `lmlm4` `loas` `lrc` `lvf` `lxf` `m4v` `matroska,webm` `mgsts` `microdvd` `mjpeg` `mjpeg_2000` `mlp` `mlv` `mm` `mmf` `mov,mp4,m4a,3gp,3g2,mj2` `mp3` `mpc` `mpc8` `mpeg` `mpegts` `mpegtsraw` `mpegvideo` `mpjpeg` `mpl2` `mpsub` `msf` `msnwctcp` `mtaf` `mtv` `mulaw` `musx` `mv` `mvi` `mxf` `mxg` `nc` `nistsphere` `nsp` `nsv` `nut` `nuv` `ogg` `oma` `paf` `pam_pipe` `pbm_pipe` `pcx_pipe` `pgm_pipe` `pgmyuv_pipe` `pictor_pipe` `pjs` `pmp` `png_pipe` `ppm_pipe` `psd_pipe` `psxstr` `pva` `pvf` `qcp` `qdraw_pipe` `r3d` `rawvideo` `realtext` `redspark` `rl2` `rm` `roq` `rpl` `rsd` `rso` `rtp` `rtsp` `s16be` `s16le` `s24be` `s24le` `s32be` `s32le` `s337m` `s8` `sami` `sap` `sbc` `sbg` `scc` `sdp` `sdr2` `sds` `sdx` `ser` `sgi_pipe` `shn` `siff` `sln` `smjpeg` `smk` `smush` `sol` `sox` `spdif` `srt` `stl` `subviewer` `subviewer1` `sunrast_pipe` `sup` `svag` `svg_pipe` `swf` `tak` `tedcaptions` `thp` `tiertexseq` `tiff_pipe` `tmv` `truehd` `tta` `tty` `txd` `ty` `u16be` `u16le` `u24be` `u24le` `u32be` `u32le` `u8` `v210` `v210x` `vag` `vc1` `vc1test` `vidc` `vividas` `vivo` `vmd` `vobsub` `voc` `vpk` `vplayer` `vqf` `w64` `wav` `wc3movie` `webm_dash_manifest` `webp_pipe` `webvtt` `wsaud` `wsd` `wsvqa` `wtv` `wv` `wve` `xa` `xbin` `xmv` `xpm_pipe` `xvag` `xwd_pipe` `xwma` `yop` `yuv4mpegpipe`

### Pixel Formats

`0bgr` `0rgb` `abgr` `argb` `ayuv64be` `ayuv64le` `bayer_bggr16be` `bayer_bggr16le` `bayer_bggr8` `bayer_gbrg16be` `bayer_gbrg16le` `bayer_gbrg8` `bayer_grbg16be` `bayer_grbg16le` `bayer_grbg8` `bayer_rggb16be` `bayer_rggb16le` `bayer_rggb8` `bgr0` `bgr24` `bgr444be` `bgr444le` `bgr48be` `bgr48le` `bgr4_byte` `bgr4` `bgr555be` `bgr555le` `bgr565be` `bgr565le` `bgr8` `bgra64be` `bgra64le` `bgra` `cuda` `d3d11` `d3d11va_vld` `drm_prime` `dxva2_vld` `gbrap10be` `gbrap10le` `gbrap12be` `gbrap12le` `gbrap16be` `gbrap16le` `gbrap` `gbrapf32be` `gbrapf32le` `gbrp10be` `gbrp10le` `gbrp12be` `gbrp12le` `gbrp14be` `gbrp14le` `gbrp16be` `gbrp16le` `gbrp9be` `gbrp9le` `gbrp` `gbrpf32be` `gbrpf32le` `gray10be` `gray10le` `gray12be` `gray12le` `gray14be` `gray14le` `gray16be` `gray16le` `gray9be` `gray9le` `gray` `grayf32be` `grayf32le` `mediacodec` `mmal` `monob` `monow` `nv12` `nv16` `nv20be` `nv20le` `nv21` `nv24` `nv42` `opencl` `p010be` `p010le` `p016be` `p016le` `pal8` `qsv` `rgb0` `rgb24` `rgb444be` `rgb444le` `rgb48be` `rgb48le` `rgb4_byte` `rgb4` `rgb555be` `rgb555le` `rgb565be` `rgb565le` `rgb8` `rgba64be` `rgba64le` `rgba` `uyvy422` `uyyvyy411` `vaapi_idct` `vaapi_moco` `vaapi_vld` `vdpau` `videotoolbox_vld` `xvmc` `xyz12be` `xyz12le` `ya16be` `ya16le` `ya8` `yuv410p` `yuv411p` `yuv420p10be` `yuv420p10le` `yuv420p12be` `yuv420p12le` `yuv420p14be` `yuv420p14le` `yuv420p16be` `yuv420p16le` `yuv420p9be` `yuv420p9le` `yuv420p` `yuv422p10be` `yuv422p10le` `yuv422p12be` `yuv422p12le` `yuv422p14be` `yuv422p14le` `yuv422p16be` `yuv422p16le` `yuv422p9be` `yuv422p9le` `yuv422p` `yuv440p10be` `yuv440p10le` `yuv440p12be` `yuv440p12le` `yuv440p` `yuv444p10be` `yuv444p10le` `yuv444p12be` `yuv444p12le` `yuv444p14be` `yuv444p14le` `yuv444p16be` `yuv444p16le` `yuv444p9be` `yuv444p9le` `yuv444p` `yuva420p10be` `yuva420p10le` `yuva420p16be` `yuva420p16le` `yuva420p9be` `yuva420p9le` `yuva420p` `yuva422p10be` `yuva422p10le` `yuva422p12be` `yuva422p12le` `yuva422p16be` `yuva422p16le` `yuva422p9be` `yuva422p9le` `yuva422p` `yuva444p10be` `yuva444p10le` `yuva444p12be` `yuva444p12le` `yuva444p16be` `yuva444p16le` `yuva444p9be` `yuva444p9le` `yuva444p` `yuvj411p` `yuvj420p` `yuvj422p` `yuvj440p` `yuvj444p` `yuyv422` `yvyu422`

### Bitstream Filters

`aac_adtstoasc` `av1_frame_split` `av1_metadata` `chomp` `dca_core` `dump_extra` `eac3_core` `extract_extradata` `filter_units` `h264_metadata` `h264_mp4toannexb` `h264_redundant_pps` `hapqa_extract` `hevc_metadata` `hevc_mp4toannexb` `imxdump` `mjpeg2jpeg` `mjpegadump` `mov2textsub` `mp3decomp` `mpeg2_metadata` `mpeg4_unpack_bframes` `noise` `null` `prores_metadata` `remove_extra` `text2movsub` `trace_headers` `truehd_core` `vp9_metadata` `vp9_raw_reorder` `vp9_superframe_split` `vp9_superframe`

### Hardware Acceleration

`videotoolbox`

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
