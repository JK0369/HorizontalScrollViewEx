//
//  HorizontalScrollView.swift
//  SampleHorizontalScroll
//
//  Created by 김종권 on 2021/09/28.
//

import UIKit

class HorizontalScrollView: BaseScrollView {

    var model: [UIImage]? {
        didSet {
            bind()
        }
    }

    let horizontalWidth: CGFloat
    let horizontalHeight: CGFloat

    init(horizontalWidth: CGFloat, horizontalHeight: CGFloat) {
        self.horizontalWidth = horizontalWidth
        self.horizontalHeight = horizontalHeight

        super.init(frame: .zero)

        configure()
    }

    override func configure() {
        super.configure()

        isPagingEnabled = true
        showsHorizontalScrollIndicator = false
    }

    override func bind() {
        super.bind()

        setImages()

        updateScrollViewContentWidth()
    }

    private func setImages() {
        guard let images = model else { return }
        images
            .enumerated()
            .forEach {
                let imageView = UIImageView(image: $0.element)
                imageView.contentMode = .scaleAspectFit
                let xOffset = horizontalWidth * CGFloat($0.offset)

                imageView.frame = CGRect(x: xOffset, y: 0, width: horizontalWidth, height: horizontalHeight)
                addSubview(imageView)
            }
    }

    private func updateScrollViewContentWidth() {
        contentSize.width = horizontalWidth * CGFloat(model?.count ?? 1)
    }
}
