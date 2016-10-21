#######################################
####### 		Config 			#######
#######################################
NI_SharedFolder_Path=/c/Program\ Files\ \(x86\)/National\ Instruments/Shared

#######################################
####### 		Functions		#######
#######################################
FullWinPath(){
	cygpath -w "$1" -a;
}

#######################################
####### 		Main			#######
#######################################
if ([ -f "$1" -a -f "$2" ]); then
	filename=$(basename "$1")
	extension="${filename##*.}"
	case "$extension" in
		"vi")
			LVCompare=$NI_SharedFolder_Path/LabVIEW\ Compare/LVCompare.exe
			;;
		"seq")
			LVCompare=$NI_SharedFolder_Path/TestStand/FileDifferLauncher.exe
			;;
		*)
			echo "Invalid extension $extension";
			exit 1
			;;
	esac
	"$LVCompare" "`FullWinPath "$1"`" "`FullWinPath "$2"`";
fi

