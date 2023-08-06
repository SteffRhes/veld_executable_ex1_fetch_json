out_data=/veld/output/a/data.json
out_log=/veld/output/b/log_fetch.txt

> $out_log
echo "fetching data at $(date -Is)" >> $out_log
rand_int=$(($RANDOM %100 + 1))
echo "random id: ${rand_int}" >> $out_log
wget https://dummyjson.com/posts/$rand_int -O $out_data 2>&1 | tee >> $out_log
