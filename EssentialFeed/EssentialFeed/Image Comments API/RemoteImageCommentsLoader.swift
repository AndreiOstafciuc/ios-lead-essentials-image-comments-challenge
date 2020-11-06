//
//  RemoteImageCommentsLoader.swift
//  EssentialFeed
//
//  Created by Andrei Ostafciuc on 06/11/2020.
//  Copyright © 2020 Essential Developer. All rights reserved.
//

import Foundation

public typealias RemoteImageCommentsLoader = RemoteLoader<[ImageComment]>

public extension RemoteImageCommentsLoader {
  convenience init(url: URL, client: HTTPClient) {
    self.init(url: url, client: client, mapper: ImageCommentsMapper.map)
  }
}
