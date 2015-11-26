//
//  ExampleUITests.swift
//  ExampleUITests
//
//  Created by Pedro Vicente Gomez on 19/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import XCTest
import Nimble

class ExampleUITests: XCTestCase {

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }


    func testShowsCharactersTab() {
        let charactersTab = XCUIApplication().tabBars.buttons["Characters Tab"]
        
        expect(charactersTab.exists).to(beTrue())
    }

    func testShowsComicsTab() {
        let comicsTab = XCUIApplication().tabBars.buttons["Comics Tab"]

        expect(comicsTab.exists).to(beTrue())
    }

    func testShowsTitle() {
        let navBarTitle = XCUIApplication().navigationBars["Title"]

        expect(navBarTitle.exists).to(beTrue())
    }
}
