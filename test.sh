


export P4PORT=ssl:symapip4.cec.lab.emc.com:3666
cd /emc/symswbld/
#perl bldse61_840.pl   -$SE_build_version -daily  -nocimom > /emc/symswbld/SE840/se840_se.log 2>&1
#se840 , se831



SE_build_version='se840'
#seval=`tr  '[:lower:]' '[:upper:]' $SE_build_version`




seval=`echo $SE_build_version | tr  '[:lower:]' '[:upper:]'`
perl bldse61_jenkin.pl -$SE_build_version -daily  -nocimom > /emc/symswbld/SE840/se840_se.log 2>&1


@@@@ 

Value=`ls -ltr /emc/symswbld/SMI_CACHE_VAPP/SE840 | tail -1 | awk ' { print $NF } ' | tr '[:upper:]' '[:lower:]'`


