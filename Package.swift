// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FirebaseBin",
    products: [
        .library(
            name: "FirebaseBin",
            targets: [
                "FirebaseCrashlytics",
                "FirebaseInstallations",
                "GoogleDataTransport",
                "GoogleUtilities",
                "GoogleAppMeasurementIdentitySupport",
                "FirebaseCore",
                "FirebaseAnalytics",
                "GoogleAppMeasurement",
                "PromisesObjC",
                "FirebaseCoreDiagnostics",
                "nanopb",
                "FirebaseMessaging",
                "FirebaseRemoteConfig",
                "FirebaseABTesting",
                "FirebasePerformance",
            ]
        ),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "FirebaseCrashlytics",
            path: "Sources/FirebaseCrashlytics/FirebaseCrashlytics.xcframework"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            path: "Sources/FirebaseAnalytics/FirebaseInstallations.xcframework"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            path: "Sources/FirebaseAnalytics/GoogleDataTransport.xcframework"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            path: "Sources/FirebaseAnalytics/GoogleUtilities.xcframework"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            path: "Sources/FirebaseAnalytics/GoogleAppMeasurementIdentitySupport.xcframework"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            path: "Sources/FirebaseAnalytics/FirebaseCore.xcframework"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            path: "Sources/FirebaseAnalytics/FirebaseAnalytics.xcframework"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            path: "Sources/FirebaseAnalytics/GoogleAppMeasurement.xcframework"
        ),
        .binaryTarget(
            name: "PromisesObjC",
            path: "Sources/FirebaseAnalytics/PromisesObjC.xcframework"
        ),
        .binaryTarget(
            name: "FirebaseCoreDiagnostics",
            path: "Sources/FirebaseAnalytics/FirebaseCoreDiagnostics.xcframework"
        ),
        .binaryTarget(
            name: "nanopb",
            path: "Sources/FirebaseAnalytics/nanopb.xcframework"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            path: "Sources/FirebaseMessaging/FirebaseMessaging.xcframework"
        ),
        .binaryTarget(
            name: "FirebaseRemoteConfig",
            path: "Sources/FirebasePerformance/FirebaseRemoteConfig.xcframework"
        ),
        .binaryTarget(
            name: "FirebaseABTesting",
            path: "Sources/FirebasePerformance/FirebaseABTesting.xcframework"
        ),
        .binaryTarget(
            name: "FirebasePerformance",
            path: "Sources/FirebasePerformance/FirebasePerformance.xcframework"
        ),
    ],
    cxxLanguageStandard: .cxx14
)

