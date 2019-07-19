rm tnpThesisJobArbs.txt
cat tnpKey.txt  | while read a b
do
  #echo $a $b
  #ls *ptBin*etaBin*.pdf | grep $a | sed "s#${a}_#$b/#g"
  exemplaryBins=`ls *ptBin*etaBin*.pdf | grep $a | sed "s#${a}_##g" | sed 's/.pdf//g'`
  for bin in $exemplaryBins
  do
    grep $bin $b/jobArgs.txt >> tnpThesisJobArgs.txt
  done
done
