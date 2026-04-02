${SegmentFile}

${SegmentInit}
	ReadRegStr $0 HKLM "HARDWARE\DESCRIPTION\System" "Identifier"
	StrCpy $1 $0 3 0
		
	${If} $1 == "ARM"
		${If} $CmdLineParams != ""
            ${ReadLauncherConfig} $ProgramExecutable Launch ProgramExecutableWhenParametersARM64
        ${Else}
            ${ReadLauncherConfig} $ProgramExecutable Launch ProgramExecutableARM64
        ${EndIf}
		${SetEnvironmentVariablesPath} FullAppDir "$EXEDIR\App\AnyBurnARM64"
		Rename "$EXEDIR\App\AnyBurn32\Lang" "$EXEDIR\App\AnyBurnARM64\Lang"
        Rename "$EXEDIR\App\AnyBurn\Lang" "$EXEDIR\App\AnyBurnARM64\Lang"
	${Else}
		${If} $Bits = 64
			${SetEnvironmentVariablesPath} FullAppDir "$EXEDIR\App\AnyBurn"
			Rename "$EXEDIR\App\AnyBurn32\Lang" "$EXEDIR\App\AnyBurn\Lang"
            Rename "$EXEDIR\App\AnyBurnARM64\Lang" "$EXEDIR\App\AnyBurn\Lang"
		${Else}
			${SetEnvironmentVariablesPath} FullAppDir "$EXEDIR\App\AnyBurn32"
			Rename "$EXEDIR\App\AnyBurn\Lang" "$EXEDIR\App\AnyBurn32\Lang"
            Rename "$EXEDIR\App\AnyBurnARM64\Lang" "$EXEDIR\App\AnyBurn32\Lang"
		${EndIf}
	${EndIf}
!macroend