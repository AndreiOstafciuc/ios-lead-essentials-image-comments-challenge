//
//  ImageCommentsLocalizationTests.swift
//  EssentialFeedTests
//
//  Created by Andrei Ostafciuc on 19/11/2020.
//  Copyright © 2020 Essential Developer. All rights reserved.
//

import XCTest
import EssentialFeed

class ImageCommentsLocalizationTests: XCTestCase {

  func test_localizedStrings_haveKeysAndValuesForAllSupportedLocalizations() {
    let table = "ImageComments"
    let bundle = Bundle(for: ImageCommentsPresenter.self)

    assertLocalizedKeyAndValuesExist(in: bundle, table)
  }
}
