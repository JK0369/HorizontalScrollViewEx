//
//  BaseScrollView.swift
//  SampleHorizontalScroll
//
//  Created by 김종권 on 2021/09/28.
//

import UIKit

class BaseScrollView: UIScrollView {
    override init(frame: CGRect) {
        super.init(frame: frame)

        configure()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configure() {}
    func bind() {}
}
