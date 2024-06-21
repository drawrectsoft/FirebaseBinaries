// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "Firebase-binary",
    products: [
        .library(
            name: "Firebase-binary",
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
            path: "Firebase/FirebaseCrashlytics/FirebaseCrashlytics.xcframework"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            path: "Firebase/FirebaseAnalytics/FirebaseInstallations.xcframework"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            path: "Firebase/FirebaseAnalytics/GoogleDataTransport.xcframework"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            path: "Firebase/FirebaseAnalytics/GoogleUtilities.xcframework"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            path: "Firebase/FirebaseAnalytics/GoogleAppMeasurementIdentitySupport.xcframework"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            path: "Firebase/FirebaseAnalytics/FirebaseCore.xcframework"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            path: "Firebase/FirebaseAnalytics/FirebaseAnalytics.xcframework"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            path: "Firebase/FirebaseAnalytics/GoogleAppMeasurement.xcframework"
        ),
        .binaryTarget(
            name: "PromisesObjC",
            path: "Firebase/FirebaseAnalytics/PromisesObjC.xcframework"
        ),
        .binaryTarget(
            name: "FirebaseCoreDiagnostics",
            path: "Firebase/FirebaseAnalytics/FirebaseCoreDiagnostics.xcframework"
        ),
        .binaryTarget(
            name: "nanopb",
            path: "Firebase/FirebaseAnalytics/nanopb.xcframework"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            path: "Firebase/FirebaseMessaging/FirebaseMessaging.xcframework"
        ),
        .binaryTarget(
            name: "FirebaseRemoteConfig",
            path: "Firebase/FirebasePerformance/FirebaseRemoteConfig.xcframework"
        ),
        .binaryTarget(
            name: "FirebaseABTesting",
            path: "Firebase/FirebasePerformance/FirebaseABTesting.xcframework"
        ),
        .binaryTarget(
            name: "FirebasePerformance",
            path: "Firebase/FirebasePerformance/FirebasePerformance.xcframework"
        ),
    ],
    cxxLanguageStandard: .cxx14
)

