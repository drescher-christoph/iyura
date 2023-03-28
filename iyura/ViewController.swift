//
//  ViewController.swift
//  iyura
//
//  Created by Christoph Drescher on 24.03.23.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    lazy var logo = UIImage(named: "iyura")
    lazy var logoView = UIImageView(image: logo)
    
    lazy var image = UIImage(named: "fingerprint")
    lazy var imageView = UIImageView(image: image)
    
    lazy var image1 = UIImage(named: "wallet")
    lazy var imageView1 = UIImageView(image: image1)
    
    lazy var image2 = UIImage(named: "data")
    lazy var imageView2 = UIImageView(image: image2)
    
    lazy var image3 = UIImage(named: "stock")
    lazy var imageView3 = UIImageView(image: image3)
    
    
    var view0Label = UILabel()
    var view1Label = UILabel()
    var view2Label = UILabel()
    var view3Label = UILabel()
    
    let text1 = UILabel()
    let text2 = UILabel()
    let text3 = UILabel()
    let text4 = UILabel()
    
    
    //MARK: - Views
   lazy var view0 = UIView()
   lazy var view1 = UIView()
   lazy var view2 = UIView()
   lazy var view3 = UIView()
    
    func setUpLogoView() {
        logoView.translatesAutoresizingMaskIntoConstraints = false
        logoView.topAnchor.constraint(equalTo: view.topAnchor, constant: 10).isActive = true
        logoView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
    }
    
    func setUpView0() {
        view0.backgroundColor = .white
        view0.addSubview(imageView)
        imageView.centerToJ(view0)
        setUpTextLabelForView0()
        setUpView0Text()
    }
    func setUpView1() {
        view1.backgroundColor = .white
        view1.addSubview(imageView1)
        imageView1.centerTo(view1)
        setUpTextLabelForView1()
        setUpView1Text()
    }
    func setUpView2() {
        view2.backgroundColor = .white
        view2.addSubview(imageView2)
        imageView2.centerTo_wide_width(view2)
        setUpTextLabelForView2()
        setUpView2Text()
    }
    func setUpView3() {
        view3.backgroundColor = .white
        view3.addSubview(imageView3)
        imageView3.centerTo_wide_width(view3)
        setUpTextLabelForView3()
        setUpView3Text()
    }
    
    lazy var views = [view0, view1, view2, view3]
    
    
    //MARK: - TextLabels
    
    func setUpTextLabelForView0() {
        view0.addSubview(view0Label)
        view0Label.font = UIFont.preferredFont(forTextStyle: .title1)
        view0Label.font = UIFont.boldSystemFont(ofSize: 25)
        view0Label.numberOfLines = 2
        view0Label.text = "iyura.io - Deine Web3 ID"
        view0Label.textAlignment = .center
        view0Label.textColor = .black
        
        view0Label.translatesAutoresizingMaskIntoConstraints = false
        view0Label.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20).isActive = true
        view0Label.centerXAnchor.constraint(equalTo: view0.centerXAnchor).isActive = true
        view0Label.widthAnchor.constraint(equalToConstant: 320).isActive = true
        view0Label.heightAnchor.constraint(equalToConstant: 80).isActive = true
    }
    
    func setUpTextLabelForView1() {
        view1.addSubview(view1Label)
        view1Label.font = UIFont.preferredFont(forTextStyle: .title1)
        view1Label.font = UIFont.boldSystemFont(ofSize: 25)
        view1Label.numberOfLines = 2
        view1Label.text = "Verbinde Dein Wallet mit Deiner Identität und erlebe das Internet neu"
        view1Label.textAlignment = .center
        view1Label.textColor = .black
        
        view1Label.translatesAutoresizingMaskIntoConstraints = false
        view1Label.topAnchor.constraint(equalTo: imageView1.bottomAnchor, constant: 20).isActive = true
        view1Label.centerXAnchor.constraint(equalTo: view1.centerXAnchor).isActive = true
        view1Label.widthAnchor.constraint(equalToConstant: 340).isActive = true
        view1Label.heightAnchor.constraint(equalToConstant: 80).isActive = true
    }
    
    func setUpTextLabelForView2() {
        view2.addSubview(view2Label)
        view2Label.font = UIFont.preferredFont(forTextStyle: .title1)
        view2Label.font = UIFont.boldSystemFont(ofSize: 25)
        view2Label.numberOfLines = 2
        view2Label.text = "Einfache Registrierungen und Zugriff auf Deine Daten"
        view2Label.textAlignment = .center
        view2Label.textColor = .black
        
        view2Label.translatesAutoresizingMaskIntoConstraints = false
        view2Label.topAnchor.constraint(equalTo: imageView2.bottomAnchor, constant: 20).isActive = true
        view2Label.centerXAnchor.constraint(equalTo: view2.centerXAnchor).isActive = true
        view2Label.widthAnchor.constraint(equalToConstant: 320).isActive = true
        view2Label.heightAnchor.constraint(equalToConstant: 80).isActive = true
    }
    
    func setUpTextLabelForView3() {
        view3.addSubview(view3Label)
        view3Label.font = UIFont.preferredFont(forTextStyle: .title1)
        view3Label.font = UIFont.boldSystemFont(ofSize: 25)
        view3Label.numberOfLines = 2
        view3Label.text = "Nie wieder aufwendige Online Registrierungen"
        view3Label.textAlignment = .center
        view3Label.textColor = .black
        
        view3Label.translatesAutoresizingMaskIntoConstraints = false
        view3Label.topAnchor.constraint(equalTo: imageView3.bottomAnchor, constant: 20).isActive = true
        view3Label.centerXAnchor.constraint(equalTo: view3.centerXAnchor).isActive = true
        view3Label.widthAnchor.constraint(equalToConstant: 320).isActive = true
        view3Label.heightAnchor.constraint(equalToConstant: 80).isActive = true
    }
    
    
    //Texts
    
    func setUpView0Text() {
        view0.addSubview(text1)
        text1.text = "iyura ist Dein Eintritt in die Welt des sicheren Internets, keine Fake Profile oder Betrügereien"
        text1.textAlignment = .center
        text1.textColor = .lightGray
        text1.numberOfLines = 0
        text1.translatesAutoresizingMaskIntoConstraints = false
        text1.leadingAnchor.constraint(equalTo: view0.leadingAnchor, constant: 20).isActive = true
        text1.topAnchor.constraint(equalTo: view0Label.bottomAnchor, constant: 10).isActive = true
        text1.leadingAnchor.constraint(equalTo: view0.leadingAnchor, constant: 20).isActive = true
        text1.trailingAnchor.constraint(equalTo: view0.trailingAnchor, constant: -20).isActive = true
        text1.heightAnchor.constraint(equalToConstant: 70).isActive = true
    }
    
    func setUpView1Text() {
        view1.addSubview(text2)
        // Text
        text2.text = "Stehe für Deinen Namen, keine halb-anonymen Blockchain Adressen, echte Identitäten und Sicherheit"
        text2.textAlignment = .center
        text2.textColor = .lightGray
        text2.numberOfLines = 0
        
        text2.translatesAutoresizingMaskIntoConstraints = false
        text2.leadingAnchor.constraint(equalTo: view1.leadingAnchor, constant: 20).isActive = true
        text2.topAnchor.constraint(equalTo: view1Label.bottomAnchor, constant: 10).isActive = true
        text2.leadingAnchor.constraint(equalTo: view1.leadingAnchor, constant: 20).isActive = true
        text2.trailingAnchor.constraint(equalTo: view1.trailingAnchor, constant: -20).isActive = true
        text2.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
    }
    
    func setUpView2Text() {
        view2.addSubview(text3)
        text3.text = "Schluss mit langwierigen Online Registrierungen - Melde Dich überall in einem Schritt mit Deiner iyura ID an"
        text3.textAlignment = .center
        text3.textColor = .lightGray
        text3.numberOfLines = 0
        text3.translatesAutoresizingMaskIntoConstraints = false
        text3.leadingAnchor.constraint(equalTo: view2.leadingAnchor, constant: 20).isActive = true
        text3.topAnchor.constraint(equalTo: view2Label.bottomAnchor, constant: 10).isActive = true
        text3.leadingAnchor.constraint(equalTo: view2Label.leadingAnchor, constant: 20).isActive = true
        text3.trailingAnchor.constraint(equalTo: view2.trailingAnchor, constant: -20).isActive = true
        text3.heightAnchor.constraint(equalToConstant: 70).isActive = true
    }
    
    func setUpView3Text() {
        view3.addSubview(text4)
        text4.text = "Du siehst wer Zugriff auf Deine Identität und Daten hat, erteile Zustimmungen oder Verweigere - Es liegt in Deiner Hand!"
        text4.textAlignment = .center
        text4.textColor = .lightGray
        text4.numberOfLines = 0
        text4.translatesAutoresizingMaskIntoConstraints = false
        text4.leadingAnchor.constraint(equalTo: view3.leadingAnchor, constant: 20).isActive = true
        text4.topAnchor.constraint(equalTo: view3Label.bottomAnchor, constant: 10).isActive = true
        text4.leadingAnchor.constraint(equalTo: view3Label.leadingAnchor, constant: 20).isActive = true
        text4.trailingAnchor.constraint(equalTo: view3.trailingAnchor, constant: -20).isActive = true
        text4.heightAnchor.constraint(equalToConstant: 70).isActive = true
    }
    
    //MARK: - ScrollView
    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.isPagingEnabled = true
        scrollView.contentSize = CGSize(width: view.frame.width * CGFloat(views.count),height: scrollView.frame.size.height)
        
        for i in 0..<views.count {
            scrollView.addSubview(views[i])
            views[i].frame = CGRect(x: view.frame.width * CGFloat(i), y: 0, width: view.frame.width, height: view.frame.height)
        }
        
        scrollView.delegate = self
        
        return scrollView
    }()
    
    lazy var pageControl: UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.numberOfPages = views.count
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = .lightGray
        pageControl.currentPageIndicatorTintColor = .cyan
        pageControl.addTarget(self, action: #selector(pageControlTapHandler(sender:)), for: .touchUpInside)
        return pageControl
    }()
    
    @objc
    func pageControlTapHandler(sender: UIPageControl) {
        scrollView.scrollTo(horizontalPage: sender.currentPage, animated: true)
    }
    
    //MARK: - Jumpt to Main
    func jumpToMain() {
        let vc = ConnectWallet()
        dismiss(animated: true, completion: {
            UIApplication.shared.windows.first?.rootViewController = vc
        })
    }
    
//MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        
        // Do any additional setup after loading the view.
        
        view.addSubview(scrollView)
        scrollView.edgeTo(view: view)
        view.addSubview(pageControl)
        pageControl.pinTo(view)
        view.addSubview(getStartedButton)
        getStartedButton.pinButtonTo(view)
        view.addSubview(alreadyHaveAccountLabel)
        alreadyHaveAccountLabel.place_under_view(under_place: getStartedButton)
        view.addSubview(loginButton)
        loginButton.placeLoginButton(under_place: getStartedButton, leftView: alreadyHaveAccountLabel)
        view.addSubview(logoView)
        
        setUpView0()
        setUpView1()
        setUpView2()
        setUpView3()
        setUpLogoView()
        
    }
    
    lazy var getStartedButton: UIButton =  {
        let getStartedButton = UIButton()
        getStartedButton.setTitle("Jetzt anfangen", for: .normal)
        getStartedButton.setTitleColor(.black, for: .normal)
        getStartedButton.layer.cornerRadius = 15
        getStartedButton.backgroundColor = .cyan
        getStartedButton.addTarget(self, action: #selector(getStarted), for: .touchUpInside)
        
        return getStartedButton
    }()
    
    @objc func getStarted() {
        //UIApplication.shared.windows.first?.rootViewController = NameView()
        jumpToMain()
    }
    
    lazy var alreadyHaveAccountLabel: UILabel = {
        let alreadyHaveAccountLabel = UILabel()
        alreadyHaveAccountLabel.text = "Du hast schon ein Konto?"
        alreadyHaveAccountLabel.textAlignment = .center
        alreadyHaveAccountLabel.textColor = .lightGray
        
        return alreadyHaveAccountLabel
    }()
    
    lazy var loginButton: UIButton = {
        let loginButton = UIButton()
        loginButton.setTitle("Anmelden", for: .normal)
        loginButton.setTitleColor(.cyan, for: .normal)
        loginButton.addTarget(self, action: #selector(openLogin), for: .touchUpInside)
        
        return loginButton
    }()
    
    @objc func openLogin() {
        //present(LoginView(), animated: true, completion: nil)
    }
    
    
    
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let pageIndex = round(scrollView.contentOffset.x / view.frame.width)
        pageControl.currentPage = Int(pageIndex)
    }

}



   




   




