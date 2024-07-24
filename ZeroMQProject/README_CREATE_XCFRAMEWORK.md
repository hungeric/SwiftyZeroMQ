## Instruction on how to build a new ZeroMQ.xcframework 
- Create a temp directory with 4 sub directories that you'll use to assemble an XCFramework
`$ mkdir temp && cd temp && mkdir ios64 && mkdir sim64 && mkdir sim86 && mkdir sim_universal`

- Build 3 frameworks using targets:
ZeroMQ-iOS (select destination "Any iOS Devide (arm64)")
ZeroMQ-Sim64 (select destination any iPad simulator (non Rossetta)")
ZeroMQ-Sim86 (select destination any iPad simulator (Rossetta)")

Each time copy the compiled framework to the corresponding folder "ios64/sim64/sim86" that we created in the previous step

- copy both simulator archs into `sim_universal` directory
`cp -rf sim64/ZeroMQ.framework sim_universal | cp -rf sim86/ZeroMQ.framework sim_universal`

- create a universal binary for simulator
`lipo -create -output sim_universal/ZeroMQ.framework/ZeroMQ \
    sim64/ZeroMQ.framework/ZeroMQ \
    sim86/ZeroMQ.framework/ZeroMQ`
    
- create an ZeroMQ.xcframework 
`xcodebuild -create-xcframework \
    -framework ios64/ZeroMQ.framework \
    -framework sim_universal/ZeroMQ.framework \
    -output ZeroMQ.xcframework`


