//
//  XylophoneUIView.swift
//  Xylophone_NoSB
//
//  Created by Raúl Pavón on 31/01/22.
//

import UIKit

class XylophoneUIView: UIView {
    enum XylophoneUIViewConstraints {
        static let fontSize: CGFloat = 40
        enum StackContainer {
            static let top: CGFloat = 15
            static let bottom: CGFloat = -15
        }
        enum BtC {
            static let leading: CGFloat = 5
            static let trailing: CGFloat = -5
        }
        enum BtD {
            static let leading: CGFloat = 10
            static let trailing: CGFloat = -10
        }
        enum BtE {
            static let leading: CGFloat = 15
            static let trailing: CGFloat = -15
        }
        enum BtF {
            static let leading: CGFloat = 25
            static let trailing: CGFloat = -25
        }
        enum BtG {
            static let leading: CGFloat = 30
            static let trailing: CGFloat = -30
        }
        enum BtA {
            static let leading: CGFloat = 35
            static let trailing: CGFloat = -35
        }
        enum BtB {
            static let leading: CGFloat = 40
            static let trailing: CGFloat = -40
        }
    }
    
    private lazy var mainContainer: UIView = {
        let view = UIView(frame: CGRect.zero)
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var stackContainer: UIStackView = {
        let stack = UIStackView(frame: .zero)
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 8
        stack.alignment = .fill
        stack.distribution = .fillEqually
        return stack
    }()
    
    private lazy var cContainer: UIView = {
        let view = UIView(frame: CGRect.zero)
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var btC: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(GlobalConstants.Labels.c, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemRed
        button.titleLabel?.font = .systemFont(ofSize: XylophoneUIViewConstraints.fontSize)
        return button
    }()
    
    private lazy var dContainer: UIView = {
        let view = UIView(frame: CGRect.zero)
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var btD: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(GlobalConstants.Labels.d, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemOrange
        button.titleLabel?.font = .systemFont(ofSize: XylophoneUIViewConstraints.fontSize)
        return button
    }()
    
    private lazy var eContainer: UIView = {
        let view = UIView(frame: CGRect.zero)
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var btE: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(GlobalConstants.Labels.e, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemYellow
        button.titleLabel?.font = .systemFont(ofSize: XylophoneUIViewConstraints.fontSize)
        return button
    }()
    
    private lazy var fContainer: UIView = {
        let view = UIView(frame: CGRect.zero)
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var btF: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(GlobalConstants.Labels.f, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemGreen
        button.titleLabel?.font = .systemFont(ofSize: XylophoneUIViewConstraints.fontSize)
        return button
    }()
    
    private lazy var gContainer: UIView = {
        let view = UIView(frame: CGRect.zero)
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var btG: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(GlobalConstants.Labels.g, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemIndigo
        button.titleLabel?.font = .systemFont(ofSize: XylophoneUIViewConstraints.fontSize)
        return button
    }()
    
    private lazy var aContainer: UIView = {
        let view = UIView(frame: CGRect.zero)
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var btA: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(GlobalConstants.Labels.a, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.titleLabel?.font = .systemFont(ofSize: XylophoneUIViewConstraints.fontSize)
        return button
    }()
    
    private lazy var bContainer: UIView = {
        let view = UIView(frame: CGRect.zero)
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var btB: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(GlobalConstants.Labels.b, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemPurple
        button.titleLabel?.font = .systemFont(ofSize: XylophoneUIViewConstraints.fontSize)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initComponents()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func initComponents() {
        addComponents()
        setAutolayout()
    }
    
    private func addComponents() {
        addSubview(mainContainer)
        mainContainer.addSubview(stackContainer)
        stackContainer.addArrangedSubview(cContainer)
        cContainer.addSubview(btC)
        stackContainer.addArrangedSubview(dContainer)
        dContainer.addSubview(btD)
        stackContainer.addArrangedSubview(eContainer)
        eContainer.addSubview(btE)
        stackContainer.addArrangedSubview(fContainer)
        fContainer.addSubview(btF)
        stackContainer.addArrangedSubview(gContainer)
        gContainer.addSubview(btG)
        stackContainer.addArrangedSubview(aContainer)
        aContainer.addSubview(btA)
        stackContainer.addArrangedSubview(bContainer)
        bContainer.addSubview(btB)
    }
    
    private func setAutolayout() {
        NSLayoutConstraint.activate([
            mainContainer.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            mainContainer.leadingAnchor.constraint(equalTo: leadingAnchor),
            mainContainer.trailingAnchor.constraint(equalTo: trailingAnchor),
            mainContainer.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            
            stackContainer.topAnchor.constraint(equalTo: mainContainer.topAnchor,constant: XylophoneUIViewConstraints.StackContainer.top),
            stackContainer.leadingAnchor.constraint(equalTo: mainContainer.leadingAnchor),
            stackContainer.trailingAnchor.constraint(equalTo: mainContainer.trailingAnchor),
            stackContainer.bottomAnchor.constraint(equalTo: mainContainer.bottomAnchor, constant: XylophoneUIViewConstraints.StackContainer.bottom),
            
            btC.topAnchor.constraint(equalTo: cContainer.topAnchor),
            btC.leadingAnchor.constraint(equalTo: cContainer.leadingAnchor, constant: XylophoneUIViewConstraints.BtC.leading),
            btC.trailingAnchor.constraint(equalTo: cContainer.trailingAnchor, constant: XylophoneUIViewConstraints.BtC.trailing),
            btC.bottomAnchor.constraint(equalTo: cContainer.bottomAnchor),
            
            btD.topAnchor.constraint(equalTo: dContainer.topAnchor),
            btD.leadingAnchor.constraint(equalTo: dContainer.leadingAnchor, constant: XylophoneUIViewConstraints.BtD.leading),
            btD.trailingAnchor.constraint(equalTo: dContainer.trailingAnchor, constant: XylophoneUIViewConstraints.BtD.trailing),
            btD.bottomAnchor.constraint(equalTo: dContainer.bottomAnchor),
            
            btE.topAnchor.constraint(equalTo: eContainer.topAnchor),
            btE.leadingAnchor.constraint(equalTo: eContainer.leadingAnchor, constant: XylophoneUIViewConstraints.BtE.leading),
            btE.trailingAnchor.constraint(equalTo: eContainer.trailingAnchor, constant: XylophoneUIViewConstraints.BtE.trailing),
            btE.bottomAnchor.constraint(equalTo: eContainer.bottomAnchor),
            
            btF.topAnchor.constraint(equalTo: fContainer.topAnchor),
            btF.leadingAnchor.constraint(equalTo: fContainer.leadingAnchor, constant: XylophoneUIViewConstraints.BtF.leading),
            btF.trailingAnchor.constraint(equalTo: fContainer.trailingAnchor, constant: XylophoneUIViewConstraints.BtF.trailing),
            btF.bottomAnchor.constraint(equalTo: fContainer.bottomAnchor),
            
            btG.topAnchor.constraint(equalTo: gContainer.topAnchor),
            btG.leadingAnchor.constraint(equalTo: gContainer.leadingAnchor, constant: XylophoneUIViewConstraints.BtG.leading),
            btG.trailingAnchor.constraint(equalTo: gContainer.trailingAnchor, constant: XylophoneUIViewConstraints.BtG.trailing),
            btG.bottomAnchor.constraint(equalTo: gContainer.bottomAnchor),
            
            btA.topAnchor.constraint(equalTo: aContainer.topAnchor),
            btA.leadingAnchor.constraint(equalTo: aContainer.leadingAnchor, constant: XylophoneUIViewConstraints.BtA.leading),
            btA.trailingAnchor.constraint(equalTo: aContainer.trailingAnchor, constant: XylophoneUIViewConstraints.BtA.trailing),
            btA.bottomAnchor.constraint(equalTo: aContainer.bottomAnchor),
            
            btB.topAnchor.constraint(equalTo: bContainer.topAnchor),
            btB.leadingAnchor.constraint(equalTo: bContainer.leadingAnchor, constant: XylophoneUIViewConstraints.BtB.leading),
            btB.trailingAnchor.constraint(equalTo: bContainer.trailingAnchor, constant: XylophoneUIViewConstraints.BtB.trailing),
            btB.bottomAnchor.constraint(equalTo: bContainer.bottomAnchor),
        ])
    }
}
