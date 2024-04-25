# Change Log

All changes to this library is documented here in chronological order (latest
is first).

- 1.0.25
  - Add multipart send/recv and various fixes (PR #12). Contributed by
    [Tim (blob8108)](https://github.com/tjvr).
  - Attempt to fix crash on iOS 9.x by using new 4.2.2 binaries. See [commit](https://github.com/zeromq/libzmq/commit/bf6d8a5d17423b72a1d5d9970c3cd10747c0d2be).

- 1.0.24
  - Add initial socket options with tests (PR #9). Contributed by
    [Jonathan Cockayne](https://github.com/jcockayne).
  - Fix memory leak in `Socket.recv`.
  - Cleanup poll items on scope exit
  - Change endpoint ports for each test to prevent side effects.
  - Update for XCode 8.2.1

- 1.0.23
  - Upgrade to ZeroMQ 4.2.1 stable (up from 4.2.0).
  - Upgrade projects to Xcode 8.1.
  - Move example projects into Examples folder.
  - Update copyright to 2017 (Happy new year).

- 1.0.22
  - Upgrade to ZeroMQ 4.2.0 stable (up from 4.1.6).
  - Add `context.setBlocky` and `context.setMaxMessageSize` (new in 4.2)
  - Various documentation updates to manual and `SocketType`.
  - Prevent automatic deinitializer context and socket cleanup if already closed.
  - Provide `context.close()` as an alias for `terminate` for consistency.
  - Reorganize Xcode project structure and move `libzmq` platform-specific files
    to its own `Libraries` folder (was in `Sources`).
  - Fix example project build issues (namely watchOS)

- 1.0.21
  - `libc++` is now linked for iOS instead of `libstdc++`.
  - Link correct libraries for each platform.

- 1.0.20
  - `.frameworkVersion` now returns the version string (previously a optional
    string).
  - Add an initial implementation of `SwiftyZeroMQ.Poller` with tests (Pull
    request #1) by [Jonathan Cockayne](https://github.com/jcockayne). This is
    based on the [pyzmq](https://github.com/zeromq/pyzmq) implementation.
  - Context and Socket now conform to the Hashable protocol.
  - Fix issue #3 : Build universal libzmq.a for macOS, tvOS and watchOS.
  - Fix issue #4 : Add Poller documentation and examples by
    [Jonathan Cockayne](https://github.com/jcockayne).
  - Various documentation updates.

- 1.0.19
  - Upgrade to stable ZeroMQ 4.1.6 (up from 4.1.5).
  - Example projects has now the same version.
  - Add macOS, tvOS and watchOS support.
  - Run tests on macOS, tvOS.
  - Add example projects for all supported platforms.
  - Various documentation updates including adding steps to use
    `pod try SwiftyZeroMQ`.

- 1.0.18
  - Add iOS example project.
  - Various documentation updates.

- 1.0.17
  - Refactor project structure to conform with SwiftPM
  - Add an example of request-reply pattern
  - Test request-reply pattern
  - Various Xcode project fixes
  - Various documentation fixes

- 1.0.16
  - A better user guide documentation with a table of contents.
  - Minimum support iOS version is now 9+ (up from 8).
  - Add quick help inline comment documentation.
  - Prevent wrong usage of virtual namespace struct (i.e. `SwiftyZeroMQ`).
  - Various documentation fixes.
  - Fix Travis CI random failures.
  - Fix Ruby script to check for macOS.

- 1.0.15
  - Breaking changes:
    - Add .frameworkVersion and refactor `.versionString` into `.version`.
    - Rename `SwiftyZeroMQError` to `ZeroMQError` and scope it under
    `SwiftyZeroMQ`.
  - Drop iOS 8.1 testing since the simulator is buggy using the terminal.
  - Switch to a Ruby-based test script (instead of bash).
  - Add initial release of user guide.
  - Add change log to conform with CocoaPods quality requirements.
  - Various Documentation updates.

- 1.0.14
  - Fix `clock_gettime` crash in `testSocket` test case on pre-iOS 10  (i.e.
    iOS 8.1 and 9).

- 1.0.13
  - Enable Bitcode in `libzmq.a` and Xcode project.
  - More documentation updates.
  - Add a bash shell script to run Xcode tests using the terminal via an
  `xcpretty` filter.

- 1.0.12
  - Fix iOS 8+ compatibility for `armv7` and `armv7s`.
  - More documentation about the bundled `libzmq.a`.

- 1.0.11
  - Added iOS 8+ support

- 1.0.10
  - Fix CocoaPods support is now working as intended.
  - Remove `CZeroMQ` module map.
  - Expose native `zmq.h` C API when importing `SwiftyZeroMQ`.

- 1.0.9 **Pre-release**
  - Attempt to fix CocoaPods module map but really that went no where.

- 1.0.8
  - Disable [Bitcode](https://developer.apple.com/library/content/documentation/IDEs/Conceptual/AppDistributionGuide/AppThinning/AppThinning.html)
  - Added [Carthage](https://github.com/Carthage/Carthage) integration
  - Various documentation fixes

- 1.0.7
  - Disable Bitcode in the Xcode project

- 1.0.6 **Pre-release**
  - This is an initial release with CocoaPods support to provide out of the box
  iOS ZeroMQ bindings.

- 1.0.5 **Pre-release**
  - Make SwiftyZeroMQ schema shared for future Carthage support

- 1.0.4 **Pre-release**
  - More refactoring

- 1.0.3 **Pre-release**
  - More refactoring and experimentation

- 1.0.2 **Pre-release**
  - More refactoring and experimentation

- 1.0.1 **Pre-release**
  - More refactoring and experimentation

- 1.0.0 **Pre-release**
  - First experimental release
