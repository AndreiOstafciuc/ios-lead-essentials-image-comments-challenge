//
//  ImageCommentCellController.swift
//  EssentialFeediOS
//
//  Created by Andrei Ostafciuc on 19/11/2020.
//  Copyright © 2020 Essential Developer. All rights reserved.
//

import UIKit
import EssentialFeed

public class ImageCommentCellController: CellController {
  private let model: ImageCommentViewModel

  public init(model: ImageCommentViewModel) {
    self.model = model
  }

  public func view(in tableView: UITableView) -> UITableViewCell {
    let cell: ImageCommentCell = tableView.dequeueReusableCell()
    cell.messageLabel.text = model.message
    cell.usernameLabel.text = model.username
    cell.dateLabel.text = model.date
    return cell
  }

  public func preload() {

  }

  public func cancelLoad() {

  }
}
