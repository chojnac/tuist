import ProjectDescription

let project = Project(name: "AppWithScript",
                      targets: [
                        Target(name: "AppWithScript",
                               platform: .iOS,
                               product: .app,
                               bundleId: "io.tuist.app-with-script",
                               infoPlist: "Info.plist",
                               sources: ["Sources/**"],
                               actions: [
                                .pre(
                                    script: """
echo "Hello world!"
echo "This is tuist"
""",
                                    name: "Run script"
                                )
                              ]),
                      ])
