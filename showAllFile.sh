# !/bin/bash
# 顯示隱藏檔

isShow=$1

if [ "${isShow}" == 'true' ] || [ "${isShow}" == '1' ] ; then
  defaults write com.apple.finder AppleShowAllFiles TRUE;\killall Finder
else
  defaults write com.apple.finder AppleShowAllFiles FALSE;\killall Finder
fi
