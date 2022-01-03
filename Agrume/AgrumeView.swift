//
//  Copyright © 2021 Schnaub. All rights reserved.
//

import SwiftUI

public struct AgrumeView: UIViewControllerRepresentable {
  let image: UIImage

  public init(image: UIImage) {
    self.image = image
  }

  public func makeUIViewController(context: UIViewControllerRepresentableContext<AgrumeView>) -> Agrume {
    let agrume = Agrume(image: self.image)
    agrume.addSubviews()
    agrume.addOverlayView()
    agrume.willDismiss = {
      agrume.view.superview?.backgroundColor = .clear
      agrume.view.superview?.superview?.backgroundColor = .clear
    }
    return agrume
  }

  public func updateUIViewController(_ uiViewController: Agrume,
                                     context: UIViewControllerRepresentableContext<AgrumeView>) {
  }
}