
cmake -E make_directory "build-ios" && cmake -E chdir "build-ios" cmake -G "Xcode" ../ -DCMAKE_TOOLCHAIN_FILE=../../toolchain/ios/iOS.toolchain.cmake -DPLATFORM=OS64COMBINED

if [ -d build-ios/LearnVideoToolBox.xcodeproj ] ; then
	open build-ios/LearnVideoToolBox.xcodeproj
fi
