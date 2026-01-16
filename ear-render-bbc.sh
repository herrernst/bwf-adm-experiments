#!sh

ear-render -s "0+5+0" bbc-panned_noise_bwf-azimuth_and_diffuse_fixed.wav panned_noise_bwf-ear.wav

ffmpeg -y -i panned_noise_bwf-ear.wav panned_noise_bwf-ear.ac3

ear-render -s "0+5+0" bbc-speech_test-diffuse_fixed.wav speech_test-ear.wav

ffmpeg -y -i speech_test-ear.wav speech_test-ear.ac3