
set(PROJECT_NAME AudioUnitLearn)

set(SRCROOT ${CMAKE_CURRENT_LIST_DIR})
set(RESROOT ${CMAKE_CURRENT_LIST_DIR}/../res)

set(DIR_SRCS 
	${SRCROOT}/AppDelegate.h
	${SRCROOT}/AppDelegate.m
	${SRCROOT}/LYPlayer.h
	${SRCROOT}/LYPlayer.m
	${SRCROOT}/ViewController.h
	${SRCROOT}/ViewController.m
	${SRCROOT}/main.m
)

set(BUNDLE_SRCS
	${RESROOT}/Info.plist
	${SRCROOT}/../../CommonResource/Assets.xcassets
	${SRCROOT}/../../CommonResource/abc.pcm
)

SET(EXECUTABLE_OUTPUT_PATH ${CMAKE_ROOT_DIR}/bin)

link_libraries("-framework Foundation" "-framework UIKit" "-framework CoreGraphics" "-framework QuartzCore" "-framework CoreMotion" "-framework Metal" "-framework OpenGLES" "-framework OpenAL" "-framework AudioToolbox" "-framework AVFoundation")

add_executable(${PROJECT_NAME} ${DIR_SRCS} ${BUNDLE_SRCS})

set_target_properties(
	${PROJECT_NAME}
	PROPERTIES
	MACOSX_BUNDLE YES
	MACOSX_BUNDLE_INFO_PLIST "${RESROOT}/Info.plist"
	RESOURCE "${BUNDLE_SRCS}"
)
	
set_target_properties(
	${PROJECT_NAME}
	PROPERTIES
	XCODE_ATTRIBUTE_ASSETCATALOG_COMPILER_APPICON_NAME "AppIcon"
	XCODE_ATTRIBUTE_ASSETCATALOG_COMPILER_LAUNCHIMAGE_NAME "LaunchImage"
	XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY "iPhone Developer"
	XCODE_ATTRIBUTE_TARGETED_DEVICE_FAMILY "1"
)
