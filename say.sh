#!/bin/sh
TMP=/tmp/jsay.wav
echo "$1" | open_jtalk \
-m /usr/share/hts-voice/miku/miku_Voice_TYPE-β.htsvoice \
-x /var/lib/mecab/dic/open-jtalk/naist-jdic \
-r 0.7 \
-jf 3.0 \
-ow $TMP && \
aplay --quiet $TMP
#rm -f $TMP
