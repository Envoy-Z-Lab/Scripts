for file in \
  vendor/lib/eglSubDriverAndroid.so \
  vendor/lib/libEGL_adreno.so \
  vendor/lib/libGLESv1_CM_adreno.so \
  vendor/lib/libGLESv2_adreno.so \
  vendor/lib/libq3dtools_adreno.so \
  vendor/lib/libq3dtools_esx.so \
  vendor/lib/vulkan.adreno.so \
  vendor/lib/libC2D2.so \
  vendor/lib/libCB.so \
  vendor/lib/libOpenCL.so \
  vendor/lib/libVkLayer_q3dtools.so \
  vendor/lib/libadreno_utils.so \
  vendor/lib/libc2d30_bltlib.so \
  vendor/lib/libgpudataproducer.so \
  vendor/lib/libgsl.so \
  vendor/lib/libhdr_tm.so \
  vendor/lib/libllvm-glnext.so \
  vendor/lib/libllvm-qcom.so \
  vendor/lib/libqseed3.so \
  vendor/lib/librs_adreno.so \
  vendor/lib/libsdm-color.so \
  vendor/lib/libsdm-diag.so \
  vendor/lib/libsdm-disp-vndapis.so \
  vendor/lib/libsdmextension.so \
  vendor/lib/libtinyxml2_1.so \
  vendor/lib64/eglSubDriverAndroid.so \
  vendor/lib64/libEGL_adreno.so \
  vendor/lib64/libGLESv1_CM_adreno.so \
  vendor/lib64/libGLESv2_adreno.so \
  vendor/lib64/libq3dtools_adreno.so \
  vendor/lib64/libq3dtools_esx.so \
  vendor/lib64/vulkan.adreno.so \
  vendor/lib64/libC2D2.so \
  vendor/lib64/libCB.so \
  vendor/lib64/libOpenCL.so \
  vendor/lib64/libVkLayer_q3dtools.so \
  vendor/lib64/libadreno_utils.so \
  vendor/lib64/libc2d30_bltlib.so \
  vendor/lib64/libgpudataproducer.so \
  vendor/lib64/libgsl.so \
  vendor/lib64/libhdr_tm.so \
  vendor/lib64/libllvm-glnext.so \
  vendor/lib64/libllvm-qcom.so \
  vendor/lib64/libqseed3.so \
  vendor/lib64/librs_adreno.so \
  vendor/lib64/libsdm-color.so \
  vendor/lib64/libsdm-diag.so \
  vendor/lib64/libsdm-disp-vndapis.so \
  vendor/lib64/libsdmextension.so \
  vendor/lib64/libtinyxml2_1.so
do
  mkdir -p "vendor_xiaomi_lavender/$(dirname "$file")"
  cp -v "proprietary/$file" "vendor_xiaomi_lavender/$file"
done
