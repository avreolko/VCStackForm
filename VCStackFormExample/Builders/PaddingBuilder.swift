//
//  PaddingBuilder.swift
//  VCFormBuilder
//
//  Created by Valentin Cherepyanko on 30/12/2018.
//  Copyright © 2018 Valentin Cherepyanko. All rights reserved.
//

import VCExtensions
import VCStackForm

struct PaddingConfiguration: IViewConfiguration {
	let height: CGFloat
	static let `default` = PaddingConfiguration(height: 8)
}

struct PaddingBuilder: IFormViewBuilder, IFormViewConfigurator {
	typealias ViewConfiguration = PaddingConfiguration
	typealias View = UIView

	let buildingMethod: ViewBuildingMethod = .manual
	var viewConfiguration: ViewConfiguration = .default
	var viewHandler: ((View) -> Void)?

	func configure(_ view: View) {
		view.setConstraint(height: self.viewConfiguration.height)
		view.setContentCompressionResistancePriority(.required, for: .vertical)
	}
}
