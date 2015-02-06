apkBaseName=$1
tempSmaliDir=$2

if [ "$apkBaseName" = "Phone" ];then
        echo ">>> in custom_app for $apkBaseName to add some permissions for android 4.3"
 		sed -i '/<original-package android:name="com.android.phone" \/>/a\<uses-permission android:name="android.permission.MANAGE_USERS" \/>\n\<uses-permission android:name="android.permission.UPDATE_APP_OPS_STATS" \/>\n\<uses-permission android:name="android.permission.CONNECTIVITY_INTERNAL" \/>' $tempSmaliDir/AndroidManifest.xml

        echo ">>> in custom_app for $apkBaseName to change some permissions for android 4.3"
        sed -i 's#android:name="android.permission.SEND_SMS_NO_CONFIRMATION"#android:name="android.permission.SEND_RESPOND_VIA_MESSAGE"#g' $tempSmaliDir/AndroidManifest.xml

        echo ">>> in custom_app for $apkBaseName to adjust the interface "registerForNetworkLocked" with "registerForPersoLocked""
        find $tempSmaliDir/ -name "*.smali" | xargs sed -i 's#registerForNetworkLocked#registerForPersoLocked#g'  


elif [ "$apkBaseName" = "Settings" ];then
    echo ">>> in custom_app $apkBaseName"
	
	# Remove the Official Verify Preference.
	sed -i -e "/^\.method.*setOfficialVerifyPreference()V/,/^\.end method/d" $tempSmaliDir/smali/com/android/settings/DeviceInfoSettings.smali
	sed -i -e "/setOfficialVerifyPreference/d" $tempSmaliDir/smali/com/android/settings/DeviceInfoSettings.smali	

	echo ">>> add origin settings"
    	sed -i '/com.baidu.key.KeySettings/r Settings/settings_headers.xml.part' $tempSmaliDir/res/xml/settings_headers.xml

    	echo ">>> in custom_app for $apkBaseName to disadble select runtime"
	sed -i 's#android:title="@string/select_runtime_title" android:key="select_runtime"#android:title="@string/select_runtime_title" android:selectable="false" android:key="select_runtime"#g' $tempSmaliDir/res/xml/development_prefs.xml

elif [ "$apkBaseName" = "Contacts" ];then
        echo ">>> in custom_app for $apkBaseName to remove AlwaysRunningService for android 4.3"
        sed -i '/AlwaysRunningService/d'  $tempSmaliDir/AndroidManifest.xml

        echo ">>> in custom_app for $apkBaseName to change some permissions for android 4.3"
        sed -i 's#android:permission="android.permission.SEND_SMS_NO_CONFIRMATION"#android:permission="android.permission.SEND_RESPOND_VIA_MESSAGE"#g' $tempSmaliDir/AndroidManifest.xml
fi
