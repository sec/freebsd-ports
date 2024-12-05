--- src/runtime/src/native/external/libunwind.cmake.orig
+++ src/runtime/src/native/external/libunwind.cmake
@@ -96,7 +96,7 @@ elseif(CLR_CMAKE_TARGET_FREEBSD)
     set(libunwind_la_SOURCES_arm_os             arm/Gos-freebsd.c)
     set(libunwind_la_SOURCES_arm_os_local       arm/Los-freebsd.c)
     set(libunwind_la_SOURCES_aarch64_os         aarch64/Gos-freebsd.c)
-    set(libunwind_la_SOURCES_aarch64_os_local   aarch64/Los-freebsd.c)
+    set(libunwind_la_SOURCES_aarch64_os_local   aarch64/Los-freebsd.c aarch64/setcontext.S)
     list(APPEND libunwind_coredump_la_SOURCES   coredump/_UCD_access_reg_freebsd.c)
 elseif(CLR_CMAKE_HOST_SUNOS)
     set(libunwind_la_SOURCES_os                 ${libunwind_la_SOURCES_os_solaris})
