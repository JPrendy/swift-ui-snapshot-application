# template-repository

## Description

The existing repository is a template, I can generate new repositories with the same directory structure, branches, and files.

## Contents

- [Setup Steps](#setup-steps)
- [How to run the project locally](#how-to-run-the-project-locally)
- [Tools](#tools)
- [Update Dependencies](#update-dependencies)
- [Releases](#releases)
- [Helpful resources](#helpful-resources)

## Setup Steps

```
Code here
```

<p><img src="images/exampleImage.png" width="300"/></p>

## How to run the project locally

```
Code here
```

## Tools

**Linter:** we use the following linter [link](https://github.com/github/super-linter).

**Uploading Artifacts:**  we use the following way to upload Artifacts, they allow you to persist data like test results after a job has completed, see the following documentation [link](https://docs.github.com/en/actions/configuring-and-managing-workflows/persisting-workflow-data-using-artifacts).

**Creating images/icons:** we use Figma to create images and icon. Figma makes it very easy to create designs in many different formats.

**Creating a Mock Server:** we use a mock server with Postman to quickly test apis, to see how to create a mock server, see the following video [link](https://www.youtube.com/watch?v=rJY8uUH2TIk). 

### Mobile Specific Tools:
 
**Fastlane:** Fastlane allows us to automate our development and release process [link](https://docs.fastlane.tools/).

**App Center:** App Center is used to distribute an app, making it very easy to test on a physical device by using a fastlane plugin [link](https://github.com/microsoft/fastlane-plugin-appcenter).

**Proxyman:** we use Proxyman to view HTTP/HTTPS requests as they happen, it is easier to debug network connections on mobile on Proxyman where we can test and mock specific network responses, see the following documentation [link](https://docs.proxyman.io/debug-devices/ios-simulator). 

## Update Dependencies

**Npm:** How to update a npm package.
- [link](https://docs.npmjs.com/cli/update).

**Gemfile:** How to update a Gemfile package.
- [link](https://bundler.io/man/bundle-update.1.html#UPDATING-A-LIST-OF-GEMS).

## Releases

How to manage releases in a repository [link](https://help.github.com/en/github/administering-a-repository/managing-releases-in-a-repository). 

## Helpful resources

The following links to a Swift snapshot library that you can use to take snapshots.
- [link](https://github.com/pointfreeco/swift-snapshot-testing).


https://www.vadimbulavin.com/snapshot-testing-swiftui-views/
https://developer.apple.com/tutorials/swiftui/creating-and-combining-views
https://www.youtube.com/watch?v=IIDiqgdn2yo


https://www.hackingwithswift.com/example-code/uikit/how-to-add-a-bar-button-to-a-navigation-bar
https://cocoacasts.com/managing-view-controllers-with-container-view-controllers/

Check out this test from swift snapshot testing
testTableViewController
https://github.com/pointfreeco/swift-snapshot-testing/blob/main/Tests/SnapshotTestingTests/SnapshotTestingTests.swift#L337

testTraitsEmbeddedInTabNavigation
https://github.com/pointfreeco/swift-snapshot-testing/blob/main/Tests/SnapshotTestingTests/SnapshotTestingTests.swift#L535