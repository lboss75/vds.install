set PATH=%PATH%;..\..\..\wix\
candle.exe -ext WixUIExtension -ext WixUtilExtension -dLanguage=1033 -dSourceDir=..\..\..\vds\build -dSourceDirTools=..\..\..\vds.net -dConfig=Release -dCulture=en-us vds.wxs -out out\vds-en.wixobj
light.exe -ext WixUIExtension -ext WixUtilExtension out\vds-en.wixobj -cultures:en-us -loc vds.en-us.wxl -out out\vds-en-us.msi

candle.exe -ext WixUIExtension -ext WixUtilExtension -dLanguage=1049 -dSourceDir=..\..\..\vds\build -dSourceDirTools=..\..\..\vds.net -dConfig=Release -dCulture=ru-ru vds.wxs -out out\vds-ru.wixobj
light.exe -ext WixUIExtension -ext WixUtilExtension out\vds-ru.wixobj -cultures:ru-ru -loc vds.ru-ru.wxl -out out\vds-ru-ru.msi