## Instruction on how to build a new SwiftyZeroMQ.xcframework 
- Create a temp directory with 4 sub directories that you'll use to assemble an XCFramework
`$ mkdir temp && cd temp && mkdir ios64 && mkdir sim64 && mkdir sim86 && mkdir sim_universal`

- Build 3 frameworks using targets:
SwiftyZeroMQ-iOS (select destination "Any iOS Devide (arm64)")
SwiftyZeroMQ-Sim64 (select destination any iPad simulator (non Rossetta)")
SwiftyZeroMQ-Sim86 (select destination any iPad simulator (Rossetta)")

Each time copy the compiled framework to the corresponding folder "ios64/sim64/sim86" that we created in the previous step

- copy both simulator archs into `sim_universal` directory
`cp -rf sim64/SwiftyZeroMQ.framework sim_universal | cp -rf sim86/SwiftyZeroMQ.framework sim_universal`

- create a universal binary for simulator
`lipo -create -output sim_universal/SwiftyZeroMQ.framework/SwiftyZeroMQ \
    sim64/SwiftyZeroMQ.framework/SwiftyZeroMQ \
    sim86/SwiftyZeroMQ.framework/SwiftyZeroMQ`


