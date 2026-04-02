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
		${SetEnvironmentVariablesPath} FullAppDir "$EXEDIR\App\AnyBurnProARM64"
		Rename "$EXEDIR\App\AnyBurnPro32\Lang" "$EXEDIR\App\AnyBurnProARM64\Lang"
        Rename "$EXEDIR\App\AnyBurnPro\Lang" "$EXEDIR\App\AnyBurnProARM64\Lang"
	${Else}
		${If} $Bits = 64
			${SetEnvironmentVariablesPath} FullAppDir "$EXEDIR\App\AnyBurnPro"
			Rename "$EXEDIR\App\AnyBurnPro32\Lang" "$EXEDIR\App\AnyBurnPro\Lang"
            Rename "$EXEDIR\App\AnyBurnProARM64\Lang" "$EXEDIR\App\AnyBurnPro\Lang"
		${Else}
			${SetEnvironmentVariablesPath} FullAppDir "$EXEDIR\App\AnyBurnPro32"
			Rename "$EXEDIR\App\AnyBurnPro\Lang" "$EXEDIR\App\AnyBurnPro32\Lang"
            Rename "$EXEDIR\App\AnyBurnProARM64\Lang" "$EXEDIR\App\AnyBurnPro32\Lang"
		${EndIf}
	${EndIf}
!macroend