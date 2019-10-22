# coreutils/findutils versions
# https://ryanparman.com/posts/2019/using-gnu-command-line-tools-in-macos-instead-of-freebsd-tools/
AWK=/usr/local/opt/gawk/libexec/gnubin/awk
GREP=/usr/local/opt/grep/libexec/gnubin/grep
NPROC=/usr/local/opt/coreutils/libexec/gnubin/nproc
SED=/usr/local/opt/gnu-sed/libexec/gnubin/sed
SORT=/usr/local/opt/coreutils/libexec/gnubin/sort
TEE=/usr/local/opt/coreutils/libexec/gnubin/tee
UNIQ=/usr/local/opt/coreutils/libexec/gnubin/uniq
XARGS=/usr/local/opt/findutils/libexec/gnubin/xargs

#-------------------------------------------------------------------------------

all:
	@cat Makefile | $(GREP) "^[a-z]" | $(SED) 's/://' | $(AWK) '{print $$1}'

.PHONY: clean
clean:
	rm -Rf ./docs/*

#-------------------------------------------------------------------------------

.PHONY: config
config:
	ffmpeg -hide_banner -buildconf | $(GREP) --color=never "^    --" | $(AWK) '{print $$1}' | $(UNIQ) | $(TEE) docs/buildconf.txt

.PHONY: muxers
muxers:
	ffmpeg -hide_banner -muxers | $(GREP) --color=never "^  E " | $(AWK) '{print $$2}' | $(XARGS) -I% bash -c 'echo "\`%\`"' _ % | $(UNIQ) | $(TEE) docs/muxers.txt

.PHONY: demuxers
demuxers:
	ffmpeg -hide_banner -demuxers | $(GREP) --color=never "^ D " | $(AWK) '{print $$2}' | $(XARGS) -I% bash -c 'echo "\`%\`"' _ % | $(UNIQ) | $(TEE) docs/demuxers.txt

.PHONY: codecs-decode
codecs-decode:
	ffmpeg -hide_banner -codecs | $(GREP) --color=never "^ D" | $(GREP) --color=never -v "=" | $(AWK) '{print $$2}' | $(XARGS) -I% bash -c 'echo "\`%\`"' _ % | $(UNIQ) | $(SORT) | $(TEE) docs/codecs-decode.txt

.PHONY: codecs-encode
codecs-encode:
	ffmpeg -hide_banner -codecs | $(GREP) --color=never "^ .E" | $(GREP) --color=never -v "=" | $(AWK) '{print $$2}' | $(XARGS) -I% bash -c 'echo "\`%\`"' _ % | $(UNIQ) | $(SORT) | $(TEE) docs/codecs-encode.txt

.PHONY: decoders
decoders:
	ffmpeg -hide_banner -decoders | $(GREP) --color=never -E "^ (V|A|S)" | $(GREP) --color=never -v "=" | $(AWK) '{print $$2}' | $(XARGS) -I% bash -c 'echo "\`%\`"' _ % | $(UNIQ) | $(SORT) | $(TEE) docs/decoders.txt

.PHONY: encoders
encoders:
	ffmpeg -hide_banner -encoders | $(GREP) --color=never -E "^ (V|A|S)" | $(GREP) --color=never -v "=" | $(AWK) '{print $$2}' | $(XARGS) -I% bash -c 'echo "\`%\`"' _ % | $(UNIQ) | $(SORT) | $(TEE) docs/encoders.txt

.PHONY: bsfs
bsfs:
	ffmpeg -hide_banner -bsfs | $(GREP) --color=never -v "Bitstream filters:" | $(AWK) '{print $$1}' | $(XARGS) -I% bash -c 'echo "\`%\`"' _ % | $(UNIQ) | $(SORT) | $(TEE) docs/bsfs.txt

.PHONY: pix
pix:
	ffmpeg -hide_banner -pix_fmts | $(GREP) --color=never -E "^(I|\.)" | $(GREP) --color=never -v "=" | $(AWK) '{print $$2}' | $(XARGS) -I% bash -c 'echo "\`%\`"' _ % | $(UNIQ) | $(SORT) | $(TEE) docs/pix_fmts.txt

.PHONY: hwaccels
hwaccels:
	ffmpeg -hide_banner -hwaccels| $(GREP) --color=never -v "Hardware acceleration methods:" | $(AWK) '{print $$1}' | $(XARGS) -I% bash -c 'echo "\`%\`"' _ % | $(UNIQ) | $(SORT) | $(TEE) docs/hwaccels.txt

.PHONY: readme
readme:
	./README.sh

.PHONY: docs
docs: bsfs codecs-decode codecs-encode config decoders demuxers encoders hwaccels muxers pix readme
