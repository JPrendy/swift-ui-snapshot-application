//
//  LandmarksUITests.swift
//  LandmarksUITests
//
//  Created by James Prendergast  on 08/10/2020.
//

import XCTest
import SnapshotTesting
import SwiftUI

private let referenceSize = CGSize(width: 150, height: 50)

class LandmarksUITests: XCTestCase {

    func testDefaultAppearance() {
        isRecording = false
        assertSnapshot(matching: ContentView().referenceFrame(), as: .image)
    }
}

//Without this we will have a blank screen this shows a preview of the text with a border.
private extension SwiftUI.View {
    func referenceFrame() -> some View {
        self.frame(width: referenceSize.width, height: referenceSize.height)
    }
}
