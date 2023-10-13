//
//  Maps_Notifications_Jyothish_GompaUITestsLaunchTests.swift
//  Maps Notifications Jyothish GompaUITests
//
//  Created by Vyshnavi Koleti on 10/12/23.
//

import XCTest

final class Maps_Notifications_Jyothish_GompaUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
