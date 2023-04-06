//
//  ViewController.swift
//  Xylophony
//
//  Created by Aleksandr Bogdanov on 03.04.2023.
//

import UIKit
import SwiftUI
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer?

    var buttonC = UIButton()
    var buttonD = UIButton()
    var buttonE = UIButton()
    var buttonF = UIButton()
    var buttonG = UIButton()
    var buttonA = UIButton()
    var buttonB = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()

        styleButtonC()
        styleButtonD()
        styleButtonE()
        styleButtonF()
        styleButtonG()
        styleButtonA()
        styleButtonB()
        makeConstraintsButtonC()
        makeConstraintsButtonD()
        makeConstraintsButtonE()
        makeConstraintsButtonF()
        makeConstraintsButtonG()
        makeConstraintsButtonA()
        makeConstraintsButtonB()
    }

    func styleButtonC() {
        view.addSubview(buttonC)
        buttonC.setTitle("C", for: .normal)
        buttonC.backgroundColor = .systemRed
        buttonC.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        buttonC.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }

    func styleButtonD() {
        view.addSubview(buttonD)
        buttonD.setTitle("D", for: .normal)
        buttonD.backgroundColor = .systemOrange
        buttonD.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        buttonD.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }

    func styleButtonE() {
        view.addSubview(buttonE)
        buttonE.setTitle("E", for: .normal)
        buttonE.backgroundColor = .systemYellow
        buttonE.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        buttonE.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }

    func styleButtonF() {
        view.addSubview(buttonF)
        buttonF.setTitle("F", for: .normal)
        buttonF.backgroundColor = .systemGreen
        buttonF.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        buttonF.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }

    func styleButtonG() {
        view.addSubview(buttonG)
        buttonG.setTitle("G", for: .normal)
        buttonG.backgroundColor = .systemIndigo
        buttonG.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        buttonG.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }

    func styleButtonA() {
        view.addSubview(buttonA)
        buttonA.setTitle("A", for: .normal)
        buttonA.backgroundColor = .systemBlue
        buttonA.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        buttonA.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }

    func styleButtonB() {
        view.addSubview(buttonB)
        buttonB.setTitle("B", for: .normal)
        buttonB.backgroundColor = .systemPurple
        buttonB.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        buttonB.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }

    func makeConstraintsButtonC() {
        buttonC.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            buttonC.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            buttonC.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 5),
            buttonC.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -5),
            buttonC.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/7)
        ])
    }

    func makeConstraintsButtonD() {
        buttonD.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            buttonD.topAnchor.constraint(equalTo: buttonC.bottomAnchor, constant: 5),
            buttonD.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            buttonD.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            buttonD.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/7)
        ])
    }

    func makeConstraintsButtonE() {
        buttonE.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            buttonE.topAnchor.constraint(equalTo: buttonD.bottomAnchor, constant: 5),
            buttonE.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 15),
            buttonE.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -15),
            buttonE.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/7)
        ])
    }

    func makeConstraintsButtonF() {
        buttonF.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            buttonF.topAnchor.constraint(equalTo: buttonE.bottomAnchor, constant: 5),
            buttonF.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 25),
            buttonF.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -25),
            buttonF.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/7)
        ])
    }

    func makeConstraintsButtonG() {
        buttonG.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            buttonG.topAnchor.constraint(equalTo: buttonF.bottomAnchor, constant: 5),
            buttonG.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            buttonG.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30),
            buttonG.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/7)
        ])
    }

    func makeConstraintsButtonA() {
        buttonA.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            buttonA.topAnchor.constraint(equalTo: buttonG.bottomAnchor, constant: 5),
            buttonA.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 35),
            buttonA.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -35),
            buttonA.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/7)
        ])
    }

    func makeConstraintsButtonB() {
        buttonB.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            buttonB.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            buttonB.topAnchor.constraint(equalTo: buttonA.bottomAnchor, constant: 5),
            buttonB.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
            buttonB.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -40),
            buttonB.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/7)
        ])
    }

    func playAudio(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
    }

    @objc func buttonTapped(_ sender: UIButton) {
        playAudio(soundName: sender.currentTitle!)

        sender.alpha = 0.5

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1.0
        }
    }
}

// превью от SwiftUI
struct SwiftUIController: UIViewControllerRepresentable {
    typealias UIViewControllerType = ViewController
    func makeUIViewController(context: Context) -> UIViewControllerType {
        let viewController = UIViewControllerType()
        return viewController
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
}

struct SwiftUIController_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIController()
            .previewInterfaceOrientation(.portrait)
    }
}

