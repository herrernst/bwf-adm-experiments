#!sh

ear-utils make_test_bwf -i MT_NID_20_20000_-15_dBFS_48k_PCM24-10s.wav -m top-vog.yaml minimal_atmos-top-vog.wav
ear-render -s "0+5+0" minimal_atmos-top-vog.wav minimal_atmos-top-vog-5.1.wav
ear-render -s "4+5+0" minimal_atmos-top-vog.wav minimal_atmos-top-vog-5.1.4.wav

ear-utils make_test_bwf -i MT_NID_20_20000_-15_dBFS_48k_PCM24-10s.wav -m moving.yaml minimal_atmos-moving.wav
ear-render -s "0+5+0" minimal_atmos-moving.wav minimal_atmos-moving-5.1.wav
ear-render -s "4+5+0" minimal_atmos-moving.wav minimal_atmos-moving-5.1.4.wav

ffmpeg -y -i minimal_atmos-moving-5.1.wav minimal_atmos-moving-5.1.ac3

exit 0

ear-utils dump_axml minimal_atmos-moving.wav