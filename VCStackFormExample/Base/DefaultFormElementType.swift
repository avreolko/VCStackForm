//
//  DefaultFormElementType.swift
//  VCStackForm
//
//  Created by Valentin Cherepyanko on 03/01/2019.
//  Copyright © 2019 Valentin Cherepyanko. All rights reserved.
//

import UIKit
import VCStackForm

public enum DefaultFormElementType {
	case title(String)
	case normalText(String)
	case image(UIImage)
	case padding
	case dynamicHeight
}

extension DefaultFormElementType: IFormElementType {

	public var id: String {
		switch self {
		case .normalText(let text): return "normalText_\(text)"
		case .image: return "image"
		case .padding: return "padding"
		case .title(let text): return "title_\(text)"
		case .dynamicHeight: return "normalText"
		}
	}
}