import UIKit

class FirstScreenVC: UIViewController {
    let resetButton:UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemGreen
        button.setTitle("Reset!", for: .normal)
        let image = UIImage(systemName: "arrow.clockwise.circle")
        button.setImage(image, for: .normal)
        return button
        
    }()
    
    let screenlabel:UILabel = {
        let label = UILabel()
        label.text = "Welcome to the Game"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 20, weight: .bold)
        return label
    }()
    
    let stopButton:UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitle("Stop!", for: .normal)
        let image = UIImage(systemName: "stop.circle")
        button.setImage(image, for: .normal)
        button.tintColor = .black
        return button
    }()
    
        let rulesButton:UIButton = {
            let button = UIButton()
            button.backgroundColor = .systemBlue
            button.setTitle("Rules", for: .normal)
            let image = UIImage(systemName: "list.bullet")
                button.setImage(image, for: .normal)
                
                // Make sure the image is always visible on the left
            button.tintColor = .black
//                button.imageView?.contentMode = .scaleAspectFit
//                button.semanticContentAttribute = .forceLeftToRight
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
        timerInit()
    }
    
    func timerInit(){
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(cardClicked), userInfo: nil, repeats: true)
    }
    
    @objc func cardClicked(){
        imageViewer.image = photoStore.allValues.randomElement()
    }

    func configureUI() {
        configureImageView()
        configureStopButton()
        configureResetButton()
        configureRulesButton()
        configurescreenLabel()
       
    }
    
    func configureImageView() {
        view.addSubview(imageViewer)
        imageViewer.translatesAutoresizingMaskIntoConstraints = false
        imageViewer.image = UIImage(named: "download1")
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
        resetButton.addTarget(self, action: #selector(resetTapped), for: .touchUpInside)
        resetButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            resetButton.widthAnchor.constraint(equalToConstant: 115),
            resetButton.heightAnchor.constraint(equalToConstant: 50),
            resetButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 20),resetButton.leadingAnchor.constraint(equalTo: stopButton.leadingAnchor)
        ])
    }
    
    @objc func resetTapped() {
        timerInit()
    }

    func configureRulesButton() {
    view.addSubview(rulesButton)
        rulesButton.translatesAutoresizingMaskIntoConstraints = false
        rulesButton.addTarget(self, action: #selector(rulesButtonTapped), for: .touchUpInside)
        

        NSLayoutConstraint.activate([
            rulesButton.widthAnchor.constraint(equalToConstant: 115),
            rulesButton.heightAnchor.constraint(equalToConstant: 50),
            rulesButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 20),
            rulesButton.trailingAnchor.constraint(equalTo: stopButton.trailingAnchor)
        ])
    }
    
    @objc func rulesButtonTapped(){
        present(rulesVC(), animated: true)
    }
    
    func configurescreenLabel() {
        view.addSubview(screenlabel)
        screenlabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([screenlabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20), screenlabel.widthAnchor.constraint(equalToConstant: 300), screenlabel.heightAnchor.constraint(equalToConstant: 150), screenlabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)])
        
    }

    
}
