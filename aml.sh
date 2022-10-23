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
sed -i 's/<library name="proxy" path="removed"\/>//g' $MODAEX
sed -i 's/<effect name="removed" library="removed" uuid="removed"\/>//g' $MODAEX
sed -i 's/<effect name="removed" uuid="removed" library="removed"\/>//g' $MODAEX
sed -i 's/<libsw library="removed" uuid="removed"\/>//g' $MODAEX
sed -i 's/<libhw library="removed" uuid="removed"\/>//g' $MODAEX
sed -i 's/<apply effect="removed"\/>//g' $MODAEX
sed -i 's/<library name="removed" path="removed" \/>//g' $MODAEX
sed -i 's/<library name="proxy" path="removed" \/>//g' $MODAEX
sed -i 's/<effect name="removed" library="removed" uuid="removed" \/>//g' $MODAEX
sed -i 's/<effect name="removed" uuid="removed" library="removed" \/>//g' $MODAEX
sed -i 's/<libsw library="removed" uuid="removed" \/>//g' $MODAEX
sed -i 's/<libhw library="removed" uuid="removed" \/>//g' $MODAEX
sed -i 's/<apply effect="removed" \/>//g' $MODAEX
}

# store
RMV='libqcompostprocbundle.so
     liboffloadeffect.so
     libbundlewrapper.so
     14804144-a5ee-4d24-aa88-0002a5d5c51b
     8631f300-72e2-11df-b57e-0002a5d5c51b
     2c4a8c24-1581-487f-94f6-0002a5d5c51b
     d3467faa-acc7-4d34-acaf-0002a5d5c51b
     1d4033c0-8557-11df-9f2d-0002a5d5c51b
     509a4498-561a-4bea-b3b1-0002a5d5c51b
     c8e70ecd-48ca-456e-8a4f-0002a5d5c51b
     ce772f20-847d-11df-bb17-0002a5d5c51b
     a0dac280-401c-11e3-9379-0002a5d5c51b
     119341a0-8469-11df-81f9-0002a5d5c51b
     2f0871a2-c93c-4824-9664-42eb2909f2ef
     c7e3b29d-e797-4cf9-9912-17c1956510cc
     626499c6-647e-455e-8c45-2d106e23c755
     f8f88a03-fdf8-4554-8e60-77fbf8f2d3b0
     49004f03-3391-4c44-97dd-a043d526ea7d
     50deaa30-4a83-4b1f-bfe3-dec6d605ede0
     libreverbwrapper.so
     48404ac9-d202-4ccc-bf84-0002a5d5c51b
     4a387fc0-8ab3-11df-8bad-0002a5d5c51b
     79a18026-18fd-4185-8233-0002a5d5c51b
     b707403a-a1c1-4291-9573-0002a5d5c51b
     c7a511a0-a3bb-11df-860e-0002a5d5c51b
     eb64ea04-973b-43d2-8f5e-0002a5d5c51b
     1b78f587-6d1c-422e-8b84-0002a5d5c51b
     f29a1400-a3bb-11df-8ddc-0002a5d5c51b
     6987be09-b142-4b41-9056-0002a5d5c51b
     f3e178d2-ebcb-408e-8357-0002a5d5c51b
     172cdf00-a3bc-11df-a72f-0002a5d5c51b
     aa2bebf6-47cf-4613-9bca-0002a5d5c51b
     b8154738-a0a1-4fc0-bb79-c845a3197739
     0c84bcd9-bce4-441b-ba9e-51f80897c949
     ba0f19fe-8790-4831-a58b-1f3299dd0bae
     86d1877a-127f-4bdc-9665-c958903ad7b2
     80974a8b-b3be-4c21-8c0b-b392a54e13bc
     4f90220c-9742-4467-a9d7-122f85c01195
     c02d7dce-ca56-4aea-8c83-bbb53e5600e8
     a2cf6b45-360b-49f3-94d7-fdb9837f89e8
     libqcbassboost.so
     23aca180-44bd-11e2-bcfd-0800200c9a66
     libqcvirt.so
     e6c98a16-22a3-11e2-b87b-f23c91aec05e
     libqcreverb.so
     a8c1e5f3-293d-43cd-95ec-d5e26c02e217
     791fff8b-8129-4655-83a4-59bc61034c3a
     53ef1db5-c0c0-445b-b060-e34d20ebb70a
     b08a0e38-22a5-11e2-b87b-f23c91aec05e'
     
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
     libasphere.so
     184e62ab-2d19-4364-9d1b-c0a40733866c
     libshoebox.so
     1eab784c-1a36-4b2a-b7fc-e34c44cab89e
     libspatialaudio.so
     cc4677de-ff72-11eb-9a03-0242ac130003'
     #libdynproc.so
     #e0e6539b-1781-7261-676f-6d7573696340

# patch audio effects conf
if [ "$MODAEC" ]; then
  remove_conf
fi

# patch audio effects xml
if [ "$MODAEX" ]; then
  remove_xml
fi








