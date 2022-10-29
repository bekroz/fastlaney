#!/usr/bin/env bash

# 0. Install fastlane with brew
bash scripts/install-fastlane.sh

# 1. Ask user for platform
echo 'What platform (ios / android)?'
read -r platform

# 2.1 Deploy to TestFlight
if [ $platform == "ios" ]; then
    echo 'Deploying to TestFlight... 💙 '
    bash scripts/deploy-ios.sh

# 2.2 Builds for ANDROID
elif [ $platform == "android" ]; then
     # Prints a message if both conditions for name and password are met.
     echo 'Deploying to Firebase App Distribution... 💚'
     bash scripts/deploy-android.sh
# 2.3 Log invalid platform.
fi
  echo 'Invalid platform. 😒'
