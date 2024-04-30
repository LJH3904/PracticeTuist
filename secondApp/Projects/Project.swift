import ProjectDescription

let project = Project(
    name: "Myapp",
    targets: [
        .target(
            name: "Myapp",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.Myapp",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchStoryboardName": "LaunchScreen.storyboard",
                ]
            ),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: []
        ),
        .target(
            name: "MyappTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.MyappTests",
            infoPlist: .default,
            sources: ["Myapp/Tests/**"],
            resources: [],
            dependencies: [.target(name: "Myapp")]
        ),
    ]
)
