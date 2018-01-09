#!/bin/bash
. ./cmd.sh
. utils/parse_options.sh
corpus=/media/Drive/wsr_data/wsj
local/cstr_wsj_data_prep.sh $corpus