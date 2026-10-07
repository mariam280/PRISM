# PRISM

**See the system behind every screen.**

PRISM is a Flutter app that reverse-engineers UI design. Upload a screenshot of any app, and PRISM uses AI to break it down into a structured **Blueprint**: the color palette, typography, spacing, shape language, layout structure, and individual UI components detected from the original screen.

It's built for developers and designers who look at a great screen and think *"how is this actually put together?"* — and want to understand the design decisions behind it in seconds.

---

## 📸 Screenshots & Demo
https://github.com/user-attachments/assets/b4aa3b6f-393a-4b26-9a2d-eb76b38f9211
<img width="698" height="1600" alt="Image" src="https://github.com/user-attachments/assets/3c65a33e-9bed-4635-9f65-b39123ba83e6" />
<img width="698" height="1600" alt="Image" src="https://github.com/user-attachments/assets/c4d42a26-df7f-4d43-9303-d0e240c97262" />
<img width="698" height="1600" alt="Image" src="https://github.com/user-attachments/assets/d1a0be54-4a0b-4427-a2ee-a19a416383f9" />
<img width="698" height="1600" alt="Image" src="https://github.com/user-attachments/assets/3ff1722f-baed-4a12-89f6-4240939e55df" />
<img width="698" height="1600" alt="Image" src="https://github.com/user-attachments/assets/7c4972fd-f092-4dd0-8157-a3c8eea306f9" />
<img width="698" height="1600" alt="Image" src="https://github.com/user-attachments/assets/6eed20cc-fb8d-4b7b-9121-e0ba9afc9083" />
---

## 🚀 Features

- **AI-Powered UI Analysis** — Upload or capture a screenshot, and Google Gemini Vision analyzes it using a structured JSON response schema for consistent and predictable results.

- **The Blueprint** — Every analysis is organized into three sections:
  - **Overview** — A description of the screen, key statistics, and its structural sections.
  - **Design** — Extracted color palette, typography, spacing, and shape/corner-radius information.
  - **Components** — Detected UI elements such as buttons, cards, input fields, and more, with their specifications and cropped images from the original screenshot.

- **Project History** — View recently analyzed screens on Home and browse the complete Projects library with search and filtering.

- **Re-analyze & Delete** — Re-run the analysis of an existing project or delete it directly through Supabase.

- **Full Authentication Flow** — Email/password sign-up and sign-in, email confirmation, forgot password, and password recovery through Deep Linking.

- **Cloud Synced** — Projects, screenshots, and analysis results are stored in Supabase.

- **Profile Management** — View profile information and update the profile avatar using Supabase Storage.


## 🏗️ Architecture

PRISM follows **Clean Architecture** with a feature-first folder structure:

text
lib/
├── core/
│   ├── di/              # Service locator (get_it) setup
│   ├── errors/          # Failure hierarchy
│   ├── networking/      # Shared Dio API service
│   ├── routing/         # GoRouter configuration
│   ├── theme/            # App colors and styles
│   ├── services/         # Shared services and deep link listener
│   └── utils/            # Shared widgets and utilities
│
└── features/
    ├── auth/             # Sign in/up, forgot & reset password
    ├── onboarding/       # First-launch walkthrough
    ├── welcome/          # Authentication entry screen
    ├── home/             # Home dashboard and recent projects
    ├── upload/           # Image picker and image review
    ├── analysis/         # Gemini analysis pipeline
    ├── blueprint/        # Blueprint and analysis results
    │   ├── overview/
    │   ├── design/
    │   └── components/
    ├── projects/         # Projects library, search, filter and CRUD
    └── profile/          # Profile and avatar management

## 🛠️ Tech Stack

- **Flutter & Dart**
- **Google Gemini API** — Vision analysis using a structured JSON `responseSchema` and normalized bounding boxes for component detection and cropping.
- **Supabase**
  - Authentication
  - PostgreSQL Database
  - Row Level Security (RLS)
  - Storage
- **flutter_bloc** — Cubit-based state management
- **go_router** — Declarative navigation
- **dartz** — Functional `Either` for error handling
- **get_it** — Dependency injection
- **dio** — HTTP client
- **image_picker** — Camera and gallery image selection
- **flutter_dotenv** — Environment configuration
- **lottie** — Loading and animation effects
- **Deep Linking** — Custom URL scheme for password recovery
- **Clean Architecture & Repository Pattern**

## 🔄 Analysis Flow

text
Screenshot
    ↓
Image Processing
    ↓
Google Gemini Vision
    ↓
Custom Prompt + JSON Schema
    ↓
Structured Analysis
    ↓
PRISM Blueprint



## 🔗 Project Link

[GitHub Repository](https://github.com/mariam280/PRISM)
