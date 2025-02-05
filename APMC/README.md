# APMC-Coding-Challenge

## Overview

APMC is a simple SwiftUI-based iOS application that fetches and displays a list
of video episodes. Users can select an episode to view detailed information and
play the video within the app.

## Build Tools & Versions Used

- **Xcode**: 14.3.1
- **Swift**: 5.8.1
- **Frameworks**: SwiftUI, AVKit, Foundation
- **Testing**: XCTest, XCUIApplication (UI Tests)

## Features

- Fetch and display a list of episodes.
- View detailed information about an episode.
- Play video content using AVPlayer.
- Handles errors and displays appropriate messages.
- Implements MVVM architecture for separation of concerns.
- Uses async/await structured concurrency for network calls.

## Architecture

The application follows the MVVM (Model-View-ViewModel) architecture to ensure
better maintainability and testability:

- **Model**: Represents the episode data fetched from the API.
- **ViewModel**: Handles data fetching and business logic.
- **View**: Displays UI elements and updates based on ViewModel state.

## Assumptions & Trade-offs

- **Data Fetching**: The app fetches episode data from a static API. No caching mechanism is implemented for simplicity.

- **Video Playback**: The player starts playing when the detail view appears and stops when the user navigates back.

- **Error Handling**: Basic error handling is implemented for failed network calls.

- **UI Design**: Focus is placed on usability and clean visuals, avoiding overly complex animations.

## Testing Strategy

- **Unit Tests**:

- **MockEpisodeServiceTests.swift**: Tests fetching episodes with a mock service.
- **EpisodesViewModelTests.swift**: Ensures ViewModel handles success and failure scenarios correctly.

- **UI Tests**:

- Tests for list loading, navigation, and video playback interactions.

## Installation

- Clone the repository
- git clone https://github.com/Ravikanth108/APMC-Coding-Challenge.git
- Open APMC.xcodeproj in Xcode.
- Run the app on a simulator or physical device using Cmd + R.
- To execute tests, use Cmd + U.

## Future Improvements

- Add offline caching for episodes.
- Implement search and filtering options.
- Add Pagination for large Datasets.
- Improve error handling with user-friendly messages.
- Add analytics tracking for user interactions.



