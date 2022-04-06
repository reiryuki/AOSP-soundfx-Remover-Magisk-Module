(

MODPATH=${0%/*}
API=`getprop ro.build.version.sdk`

# debug
exec 2>$MODPATH/debug.log
set -x

# wait
sleep 20

# mount
AML=/data/adb/modules/aml
if [ ! -d $AML ] || [ -f $AML/disable ]; then
  DIR=$MODPATH/system/vendor
else
  DIR=$AML/system/vendor
fi
FILE=`find $DIR/odm/etc -maxdepth 1 -type f -name *audio*effects*.conf\
      -o -name *audio*effects*.xml -o -name *audio*policy*.conf\
      -o -name *stage*policy*.conf -o -name *audio*policy*.xml`
if [ "$FILE" ]; then
  for i in $FILE; do
    j="$(echo $i | sed "s|$DIR||")"
    umount $j
    mount -o bind $i $j
  done
fi

# restart
if [ "$API" -ge 24 ]; then
  killall audioserver
else
  killall mediaserver
fi

) 2>/dev/null


