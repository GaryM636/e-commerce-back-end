# E-Commerce Back End

## Description

This is a back-end application for an E-Commerce platform. It is built using Express.js and Sequelize to interact with a MySQL database. The application provides API routes for performing CRUD operations on products, categories, and tags.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [API Routes](#api-routes)
- [Contributing](#contributing)
- [Author](#author)

## Installation

1. Clone the repository to your local machine.
2. Navigate to the project's root directory and install dependencies.
3. Set up the database by running the provided schema.sql file in your MySQL database.
4. Create a `.env` file in the project's root directory and add your MySQL database credentials.
```
DB_NAME=your_database_name
DB_USER=your_database_user
DB_PASSWORD=your_database_password
```
5. npm run seed
6. npm start

## Usage

Use a tool like Insomnia or Thunder Client to test the API routes.

## API Routes

### Categories

- **GET /api/categories:** Get all categories with associated products.
- **GET /api/categories/:id:** Get a single category by ID with associated products.
- **POST /api/categories:** Create a new category.
- **PUT /api/categories/:id:** Update a category by ID.
- **DELETE /api/categories/:id:** Delete a category by ID.

### Products

- **GET /api/products:** Get all products with associated category and tags.
- **GET /api/products/:id:** Get a single product by ID with associated category and tags.
- **POST /api/products:** Create a new product.
- **PUT /api/products/:id:** Update a product by ID.
- **DELETE /api/products/:id:** Delete a product by ID.

### Tags

- **GET /api/tags:** Get all tags with associated products.
- **GET /api/tags/:id:** Get a single tag by ID with associated products.
- **POST /api/tags:** Create a new tag.
- **PUT /api/tags/:id:** Update a tag by ID.
- **DELETE /api/tags/:id:** Delete a tag by ID.

## Author

👋 Hi, I'm Gary, a student passionate about web development.

- 🔭 Currently exploring the world of web technologies.
- 🌱 Learning and building projects to enhance my skills.
- 💬 Let's connect! Feel free to reach out to me on [GitHub](https://github.com/garym636).