Device tree for Honor V9 Play (jimmy)

Configuration for Honor V9 Play (JMM-AL00)
========================================================

The Honor V9 Play (codenamed _"JMM-AL00"_)
It was announced on September 2017 .

## Device specifications

Basic             | Spec Sheet
-----------------:|:-------------------------
SoC               | MediaTek MT6750, Octa-core(4 x 1.5GHz Cortex A53 + 4 x 1.0GHz Cortex A53
CPU               | MediaTek MT6750
GPU               | Mali-T860
Memory            | 3/4 GB RAM
Android           | 7.0
User Interface    | EMIU 5.1
Storage           | 32 GB
MicroSD           | Up to 128 GB
Battery           | 3000 mAh (non-removable)
Display           | 720 x 1280 pixels, 5.2" (282ppi)
Rear Camera       | 13.0 MP
Front Camera      | 8.0 MP

# Hardware Info

Basic             | Spec Sheet
-----------------:|:-------------------------
TouchPanel        | each-ft5436
Camera_Main       | s5k3I8mipiraw
Camera_Sub        | ov8856mipiraw
WIFI              | CONSYS_MT6755

        git init
        git add .
        git commit -m "first commit"
        git remote add origin https://github.com/sazan123/android_device_huawei_jimmy.git
        git branch cm-14.1
        git push -u origin cm-14.1

# Build LineageOS
  
        cd (source-dir)
        source build/envsetup.sh
        breakfast jimmy
        croot
        brunch jimmy

