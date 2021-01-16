//
//  Factory+UIView.swift
//  NearbyWeather
//
//  Created by Erik Maximilian Martens on 15.01.21.
//  Copyright © 2021 Erik Maximilian Martens. All rights reserved.
//

import UIKit.UIView

extension Factory {

  struct View: FactoryFunction {

    enum ViewType {
      case standard(cornerRadiusWeight: Weight? = nil)
    }

    typealias InputType = ViewType
    typealias ResultType = UIView

    static func make(fromType type: InputType) -> ResultType {
      let view = UIView()

      switch type {
      case let .standard(cornerRadiusWeight):
        if let cornerRadiusWeight = cornerRadiusWeight {
          view.layer.cornerRadius = Constants.Dimensions.Size.CornerRadiusSize.from(weight: cornerRadiusWeight)
        }
      }

      return view
    }
  }
}