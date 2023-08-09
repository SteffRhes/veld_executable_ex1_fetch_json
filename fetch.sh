out_data=/veld/output/a/data.json
out_log=/veld/output/b/log.txt

> $out_log
echo "fetching data at $(date -Is)" 2>&1 | tee $out_log
rand_int=$(($RANDOM %100 + 1))
echo "random id: ${rand_int}" 2>&1 | tee $out_log
wget https://dummyjson.com/posts/$rand_int -O $out_data 2>&1 | tee $out_log
