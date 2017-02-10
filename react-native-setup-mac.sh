# setup-mac.sh
#
# Sets up a Mac machine for development.
brew install node
brew cask install java
brew install android-sdk
( sleep 5 && while [ 1 ]; do sleep 1; echo y; done ) | android update sdk --no-ui --all --filter platform-tools,build-tools-24.0.1,android-24,extra-android-m2repository
echo "export ANDROID_HOME=/usr/local/opt/android-sdk/" >> ~/.profile
source ~/.profile
