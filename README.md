# Foodigo - Food Delivery App

## Tech Stack

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white" alt="Flutter" />
  <img src="https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white" alt="Dart" />
  <img src="https://img.shields.io/badge/Node.js-43853D?style=for-the-badge&logo=node.js&logoColor=white" alt="Node.js" />
  <img src="https://img.shields.io/badge/Express.js-404D59?style=for-the-badge&logo=express&logoColor=white" alt="Express.js" />
  <img src="https://img.shields.io/badge/MongoDB-4EA94B?style=for-the-badge&logo=mongodb&logoColor=white" alt="MongoDB" />
  <img src="https://img.shields.io/badge/Firebase-039BE5?style=for-the-badge&logo=Firebase&logoColor=white" alt="Firebase" />
  <img src="https://img.shields.io/badge/Google_Maps-4285F4?style=for-the-badge&logo=google-maps&logoColor=white" alt="Google Maps" />
</p>

## Description

Foodigo is a comprehensive food delivery application built with Flutter for the user interface and Node.js/Express for the backend. It allows users to browse restaurants, order food, track deliveries, and manage their accounts seamlessly.

## Features

- **User Authentication**: Secure login and registration using Firebase Auth.
- **Restaurant Management**: Browse and view restaurant details, menus, and categories.
- **Food Ordering**: Add items to cart, customize orders, and place orders.
- **Real-time Tracking**: Track delivery status with Google Maps integration.
- **Payment Integration**: Secure payment processing (to be implemented).
- **Admin Panel**: Backend API for managing restaurants, foods, and orders.
- **Responsive Design**: Optimized for mobile devices using Flutter.

## Project Structure

- `food_delivery_backend/`: Node.js backend with Express, MongoDB, and Firebase integration.
- `food_delivery_user_app/`: Flutter mobile application for users.

## Installation

### Backend Setup

1. Navigate to the backend directory:
   ```bash
   cd food_delivery_backend
   ```

2. Install dependencies:
   ```bash
   npm install
   ```

3. Create a `.env` file with necessary environment variables (e.g., MongoDB URI, Firebase credentials).

4. Start the server:
   ```bash
   npm start
   ```

### Frontend Setup

1. Navigate to the Flutter app directory:
   ```bash
   cd food_delivery_user_app
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Run the app:
   ```bash
   flutter run
   ```

## Usage

- Start the backend server.
- Launch the Flutter app on an emulator or physical device.
- Register or log in to access the app features.

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request.

## License

This project is licensed under the ISC License.
