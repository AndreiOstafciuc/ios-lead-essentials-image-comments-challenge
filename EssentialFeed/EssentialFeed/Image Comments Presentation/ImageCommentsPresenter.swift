//
//  ImageCommentsPresenter.swift
//  EssentialFeed
//
//  Created by Andrei Ostafciuc on 19/11/2020.
//  Copyright © 2020 Essential Developer. All rights reserved.
//

import Foundation

public class ImageCommentsPresenter {
  public static var title: String {
    NSLocalizedString("IMAGE_COMMENTS_VIEW_TITLE",
                      tableName: "ImageComments",
                      bundle: Bundle(for: Self.self),
                      comment: "Title for the image comments view")
  }
}
