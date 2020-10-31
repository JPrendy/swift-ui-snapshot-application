//
//  LandmarksUITests.swift
//  LandmarksUITests
//
//  Created by James Prendergast  on 08/10/2020.
//

import XCTest
import SnapshotTesting
import SwiftUI

private let referenceSize = CGSize(width: 150, height: 50)

class LandmarksUITests: XCTestCase {
    
    override func setUp(){
      if ProcessInfo.processInfo.environment["SNAPSHOT_RECORD_MODE"] == "true" {
        SnapshotTesting.isRecording = true
      }
    }

    func testDefaultAppearance() {
        assertSnapshot(matching: ContentView().referenceFrame(), as: .image)
    }
    
    func testTraitsEmbeddedInTabNavigation() {
        if #available(iOS 11.0, *) {
            class MyViewController: UIViewController {
                let topLabel = UILabel()
                let bottomLabel = UILabel()
                
                override func viewDidLoad() {
                    super.viewDidLoad()
                    
                    self.navigationItem.leftBarButtonItem = .init(barButtonSystemItem: .add, target: nil, action: nil)
                    
                    self.view.backgroundColor = .white
                    
                    self.topLabel.text = "The top"
                    self.bottomLabel.text = "The bottom"
                    
                    self.topLabel.translatesAutoresizingMaskIntoConstraints = false
                    
                    self.bottomLabel.translatesAutoresizingMaskIntoConstraints = false
                    
                    self.view.addSubview(self.topLabel)
                    self.view.addSubview(self.bottomLabel)
                    
                    NSLayoutConstraint.activate([
                        self.topLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
                        self.topLabel.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor),
                        self.bottomLabel.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
                        self.bottomLabel.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor),
                    ])
                }
                
                override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
                    super.traitCollectionDidChange(previousTraitCollection)
                    self.topLabel.font = .preferredFont(forTextStyle: .headline, compatibleWith: self.traitCollection)
                    self.bottomLabel.font = .preferredFont(forTextStyle: .subheadline, compatibleWith: self.traitCollection)
                    self.view.setNeedsUpdateConstraints()
                    self.view.updateConstraintsIfNeeded()
                }
            }
            
            let myViewController = MyViewController()
            let navController = UINavigationController(rootViewController: myViewController)
            let viewController = UITabBarController()
            viewController.setViewControllers([navController], animated: false)
            
            assertSnapshot(matching: viewController, as: .image(on: .iPhone8), named: "iphone-8")
        }
    }
    
    func testTableViewController() {
      class TableViewController: UITableViewController {
        override func viewDidLoad() {
          super.viewDidLoad()
          self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        }
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return 10
        }
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
          cell.textLabel?.text = "\(indexPath.row)"
          return cell
        }
      }
      let tableViewController = TableViewController()
      assertSnapshot(matching: tableViewController, as: .image(on: .iPhone8), named: "iphone-8")
    }
}

//Without this we will have a blank screen this shows a preview of the text with a border.
private extension SwiftUI.View {
    func referenceFrame() -> some View {
        self.frame(width: referenceSize.width, height: referenceSize.height)
    }
}
