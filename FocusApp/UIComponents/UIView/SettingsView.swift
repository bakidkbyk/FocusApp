//
//  SettingsView.swift
//  FocusApp
//
//  Created by Baki Dikbıyık on 23.02.2024.
//

import UIKit
import MobilliumBuilders
import TinyConstraints

public class SettingsView: UIView {
    
    private let settingsTitleLabel = UILabelBuilder()
        .font(UIFont(name: "Nunito-Bold", size: 25))
        .textColor(.white)
        .build()
    
    private let seperatorTopView = UIViewBuilder()
        .backgroundColor(.white)
        .build()
    
    private let timeTitleLabel = UILabelBuilder()
        .font(UIFont(name: "Nunito-Bold", size: 24))
        .textColor(.gray)
        .build()
    
    private let contentStackView = UIStackViewBuilder()
        .axis(.vertical)
        .spacing(15)
        .build()
    
    private let pomodoroStackView = UIStackViewBuilder()
        .spacing(10)
        .axis(.horizontal)
        .build()
    
    private let pomodoroTitleLabel = UILabelBuilder()
        .font(UIFont(name: "Nunito-SemiBold", size: 18))
        .textColor(.white)
        .build()
    
    private let pomodoroPickerButton = UIButtonBuilder()
        .backgroundColor(.red)
        .build()
    
    private let shortBreakStackView = UIStackViewBuilder()
        .spacing(10)
        .axis(.horizontal)
        .build()
    
    private let shortBreakTitleLabel = UILabelBuilder()
        .font(UIFont(name: "Nunito-SemiBold", size: 24))
        .textColor(.white)
        .build()
    
    private let shortBreakPickerButton = UIButtonBuilder()
        .backgroundColor(.red)
        .button
    
    private let longBreakStackView = UIStackViewBuilder()
        .spacing(10)
        .axis(.horizontal)
        .build()
    
    private let longBreakTitleLabel = UILabelBuilder()
        .font(UIFont(name: "Nunito-SemiBold", size: 24))
        .textColor(.white)
        .build()
    
    private let longBreakPickerButton = UIButtonBuilder()
        .backgroundColor(.red)
        .build()
    
    private let seperatorBottomView = UIViewBuilder()
        .backgroundColor(.white)
        .build()
    
    private let okButtonAction = UIButtonBuilder()
        .backgroundColor(.red)
        .build()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubViews()
        configureContents()
        setLocalize()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        addSubViews()
        configureContents()
        setLocalize()
    }
}

// MARK: - UILayout
extension SettingsView {
    
    private func addSubViews() {
        addSubview(settingsTitleLabel)
        settingsTitleLabel.topToSuperview().constant = 30
        settingsTitleLabel.leadingToSuperview().constant = 20
        
        addSubview(seperatorTopView)
        seperatorTopView.topToBottom(of: settingsTitleLabel).constant = 11
        seperatorTopView.leadingToSuperview()
        seperatorTopView.trailingToSuperview()
        
        addSubview(timeTitleLabel)
        timeTitleLabel.topToBottom(of: seperatorTopView).constant = 11
        timeTitleLabel.centerXToSuperview()
        
        addSubview(contentStackView)
        contentStackView.edgesToSuperview(excluding: [.top, .bottom], insets: .init(top: 0, left: 30, bottom: 0, right: 30), usingSafeArea: true)
        contentStackView.topToBottom(of: timeTitleLabel).constant = 18
        
        contentStackView.addArrangedSubview(pomodoroStackView)
        contentStackView.addArrangedSubview(shortBreakStackView)
        contentStackView.addArrangedSubview(longBreakStackView)
        
        pomodoroStackView.addArrangedSubview(pomodoroTitleLabel)
        pomodoroStackView.addArrangedSubview(pomodoroPickerButton)
        
        shortBreakStackView.addArrangedSubview(shortBreakTitleLabel)
        shortBreakStackView.addArrangedSubview(shortBreakPickerButton)
        
        longBreakStackView.addArrangedSubview(longBreakTitleLabel)
        longBreakStackView.addArrangedSubview(longBreakPickerButton)
        
        addSubview(seperatorBottomView)
        seperatorBottomView.edgesToSuperview(excluding: [.top, .bottom], insets: .init(top: 0, left: 0, bottom: 0, right: 0))
        seperatorBottomView.topToBottom(of: contentStackView).constant = 10
        
        addSubview(okButtonAction)
        okButtonAction.topToBottom(of: seperatorBottomView)
        okButtonAction.centerXToSuperview()
    }
}

// MARK: - Configure And Localize
extension SettingsView {
    
    private func configureContents() {
        seperatorTopView.height(1)
        seperatorBottomView.height(1)
        backgroundColor = .systemPink
    }
    
    private func setLocalize() {
        settingsTitleLabel.text = "Settings"
        timeTitleLabel.text = "TIME (MINUTES)"
        pomodoroTitleLabel.text = "Pomodoro"
        shortBreakTitleLabel.text = "Short Break"
        longBreakTitleLabel.text = "Long Break"
        okButtonAction.setTitle("OK", for: .normal)
    }
}
