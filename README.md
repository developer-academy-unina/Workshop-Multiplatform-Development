#  Workshop: Multi-Platform Development

Creating a Multi-Platform App isn't always as immediate as it sounds. Here is an activity you can start from to learn the development techniques you can use when you first initialize your project to make every Apple device support it. There are different strategies that can also be merged to reach our goal: starting from the Multiplatform Template initialization, passing through individually adding Development Targets having their Platform Scoped Files, to Sharing Common Files dealing with incompatibility conflicts using Conditional Compilation Blocks. Furthermore, if an iOS project has been already developed and has to be brought to macOS, Mac Catalyst can also be an option.

You should have some preliminary knowledge about SwiftUI and Design Themes & Principles to be able to go through this activity.

By the end of the activity, you should be acquainted with using the Multiplatform Template, along with setting new Development Targets and managing Shared Common files' incompatibility conflicts using Conditional Compilation Blocks.


<p align="center">
    <a href="#" alt="Version">
        <img src="https://img.shields.io/static/v1?label=Version&message=1.0.0&color=brightgreen" /></a>
    <a href="#" alt="XCode Version">
        <img src="https://img.shields.io/static/v1?label=XCode%20Version&message=13.0&color=brightgreen&logo=xcode" /></a>
    <a href="#" alt="Swift Version">
        <img src="https://img.shields.io/static/v1?label=Swift%20Version&message=5.5&color=brightgreen&logo=swift" /></a>
    <a href="#" alt="Dependencies">
        <img src="https://img.shields.io/static/v1?label=Depenencies&message=none&color=brightgreen" /></a>
    <a href="#" alt="Designed for">
        <img src="https://img.shields.io/static/v1?label=Designed%20for&message=iPhone%2013&color=brightgreen" alt="build status"></a>
    <a href="#" alt="Built for">
        <img src="https://img.shields.io/static/v1?label=Built%20for&message=iOS%2015.0&color=brightgreen"
            alt="service-test status"></a>
    <a href="#" alt="Frameworks used">
        <img src="https://img.shields.io/static/v1?label=Frameworks%20used&message=SwiftUI&color=brightgreen&logo=swift"
            alt="coverage"></a>
</p>

**Editors**: 

* [Luca Palmese](https://github.com/pal-luke)

### Multiplatform Music App (Starter)

The Multiplatform Template can be useful to set your app with a very powerful structure supported by different devices. In this activity you will move your first steps to master its concept.

- Here you will understand how to create an app architecture for all platforms.
- What Platform Scoped Files are and how they're helping build views that can't be shared among all the platforms.
- How to Share Common Files among different platforms taking incompatibility conflicts into account.
- How to use Conditional Compilation Blocks to avoid incompatibility conflicts in Shared Common Files.
- How to programmatically detect the device.
- How to use each device's simulator.
- Which frameworks and iOS exclusive functionalities are not supported by specific devices.

### Multiplatform Music App (Final)

This is the final result of the Multiplatform Music App with all the development targets and the WatchKit Extension set, using Conditional Compilation Blocks for Shared Common Files.
