--- chrome/updater/util/posix_util.cc.orig	2025-05-07 06:48:23 UTC
+++ chrome/updater/util/posix_util.cc
@@ -20,7 +20,7 @@
 #include "chrome/updater/updater_branding.h"
 #include "chrome/updater/util/util.h"
 
-#if BUILDFLAG(IS_LINUX)
+#if BUILDFLAG(IS_LINUX) || BUILDFLAG(IS_BSD)
 #include "chrome/updater/util/linux_util.h"
 #endif
 
