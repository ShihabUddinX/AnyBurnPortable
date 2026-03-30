!macro AnyBurn
	;32
	CopyFiles /SILENT $INSTDIR\App\tmp3264\AnyBurn(32-bit) "$INSTDIR\App\AnyBurn32"
	;64
	CopyFiles /SILENT $INSTDIR\App\tmp3264\AnyBurn(64-bit) "$INSTDIR\App\AnyBurn"
	;arm
	CopyFiles /SILENT $INSTDIR\App\tmpARM64\abcmd.exe "$INSTDIR\App\AnyBurnARM64\abcmd.exe"
	CopyFiles /SILENT $INSTDIR\App\tmpARM64\AnyBurn.exe "$INSTDIR\App\AnyBurnARM64\AnyBurn.exe"
	CopyFiles /SILENT $INSTDIR\App\tmpARM64\lame_enc.dll "$INSTDIR\App\AnyBurnARM64\lame_enc.dll"
	CopyFiles /SILENT $INSTDIR\App\tmpARM64\libFLAC.dll "$INSTDIR\App\AnyBurnARM64\libFLAC.dll"
	CopyFiles /SILENT $INSTDIR\App\tmpARM64\libvorbis.dll "$INSTDIR\App\AnyBurnARM64\libvorbis.dll"
	CopyFiles /SILENT $INSTDIR\App\tmpARM64\License.txt "$INSTDIR\App\AnyBurnARM64\License.txt"
	CopyFiles /SILENT $INSTDIR\App\tmpARM64\MACDll.dll "$INSTDIR\App\AnyBurnARM64\MACDll.dll"
	CopyFiles /SILENT $INSTDIR\App\tmpARM64\Readme.txt "$INSTDIR\App\AnyBurnARM64\Readme.txt"
	CopyFiles /SILENT $INSTDIR\App\tmpARM64\Lang "$INSTDIR\App\AnyBurnARM64\Lang"
	;remove dirs
	RMDir /r "$INSTDIR\App\tmp3264"
	RMDir /r "$INSTDIR\App\tmparm64"

!macroend
