. ./cmd.sh
[ -f path.sh ] && . ./path.sh
set -e
alidir=/media/Drive/kaldi/egs/wsj/s5/exp/my_test_eval93_tri1_ali
num_tgt=$(hmm-info --print-args=false $alidir/final.mdl | grep pdfs | awk '{ print $NF }')
echo $num_tgt
dest_dir=$alidir/labels.txt
var=1
echo $var
for i in /media/Drive/kaldi/egs/wsj/s5/exp/my_test_eval93_tri1_ali/ali.*.gz;
do ali-to-pdf $alidir/final.mdl ark:"gunzip -c $i |" "ark,t,f:$alidir/my.${var}.ark";
let "var += 1"
done;
cd exp/my_test_eval93_tri1_ali
cat my.*.ark > merged_labels.txt
