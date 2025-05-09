#!/bin/bash

SRC="vendor_xiaomi_lavender-1"
DST="vendor_xiaomi_lavender"

FILES=(
"vendor/lib/egl/libEGL_adreno.so"
"vendor/lib/egl/libGLESv1_CM_adreno.so"
"vendor/lib/egl/libGLESv2_adreno.so"
"vendor/lib/egl/libq3dtools_adreno.so"
"vendor/lib/hw/gralloc.msm8953.so"
"vendor/lib/hw/sensors.msm8953.so"
"vendor/lib/libC2D2.so"
"vendor/lib/libCB.so"
"vendor/lib/libOpenCL.so"
"vendor/lib/libadreno_utils.so"
"vendor/lib/libbccQTI.so"
"vendor/lib/libgsl.so"
"vendor/lib/libllvm-qcom.so"
"vendor/lib/libmm-abl.so"
"vendor/lib/libmm-qcamera.so"
"vendor/lib/libmmcamera_interface.so"
"vendor/lib/libmmjpeg_interface.so"
"vendor/lib/libmmstillomx.so"
"vendor/lib/libqdMetaData.so"
"vendor/lib/libqservice.so"
"vendor/lib/libtinyxml.so"
"vendor/lib64/egl/libEGL_adreno.so"
"vendor/lib64/egl/libGLESv1_CM_adreno.so"
"vendor/lib64/egl/libGLESv2_adreno.so"
"vendor/lib64/egl/libq3dtools_adreno.so"
"vendor/lib64/hw/gralloc.msm8953.so"
"vendor/lib64/hw/sensors.msm8953.so"
"vendor/lib64/libC2D2.so"
"vendor/lib64/libCB.so"
"vendor/lib64/libOpenCL.so"
"vendor/lib64/libadreno_utils.so"
"vendor/lib64/libbccQTI.so"
"vendor/lib64/libgsl.so"
"vendor/lib64/libllvm-qcom.so"
"vendor/lib64/libmm-abl.so"
"vendor/lib64/libmm-qcamera.so"
"vendor/lib64/libmmcamera_interface.so"
"vendor/lib64/libmmjpeg_interface.so"
"vendor/lib64/libmmstillomx.so"
"vendor/lib64/libqdMetaData.so"
"vendor/lib64/libqservice.so"
"vendor/lib64/libtinyxml.so"
)

for FILE in "${FILES[@]}"; do
    SRC_FILE="$SRC/proprietary/$FILE"
    DST_FILE="$DST/proprietary/$FILE"
    DST_DIR=$(dirname "$DST_FILE")

    if [ -f "$SRC_FILE" ]; then
        mkdir -p "$DST_DIR"
        cp -fv "$SRC_FILE" "$DST_FILE"
    else
        echo "WARNING: $SRC_FILE not found!"
    fi
done
