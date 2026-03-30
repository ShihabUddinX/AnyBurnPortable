${SegmentFile}

${SegmentInit}
	ReadRegStr $0 HKLM "HARDWARE\DESCRIPTION\System" "Identifier"
	StrCpy $1 $0 3 0
		
	${If} $1 == "ARM"
		${ReadLauncherConfig} $ProgramExecutable Launch ProgramExecutableARM64
		${SetEnvironmentVariablesPath} FullAppDir "$EXEDIR\App\AnyBurnARM64"
	${Else}
		${If} $Bits = 64
			${SetEnvironmentVariablesPath} FullAppDir "$EXEDIR\App\AnyBurn"
		${Else}
			${SetEnvironmentVariablesPath} FullAppDir "$EXEDIR\App\AnyBurn32"
		${EndIf}
	${EndIf}
!macroend