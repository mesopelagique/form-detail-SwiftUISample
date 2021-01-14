//
//  ___TABLE___DetailsForm.swift
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___
//  ___COPYRIGHT___

import UIKit
import SwiftUI
import QMobileUI

/// Generated details form UI for ___TABLE___ table.
struct ___TABLE___DetailsFormUI: View {

    @ObservedObject var record: ___TABLE___

    private struct Field: Hashable {
        var label: String
        var name: String
    }

    @State private var fields: [Field] = [
        Field(label: "___FIELD_1_LABEL___", name: "___FIELD_1_NAME___"),
        Field(label: "___FIELD_2_LABEL___", name: "___FIELD_2_NAME___"),
        Field(label: "___FIELD_3_LABEL___", name: "___FIELD_3_NAME___"),
        Field(label: "___FIELD_4_LABEL___", name: "___FIELD_4_NAME___"),
        Field(label: "___FIELD_5_LABEL___", name: "___FIELD_5_NAME___"),
        Field(label: "___FIELD_6_LABEL___", name: "___FIELD_6_NAME___"),
        Field(label: "___FIELD_7_LABEL___", name: "___FIELD_7_NAME___"),
        Field(label: "___FIELD_8_LABEL___", name: "___FIELD_8_NAME___"),
        Field(label: "___FIELD_9_LABEL___", name: "___FIELD_9_NAME___"),
        Field(label: "___FIELD_10_LABEL___", name: "___FIELD_10_NAME___")
    ]

    var body: some View {
        Group {
            ForEach(fields, id: \.self) { field in
                if !field.label.isEmpty {
                    HStack {
                        Text(field.label).bold()
                        Spacer()
                        if let value = record.value(forKeyPath: field.name), let valueString = "\(value)" {
                            Text("\(valueString)").foregroundColor(.accentColor).font(.footnote)
                        } else {
                            Text("")
                        }
                    }.padding(.all, 5)
                }
            }
            Spacer()
        }.accentColor(Color("BackgroundColor")).background(Color("ForegroundColor")) // reversed color of navigation bar
    }
}

struct ___TABLE___DetailsFormUI_Previews: PreviewProvider {
    static var mock: ___TABLE___ {
        let mock = ___TABLE___()
        /*mock.driverId = 1
        mock.forename = "forename"
        mock.nationality = "nationality"
        mock.surname = "surname"*/
        return mock
    }
    static var previews: some View {
        ___TABLE___DetailsFormUI(record: mock)
    }
}

/// Generated details form for ___TABLE___ table.
@IBDesignable
class ___TABLE___DetailsForm: DetailsFormBare {

    var hostingController: UIHostingController<___TABLE___DetailsFormUI>!

    func createHostingController() {
        if hostingController == nil {
            hostingController = UIHostingController<___TABLE___DetailsFormUI>(rootView: ___TABLE___DetailsFormUI(record: self.record))
            self.addChild(hostingController)
            self.view.addSubview(hostingController.view)
            hostingController.view.translatesAutoresizingMaskIntoConstraints = false
            self.view.topAnchor.constraint(equalTo: hostingController.view.topAnchor).isActive = true
            self.view.leftAnchor.constraint(equalTo: hostingController.view.leftAnchor).isActive = true
            self.view.rightAnchor.constraint(equalTo: hostingController.view.rightAnchor).isActive = true
            self.view.bottomAnchor.constraint(equalTo: hostingController.view.bottomAnchor).isActive = true
            hostingController.didMove(toParent: self)
        }
    }

    /// The record displayed in this form
    var record: ___TABLE___ {
        return super.record as! ___TABLE___ // swiftlint:disable:this force_cast
    }

    // MARK: Events
    override func onLoad() {
        // Do any additional setup after loading the view.
    }

    override func onWillAppear(_ animated: Bool) {
        // Called when the view is about to made visible. Default does nothing
        createHostingController()
    }

    override func onDidAppear(_ animated: Bool) {
        // Called when the view has been fully transitioned onto the screen. Default does nothing
    }

    override func onWillDisappear(_ animated: Bool) {
        // Called when the view is dismissed, covered or otherwise hidden. Default does nothing
    }

    override func onDidDisappear(_ animated: Bool) {
        // Called after the view was dismissed, covered or otherwise hidden. Default does nothing
    }

    override func onRecordChanged() {
        hostingController.rootView.record = record
    }

    // MARK: Custom actions

}
