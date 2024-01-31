set isVisible to do shell script "defaults read com.apple.finder CreateDesktop"

if isVisible = "true" then
	do shell script "defaults write com.apple.finder CreateDesktop false; killall Finder"
else
	do shell script "defaults write com.apple.finder CreateDesktop true; killall Finder"
end if

