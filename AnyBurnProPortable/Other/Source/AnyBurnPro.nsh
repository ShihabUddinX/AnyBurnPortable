!macro AnyBurnPro
	;32
	CopyFiles /SILENT $INSTDIR\App\tmp3264\AnyBurnPro(32-bit) "$INSTDIR\App\AnyBurnPro32"
	;64
	CopyFiles /SILENT $INSTDIR\App\tmp3264\AnyBurnPro(64-bit) "$INSTDIR\App\AnyBurnPro"
	;arm
	CopyFiles /SILENT $INSTDIR\App\tmpARM64\abcmd.exe "$INSTDIR\App\AnyBurnProARM64\abcmd.exe"
	CopyFiles /SILENT $INSTDIR\App\tmpARM64\AnyBurnPro.exe "$INSTDIR\App\AnyBurnProARM64\AnyBurnPro.exe"
	CopyFiles /SILENT $INSTDIR\App\tmpARM64\lame_enc.dll "$INSTDIR\App\AnyBurnProARM64\lame_enc.dll"
	CopyFiles /SILENT $INSTDIR\App\tmpARM64\libFLAC.dll "$INSTDIR\App\AnyBurnProARM64\libFLAC.dll"
	CopyFiles /SILENT $INSTDIR\App\tmpARM64\libvorbis.dll "$INSTDIR\App\AnyBurnProARM64\libvorbis.dll"
	CopyFiles /SILENT $INSTDIR\App\tmpARM64\License.txt "$INSTDIR\App\AnyBurnProARM64\License.txt"
	CopyFiles /SILENT $INSTDIR\App\tmpARM64\MACDll.dll "$INSTDIR\App\AnyBurnProARM64\MACDll.dll"
	CopyFiles /SILENT $INSTDIR\App\tmpARM64\Readme.txt "$INSTDIR\App\AnyBurnProARM64\Readme.txt"
	CopyFiles /SILENT $INSTDIR\App\tmpARM64\Lang "$INSTDIR\App\AnyBurnProARM64\Lang"
	;remove dirs
	RMDir /r "$INSTDIR\App\tmp3264"
	RMDir /r "$INSTDIR\App\tmparm64"

!macroend