//MARK: Extension

extension UIScrollView {
    func scrollTo(horizontalPage: Int? = 0, verticalPage: Int? = 0, animated: Bool? = true) {
        var frame: CGRect = self.frame
        frame.origin.x = frame.size.width * CGFloat(horizontalPage ?? 0)
        frame.origin.y = frame.size.width * CGFloat(verticalPage ?? 0)
        self.scrollRectToVisible(frame, animated: animated ?? true)
    }
}

public extension UIScrollView {
    func edgeTo(view: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}

public extension UIView {
    func pinTo(_ view: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: 50).isActive = true
        leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -150).isActive = true
    }
}

public extension UIButton {
    func pinButtonTo(_ view: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
        widthAnchor.constraint(equalToConstant: 330).isActive = true
        heightAnchor.constraint(equalToConstant: 50).isActive = true
        centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}

extension UIView {
    func centerTo(_ view: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60).isActive = true
        widthAnchor.constraint(equalToConstant: 300).isActive = true
        heightAnchor.constraint(equalToConstant: 300).isActive = true
    }
    
    func centerTo_wide_width(_ view: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60).isActive = true
        widthAnchor.constraint(equalToConstant: 400).isActive = true
        heightAnchor.constraint(equalToConstant: 300).isActive = true
    }
    
    func centerToJ(_ view: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60).isActive = true
        widthAnchor.constraint(equalToConstant: 300).isActive = true
        heightAnchor.constraint(equalToConstant: 300).isActive = true
}
    
    func place_under_view(under_place: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: under_place.bottomAnchor, constant: 10).isActive = true
        leadingAnchor.constraint(equalTo: under_place.leadingAnchor, constant: -20).isActive = true
        widthAnchor.constraint(equalToConstant: 280).isActive = true
        heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    func placeLoginButton(under_place: UIView, leftView: UILabel) {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: under_place.bottomAnchor, constant: 10).isActive = true
        leadingAnchor.constraint(equalTo: leftView.trailingAnchor, constant: -40).isActive = true
        widthAnchor.constraint(equalToConstant: 100).isActive = true
        heightAnchor.constraint(equalToConstant: 30).isActive = true
    }

}


