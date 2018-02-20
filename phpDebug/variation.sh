export LC_NUMERIC=C

for i in {1..20}
do
  curl -so /dev/null -w "${time_total} \n" http://localhost/
done | awk '{sum +=$1; n++; print $1} END {if (n > 0) print} "AVG: " sum / n; }'
