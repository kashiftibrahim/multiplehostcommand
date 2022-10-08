for s in `cat Hosts` ; do
    h=$1
    p=$2
    echo; echo $s
    ssh -o StrictHostKeyChecking=no $s "nc -v $h $p"
done
