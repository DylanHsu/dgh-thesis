cat tnpKey.txt  | while read a b
do
  #echo $a $b
  #ls *ptBin*etaBin*.pdf | grep $a | sed "s#${a}_#$b/#g"
  exemplaryBins=`ls *ptBin*etaBin*.pdf | grep $a`
  for bin in $exemplaryBins
  do
    newFile=`echo $bin | sed "s#${a}_#${b}/plots/#g"`
    cp $newFile $bin
  done
done
