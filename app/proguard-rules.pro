# ProGuard rules for NominaApp
# WebView app - keep all classes
-keep class com.berrocal.nominaapp.** { *; }
-keepclassmembers class * extends android.webkit.WebViewClient { *; }
-keepclassmembers class * extends android.webkit.WebChromeClient { *; }
