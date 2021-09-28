//
//  ViewController.swift
//  SampleHorizontalScroll
//
//  Created by 김종권 on 2021/09/28.
//

import UIKit

class ViewController: UIViewController {

    lazy var horizontalScrollView: HorizontalScrollView = {
        let view = HorizontalScrollView(horizontalWidth: view.frame.width, horizontalHeight: view.frame.height)

        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
        addSubviews()
        makeConstraints()
    }

    func setupViews() {
        view.backgroundColor = .white
        let image1 = UIImage(named: "image1")!
        let image2 = UIImage(named: "image2")!
        let image3 = UIImage(named: "image3")!

        horizontalScrollView.model = [image1, image2, image3]
    }

    func addSubviews() {
        view.addSubview(horizontalScrollView)
    }

    func makeConstraints() {
        horizontalScrollView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            horizontalScrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            horizontalScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            horizontalScrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            horizontalScrollView.topAnchor.constraint(equalTo: view.topAnchor)
        ])
    }
}

