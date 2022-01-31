//
//  XylophoneViewController.swift
//  Xylophone_NoSB
//
//  Created by Raúl Pavón on 31/01/22.
//

import UIKit

class XylophoneViewController: UIViewController {
    
    weak var xylophoneCoordinator: XylophoneCoordinator?
    private let factory: XylophoneFactory
    
    private lazy var xylophoneUIView: XylophoneUIView = {
        let view = XylophoneUIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    required init(factory: XylophoneFactory, xylophoneCoordinator: XylophoneCoordinator) {
        self.factory = factory
        self.xylophoneCoordinator = xylophoneCoordinator
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        super.loadView()
        initComponents()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func initComponents() {
        addComponents()
        setAutolayout()
    }
    
    private func addComponents() {
        view.addSubview(xylophoneUIView)
    }
    
    private func setAutolayout() {
        NSLayoutConstraint.activate([
            xylophoneUIView.topAnchor.constraint(equalTo: view.topAnchor),
            xylophoneUIView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            xylophoneUIView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            xylophoneUIView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
}
