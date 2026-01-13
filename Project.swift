import Foundation
import ProjectDescription

func myProject() -> Project {
    if ProcessInfo.processInfo.environment["TUIST_SPM"] == "true" {
        return Project(
            name: "TuistMetalSPMBug",
             packages: [
                 .package(path: "MetalSPM"),
             ],
            targets: [
                .target(
                    name: "TuistMetalSPMBug",
                    destinations: .iOS,
                    product: .app,
                    bundleId: "dev.tuist.TuistMetalSPMBug",
                    infoPlist: .extendingDefault(
                        with: [
                            "UILaunchScreen": [
                                "UIColorName": "",
                                "UIImageName": "",
                            ],
                        ]
                    ),
                    buildableFolders: [
                        "TuistMetalSPMBug/Sources",
                        "TuistMetalSPMBug/Resources",
                    ],
                    dependencies: [
                        .package(product:"MetalSPM")
                    ]
                ),
                .target(
                    name: "TuistMetalSPMBugTests",
                    destinations: .iOS,
                    product: .unitTests,
                    bundleId: "dev.tuist.TuistMetalSPMBugTests",
                    infoPlist: .default,
                    buildableFolders: [
                        "TuistMetalSPMBug/Tests"
                    ],
                    dependencies: [.target(name: "TuistMetalSPMBug")]
                ),
            ]
        )
    }
    return Project(
        name: "TuistMetalSPMBug",
        targets: [
            .target(
                name: "TuistMetalSPMBug",
                destinations: .iOS,
                product: .app,
                bundleId: "dev.tuist.TuistMetalSPMBug",
                infoPlist: .extendingDefault(
                    with: [
                        "UILaunchScreen": [
                            "UIColorName": "",
                            "UIImageName": "",
                        ],
                    ]
                ),
                buildableFolders: [
                    "TuistMetalSPMBug/Sources",
                    "TuistMetalSPMBug/Resources",
                ],
                dependencies: [
                    .external(name: "MetalSPM"),
                ]
            ),
            .target(
                name: "TuistMetalSPMBugTests",
                destinations: .iOS,
                product: .unitTests,
                bundleId: "dev.tuist.TuistMetalSPMBugTests",
                infoPlist: .default,
                buildableFolders: [
                    "TuistMetalSPMBug/Tests"
                ],
                dependencies: [.target(name: "TuistMetalSPMBug")]
            ),
        ]
    )
}
let project = myProject()
