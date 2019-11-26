//
//  String + Height.swift
//  VKNews
//
//  Created by Dmitry Andreyanov on 11/17/19.
//  Copyright © 2019 Dmitrii Andreianov. All rights reserved.
//

import Foundation
import UIKit

extension String {
    func height (width: CGFloat, font: UIFont) -> CGFloat {
        let textSize = CGSize(width: width, height: .greatestFiniteMagnitude)
        
        let size = self.boundingRect(with: textSize,
                                     options: .usesLineFragmentOrigin,
                                     attributes: [NSAttributedString.Key.font : font],
                                     context: nil)
        return ceil(size.height)
    }
}
