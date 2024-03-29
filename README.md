<a name="readme-top"></a>

<div align="center">
    <img src="app/assets/images/blog-logo.png" alt="logo" width="250"  height="auto" />
    <h1><b>Blog App</b></h1>
</div>

---

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [🚀 Live Demo](#live-demo)
    - [Key Features](#key-features)
- [💻 Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Setup](#setup)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

---

<!-- PROJECT DESCRIPTION -->

# 📖 Blog App <a name="about-project"></a>

- The Blog app is an example of a blog website. A fully functional website that will show the list of posts and empower readers to interact with them by adding comments and liking posts.

- It can also be used from other applications through the API endpoints.

#### Learning objectives

- Use Ruby Gems as a software packages system.
- Understand what ORM is.
- Use database migration files to maintain database schema.
- Set up associations between models.
- Write SQL queries with Active Record.
- Use validations for models.
- Write unit tests for models.
- Use controllers to handle requests and render empty views.
- Understand Rails naming conventions.
- Use params from browser requests in a safe way.
- Write tests for controllers.
- Use preprocessed HTML files with embedded Ruby code.
- Use layouts and templates for shared content.
- Write integration tests with Capybara gem.
- Secure app from n+1 problems.
- Build a web app that requires the user to log in.
- Use devise gem for authentication.
- Limit access to web app resources based on authorization rules with Cancan Gem.
- Build a RESTful API.
- Understand the importance of APIs and docs following standards.
- Generate documentation for an API.
- Understand the importance of APIs and docs following standards.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

  <ul>
    <li>
      <a href="https://www.ruby-lang.org/en/">
        <img src="https://skillicons.dev/icons?i=ruby"/> Ruby
      </a>
    </li>
    <li>
      <a href="https://rubyonrails.org/">
        <img src="https://skillicons.dev/icons?i=rails"/> Rails
      </a>
    </li>
    <li>
      <a href="https://www.postgresql.org/">
        <img src="https://skillicons.dev/icons?i=postgresql"/> PostgreSQL
      </a>
    </li>
    <li>
      <a href="https://developer.mozilla.org/en-US/docs/Web/CSS">
        <img src="https://skillicons.dev/icons?i=css"/> CSS
      </a>
    </li>
    <li>
      <a href="https://getbootstrap.com/docs/4.0/getting-started/introduction/">
        <img src="https://skillicons.dev/icons?i=bootstrap"/> Bootstrap
      </a>
    </li>
    <li>
      <a href="https://www.w3schools.com/html/">
        <img src="https://skillicons.dev/icons?i=html"/> HTML5
      </a>
    </li>
  </ul>

#### Highlighted Gems

- [Devise](https://github.com/heartcombo/devise/wiki)
- [Cancancan](https://github.com/CanCanCommunity/cancancan)

---

<!-- * LIVE DEMO -->

## 🚀 Live Demo <a name="live-demo"></a>

- [Blog App - Live Demo Link](https://blog-app-m4k8.onrender.com/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

### :key: Key Features <a name="key-features"></a>

- It allows you to create, edit and delete posts.
- create, edit and delete comments.
- You can also like posts.
- Great authentication by gem `devise`.
- And flawless authorization by gem `cancancan`.
- API Endpoints.

---

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

To run this project you need:

- Have Ruby installed. If you need to install Ruby, follow the instructions on the [official page](https://www.ruby-lang.org/en/documentation/installation/).

### Setup

Clone this repository to your desired folder:

Example commands:

- With SSH:

```bash
  cd my-folder
  git clone git@github.com:ITurres/blog_app.git
```

- With HTTPS:

```bash
  cd my-folder
  git clone https://github.com/ITurres/blog_app.git
```

- With GitHub CLI:

```bash
  cd my-folder
  gh repo clone ITurres/blog_app
```

### Install <a name="install"></a>

Go to the project directory:

```bash
 cd blog_app
```

Before running the program, verify that you have Ruby on Rails installed on your OS by running the following command:

```bash
 rails --version
```

It should show you the version of Ruby On Rails ​​installed. If this does not happen and only an error message is displayed, you should verify your installation or install Ruby on Rails from scratch.

[Download and Install Ruby on Rails](https://guides.rubyonrails.org/getting_started.html)

Once you have verified that you have Ruby on Rails installed, run the following command to install the necessary gems:

```bash
 bundle install
```

After installing the gems, run the following command to create the database:

```bash
 rails db:create
```

Then run the following command to migrate the database:

```bash
 rails db:migrate
```

If you want to populate the database with sample data, run the following command:

```bash
 rails db:seed
```

### Usage <a name="usage"></a>

Run the following command inside the project folder to start the application:

```bash
 rails s
```

This will start the application on your local server. You can now open your browser and go to http://localhost:3000/ to see the application running.

### Run tests <a name="run-tests"></a>

To execute the tests, run the following command inside the project folder (root):

```bash
 bundle exec rspec
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Arthur Iturres**

- GitHub: [@ITurres](https://github.com/ITurres)
- LinkedIn: [Arthur Emanuel G. Iturres](https://www.linkedin.com/in/arturoemanuelguerraiturres/)
- Angellist / Wellfound: [Arturo (Arthur) Emanuel Guerra Iturres](https://wellfound.com/u/arturo-arthur-emanuel-guerra-iturres)
- Youtube: [Arturo Emanuel Guerra Iturres - Youtube Channel](https://www.youtube.com/channel/UC6GFUFHOtBS9mOuI8EJ6q4g)
- Portfolio: [Arthur Iturres - Portfolio](https://iturres.github.io/iturres-reactive-portfolio/)

👤 **Demes Ameneshoa**

- GitHub: [@demesameneshoa](https://github.com/demesameneshoa)
- LinkedIn: [@demesameneshoa](https://www.linkedin.com/in/demesameneshoa/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- [x] Creating a data model.
- [x] Processing data in models.
- [x] Validations and Model specs.
- [x] Controllers.
- [x] Controllers specs.
- [x] Views.
- [x] Forms.
- [x] Integration specs for Views and fixing n+1 problems.
- [x] Add `Devise`.
- [x] Add authorization rules (`CanCanCan`).
- [x] Add API endpoints.
- [ ] API documentation.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/ITurres/blog_app/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

Give a ⭐ if you liked this project!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I thank the **Code Reviewers** for their advice and time, and to @demesameneshoa, who has been a great and professional teammate 🏆

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---
