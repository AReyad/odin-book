# Odin Book

A social media web application built with Ruby on Rails.

## Features

- **User Authentication:**
  - Sign up and log in using an email address.
  - Authenticate using GitHub through OmniAuth.

- **Posts:**
  - Create and share posts.
  - Comment on posts.
  - Reply to existing comments, creating threaded discussions.
  - Like posts, comments, and replies.

- **Following:**
  - A user can follow other users or be followed by others.

- **Profile:**
  - View your profile or other users to see their posts and following/followers count.
---

## Installation

To run this project locally, ensure you have **Ruby 3.4.6**  installed.

1. Clone the repository:

```bash
git clone git@github.com:AReyad/odin-book.git
```

2. Navigate to the project directory:

```bash
cd odin-book
```

3. Install dependencies:

```bash
bundle install
```

4. Set up the database:

```bash
bin/rails db:setup
```

5. Configure GitHub OAuth credentials:

Set up your GitHub OAuth application and configure the required credentials **("GITHUB_APP_ID", "GITHUB_SECRET")** in your environment(ENV).

6. Start the Rails server:

```bash
bin/rails server
```

7. Open the application in your browser:

```text
http://localhost:3000
```
