${SegmentFile}

${SegmentInit}
	ReadRegStr $0 HKLM "HARDWARE\DESCRIPTION\System" "Identifier"
	StrCpy $1 $0 3 0
		
	${If} $1 == "ARM"
		${ReadLauncherConfig} $ProgramExecutable Launch ProgramExecutableARM64
		${SetEnvironmentVariablesPath} FullAppDir "$EXEDIR\App\AnyBurnProARM64"
	${Else}
		${If} $Bits = 64
			${SetEnvironmentVariablesPath} FullAppDir "$EXEDIR\App\AnyBurnPro"
		${Else}
			${SetEnvironmentVariablesPath} FullAppDir "$EXEDIR\App\AnyBurnPro32"
		${EndIf}
	${EndIf}
!macroend