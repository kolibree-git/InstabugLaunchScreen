//
//  Created by Tomasz Załoga on 07/02/2022.
//

import UIKit

final class TestViewController: UIViewController {

    // MARK: - Properties

    private lazy var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Opened at \(dateFormatter.string(from: Date()))"
        label.textAlignment = .center
        return label
    }()

    private lazy var dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .long
        return dateFormatter
    }()

    // MARK: - Lifecycel

    init() {
        super.init(nibName: nil, bundle: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupViewHierarchy()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupUI() {
        view.backgroundColor = [.red, .green, .blue, .yellow, .orange, .gray].randomElement()
    }

    private func setupViewHierarchy() {
        view.addSubview(label)
        NSLayoutConstraint.activate([
            view.centerXAnchor.constraint(equalTo: label.centerXAnchor),
            view.layoutMarginsGuide.leadingAnchor.constraint(equalTo: label.leadingAnchor),
            view.centerYAnchor.constraint(equalTo: label.centerYAnchor)
        ])
    }
}
