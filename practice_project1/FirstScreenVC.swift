import UIKit

class FirstScreenVC: UIViewController {
    let resetButton:UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemGreen
        button.setTitle("Reset!", for: .normal)
        return button
        
    }()
    
    let stopButton:UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitle("Stop!", for: .normal)
        return button
    }()
    
    let rulesButton:UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitle("Rules", for: .normal)
        return button
    }()
    let imageViewer:UIImageView = {
        let image = UIImageView()
        return image
    }()
    
    
   
   
    var timer = Timer()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        configureUI()
    }

    func configureUI() {
        configureImageView()
        configureStopButton()
        configureResetButton()
        configureRulesButton()
       
    }
    
    func configureImageView() {
        view.addSubview(imageViewer)
        imageViewer.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            imageViewer.widthAnchor.constraint(equalToConstant: 200),
            imageViewer.heightAnchor.constraint(equalToConstant: 200),
            imageViewer.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageViewer.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    func configureStopButton() {
        view.addSubview(stopButton)
        stopButton.translatesAutoresizingMaskIntoConstraints = false
        stopButton.addTarget(self, action: #selector(stopButtonTapped), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            stopButton.heightAnchor.constraint(equalToConstant: 56),
            stopButton.widthAnchor.constraint(equalToConstant: 320),
            stopButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),stopButton.topAnchor.constraint(equalTo: imageViewer.bottomAnchor, constant: 30)])
            
    }
     
    @objc func stopButtonTapped() {
        timer.invalidate()
    }

    func configureResetButton() {
        view.addSubview(resetButton)
        resetButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            resetButton.widthAnchor.constraint(equalToConstant: 115),
            resetButton.heightAnchor.constraint(equalToConstant: 50),
            resetButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 20),resetButton.leadingAnchor.constraint(equalTo: stopButton.leadingAnchor)
        ])
    }

    func configureRulesButton() {
    view.addSubview(rulesButton)
        rulesButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            rulesButton.widthAnchor.constraint(equalToConstant: 115),
            rulesButton.heightAnchor.constraint(equalToConstant: 50),
            rulesButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 20),
            rulesButton.trailingAnchor.constraint(equalTo: stopButton.trailingAnchor)
        ])
    }

    
}
