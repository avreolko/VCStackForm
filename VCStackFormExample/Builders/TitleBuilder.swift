//
//  TitleBuilder.swift
//  VCStackForm
//
//  Created by Valentin Cherepyanko on 02/01/2019.
//  Copyright © 2019 Valentin Cherepyanko. All rights reserved.
//

import VCStackForm

struct TitleViewConfiguration: IViewConfiguration {
	let text: String
	static let `default` = TitleViewConfiguration(text: "Default title text")
}

struct TitleBuilder: IFormViewBuilder, IFormViewConfigurator {

	typealias ViewConfiguration = TitleViewConfiguration
	typealias View = UILabel

	let buildingMethod: ViewBuildingMethod = .manual
	var viewConfiguration: TitleViewConfiguration = .default
	var viewHandler: ((View) -> Void)?

	func configure(_ view: View) {
		view.text = self.viewConfiguration.text

		view.font = UIFont.boldSystemFont(ofSize: 18)
		view.lineBreakMode = .byWordWrapping
		view.numberOfLines = 0
		view.setContentCompressionResistancePriority(.required, for: .vertical)
	}
}
