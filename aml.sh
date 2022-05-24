MODPATH=${0%/*}

# destination
MODAEC=`find $MODPATH/system -type f -name *audio*effects*.conf`
MODAEX=`find $MODPATH/system -type f -name *audio*effects*.xml`

# function
remove_conf() {
for RMVS in $RMV; do
  sed -i "s/$RMVS/removed/g" $MODAEC
done
sed -i 's/path \/vendor\/lib\/soundfx\/removed//g' $MODAEC
sed -i 's/path \/system\/lib\/soundfx\/removed//g' $MODAEC
sed -i 's/path \/vendor\/lib\/removed//g' $MODAEC
sed -i 's/path \/system\/lib\/removed//g' $MODAEC
sed -i 's/library removed//g' $MODAEC
sed -i 's/uuid removed//g' $MODAEC
sed -i "/^        removed {/ {;N s/        removed {\n        }//}" $MODAEC
sed -i 's/removed { }//g' $MODAEC
}
remove_xml() {
for RMVS in $RMV; do
  sed -i "s/\"$RMVS\"/\"removed\"/g" $MODAEX
done
sed -i 's/<library name="removed" path="removed"\/>//g' $MODAEX
sed -i 's/<effect name="removed" library="removed" uuid="removed"\/>//g' $MODAEX
sed -i 's/<effect name="removed" uuid="removed" library="removed"\/>//g' $MODAEX
sed -i 's/<libsw library="removed" uuid="removed"\/>//g' $MODAEX
sed -i 's/<libhw library="removed" uuid="removed"\/>//g' $MODAEX
sed -i 's/<apply effect="removed"\/>//g' $MODAEX
sed -i 's/<library name="removed" path="removed" \/>//g' $MODAEX
sed -i 's/<effect name="removed" library="removed" uuid="removed" \/>//g' $MODAEX
sed -i 's/<effect name="removed" uuid="removed" library="removed" \/>//g' $MODAEX
sed -i 's/<libsw library="removed" uuid="removed" \/>//g' $MODAEX
sed -i 's/<libhw library="removed" uuid="removed" \/>//g' $MODAEX
sed -i 's/<apply effect="removed" \/>//g' $MODAEX
}

# store
RMV='libqcompostprocbundle.so libbundlewrapper.so
     libreverbwrapper.so libqcbassboost.so
     libqcvirt.so libqcreverb.so
     14804144-a5ee-4d24-aa88-0002a5d5c51b
     8631f300-72e2-11df-b57e-0002a5d5c51b
     23aca180-44bd-11e2-bcfd-0800200c9a66
     2c4a8c24-1581-487f-94f6-0002a5d5c51b
     d3467faa-acc7-4d34-acaf-0002a5d5c51b
     1d4033c0-8557-11df-9f2d-0002a5d5c51b
     e6c98a16-22a3-11e2-b87b-f23c91aec05e
     509a4498-561a-4bea-b3b1-0002a5d5c51b
     c8e70ecd-48ca-456e-8a4f-0002a5d5c51b
     ce772f20-847d-11df-bb17-0002a5d5c51b
     a0dac280-401c-11e3-9379-0002a5d5c51b
     48404ac9-d202-4ccc-bf84-0002a5d5c51b
     4a387fc0-8ab3-11df-8bad-0002a5d5c51b
     a8c1e5f3-293d-43cd-95ec-d5e26c02e217
     79a18026-18fd-4185-8233-0002a5d5c51b
     b707403a-a1c1-4291-9573-0002a5d5c51b
     c7a511a0-a3bb-11df-860e-0002a5d5c51b
     791fff8b-8129-4655-83a4-59bc61034c3a
     eb64ea04-973b-43d2-8f5e-0002a5d5c51b
     1b78f587-6d1c-422e-8b84-0002a5d5c51b
     f29a1400-a3bb-11df-8ddc-0002a5d5c51b
     53ef1db5-c0c0-445b-b060-e34d20ebb70a
     6987be09-b142-4b41-9056-0002a5d5c51b
     f3e178d2-ebcb-408e-8357-0002a5d5c51b
     172cdf00-a3bc-11df-a72f-0002a5d5c51b
     b08a0e38-22a5-11e2-b87b-f23c91aec05e
     aa2bebf6-47cf-4613-9bca-0002a5d5c51b
     119341a0-8469-11df-81f9-0002a5d5c51b'
     
# patch audio effects conf
#kif [ "$MODAEC" ]; then
#k  remove_conf
#kfi

# patch audio effects xml
#kif [ "$MODAEX" ]; then
#k  remove_xml
#kfi

RMV='libldnhncr.so
     fa415329-2034-4bea-b5dc-5b381c8d1e2c
     libvolumelistener.so
     ring_helper alarm_helper music_helper
     voice_helper notification_helper
     08b8b058-0590-11e5-ac71-0025b32654a0
     0956df94-0590-11e5-bdbe-0025b32654a0
     09f303e2-0590-11e5-8fdb-0025b32654a0
     0ace5c08-0590-11e5-ae9e-0025b32654a0
     0b776dde-0590-11e5-81ba-0025b32654a0
     libdynproc.so
     e0e6539b-1781-7261-676f-6d7573696340
     libasphere.so
     184e62ab-2d19-4364-9d1b-c0a40733866c
     libshoebox.so
     1eab784c-1a36-4b2a-b7fc-e34c44cab89e'

# patch audio effects conf
if [ "$MODAEC" ]; then
  remove_conf
fi

# patch audio effects xml
if [ "$MODAEX" ]; then
  remove_xml
fi








