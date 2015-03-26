#! /bin/zsh

lines=`pgrep -f "steamapps.*Civilization" | wc -l`

if (( $lines > 0 )); then
	/usr/bin/osascript -e 'display notification "Quitting Civilization in 5 minutes." with title "Bed Time" sound name "SirenNoise"'
	sleep 300
	/usr/bin/osascript -e 'display notification "Quitting Civilization. Goodnight." with title "Bed Time" sound name "Sosumi'
	pkill -9 -f "steamapps.*Civilization"
fi