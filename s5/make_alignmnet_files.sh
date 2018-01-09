. ./cmd.sh
[ -f path.sh ] && . ./path.sh
set -e

steps/align_si.sh data/test_eval93 data/lang_nosp exp/tri1 exp/my_test_eval93_tri1_ali