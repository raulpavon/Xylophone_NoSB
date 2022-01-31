//
//  XylophoneViewController.swift
//  Xylophone_NoSB
//
//  Created by Raúl Pavón on 31/01/22.
//

import UIKit
import AVFoundation

class XylophoneViewController: UIViewController {
    
    weak var xylophoneCoordinator: XylophoneCoordinator?
    private let factory: XylophoneFactory
    var player: AVAudioPlayer!
    
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
        setTarget()
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
    
    func setTarget() {
        xylophoneUIView.setBtKeyTarget(target: self, action: #selector(didTapKey(_:)))
    }
    
    @objc func didTapKey(_ sender: UIButton) {
        playSound(key: sender.titleLabel?.text ?? "")
        sender.alpha = 0.5

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1.0
        }
    }
    
    func playSound(key: String) {
        let url = Bundle.main.url(forResource: key, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }
}
