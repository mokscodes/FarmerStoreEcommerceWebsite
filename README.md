# Farmer Store Ecommerce Website
Farmer store E-commerce Website using PHP, html, mySQL and XAMPP.

FarmerStore is a PHP–MySQL based web application designed as an online store for agricultural products such as seeds, fertilizers, and farming equipment. The platform allows users (farmers/customers) to register, log in, browse products, and manage their shopping activities through a simple and responsive interface built with Bootstrap.

The project demonstrates core full‑stack concepts including user authentication, session management, database integration, and CRUD operations using PHP and MySQL.

<h3>Tech Stack</h3>
<li>Frontend: HTML, CSS, Bootstrap</li>
<li>Backend: PHP</li>
<li>Database: MySQL </li>
<li>Server: Apache (XAMPP / WAMP recommended)</li>
<li>Client-side scripting: JavaScript, jQuery</li>

<h3>Functionalities</h3>
<h4>1. Home Page (index.php)</h4>

Acts as the landing page of the website. Displays the FarmerStore branding and introduction. Shows available agricultural products with images.Uses Bootstrap for a responsive and mobile-friendly layout. Checks user session to customize navigation options (Login / Logout).


<img width="1918" height="948" alt="image" src="https://github.com/user-attachments/assets/dbc71bbb-4b77-4585-9839-3cbeb0cedc80" />
<img width="1919" height="945" alt="image" src="https://github.com/user-attachments/assets/17c780e1-ac81-4af4-975e-9881e5ba405d" />


<h4>2. User Registration (signup.php)</h4>

Allows new users to create an account. Registration form collects Name,
Email,
Password,
Contact information.

Client-side validation using HTML attributes. Backend validation and insertion handled in user_registration_script.php. Passwords are securely stored (hashed) in the database. Redirects users to a success page upon successful registration.

<img width="1919" height="943" alt="image" src="https://github.com/user-attachments/assets/ba7d7577-d7bf-4278-aa88-6a804736790c" />
<img width="1919" height="943" alt="image" src="https://github.com/user-attachments/assets/e3ed504c-bd05-4a7a-b23f-33059e4dc860" />


<h4>3. User Login (login.php & login_submit.php) </h4>

Provides an authentication form for existing users. Validates user credentials against the database. Uses PHP sessions to maintain login state. On successful login:
User session is created,
User is redirected to the main store/dashboard.
On failure:
Displays an error message.

<img width="1919" height="910" alt="image" src="https://github.com/user-attachments/assets/d2f69bd7-2a4f-426f-9d23-5f957ded92bb" />
<img width="1919" height="1124" alt="image" src="https://github.com/user-attachments/assets/39a1b79a-1b0c-4090-b4e3-a9a980bc7fa6" />
<img width="1918" height="918" alt="image" src="https://github.com/user-attachments/assets/dfda8b7e-7213-4d3b-908a-7bf075fab8bd" />

<img width="1919" height="947" alt="image" src="https://github.com/user-attachments/assets/aad7d480-b7aa-4af3-9db3-f7d9d589487f" />

<h4> 4.Farmer Dashboard </h4>

The Farmer Dashboard acts as the personalized landing area for logged-in farmers/users. Once authenticated, users are redirected to this dashboard, where they can interact with the platform based on their account.

Key functionalities:

Displays farmer-specific information after login

Allows farmers to browse available agricultural products such as seeds, fertilizers, and equipment

Shows product details including name, image, and price

Enables farmers to add selected products to their cart

Uses session-based authentication to ensure only logged-in users can access the dashboard

Navigation options dynamically change based on login status (Dashboard, Cart, Logout)

Purpose:
The farmer dashboard improves usability by giving users a centralized place to manage their shopping activities and interact with the store efficiently.

<img width="1919" height="952" alt="image" src="https://github.com/user-attachments/assets/229c1b38-d280-4961-8a23-edef8564e156" />
<img width="1919" height="940" alt="image" src="https://github.com/user-attachments/assets/453c8bdc-ce12-430f-bd60-f7c6e6dc833c" />
<img width="1919" height="940" alt="image" src="https://github.com/user-attachments/assets/99fc1e35-4c0d-4eed-8b06-fd8b0b002403" />



<h4> 5.Cart Module</h4>

The Cart module allows farmers to temporarily store products they intend to purchase. It bridges the gap between browsing products and completing an order.

Key functionalities:

Stores selected products using user sessions or database mapping

Allows farmers to:

Add items to the cart

View all selected items in one place

Remove items from the cart

Displays product summary such as:

Product name

Quantity

Price

Ensures that cart data is user-specific and persists during the session

Prevents duplicate entries of the same product for the same user

Purpose:
The cart provides a convenient way for farmers to review and manage their selected products before proceeding to checkout, improving the overall shopping experience.


<img width="1919" height="948" alt="image" src="https://github.com/user-attachments/assets/8c3c3993-e11b-46c6-9dd6-c3415231c2d3" />
<img width="1919" height="946" alt="image" src="https://github.com/user-attachments/assets/a53e0bf3-adc0-409f-a517-5905177e5da0" />
<img width="1919" height="944" alt="image" src="https://github.com/user-attachments/assets/387752f5-1f70-4c32-a923-553b061aa9da" />





<h4> 6.Company Dashboard (Admin / Seller Dashboard)</h4>

The Company Dashboard is designed for administrators or sellers who manage the products available on the platform. This dashboard focuses on backend management rather than purchasing.

Key functionalities:

Allows companies/admins to:

Add new products to the store

Update existing product details (price, category, images)

Remove products from the inventory

Displays a list of all products currently available in the store

May track user interactions such as product demand or selection frequency

Restricted access using authentication and role-based checks

Purpose:
The company dashboard enables efficient management of the store inventory, ensuring that farmers always have access to updated and accurate product information.

<img width="1919" height="946" alt="image" src="https://github.com/user-attachments/assets/d2ab39a0-9243-4683-9c15-756ca4354e7e" />
<img width="1916" height="943" alt="image" src="https://github.com/user-attachments/assets/7bb82856-a187-43af-9f17-97677429c68b" />



<h4>7. Session Management</h4>

PHP sessions are used to:
Track logged-in users,
Restrict access to authenticated pages,
Session checks prevent unauthorized access,
Sessions are destroyed during logout.

<h4>8. Logout (logout.php)</h4>

Ends the current user session.
Clears all session variables. 
Redirects the user back to the login or home page.

<img width="1919" height="938" alt="image" src="https://github.com/user-attachments/assets/9032b4bc-4f4d-4e8c-bdc9-350f8ceeef4b" />


<h4>9. Database Design (store.sql)</h4>
Users Table:
Stores registered user details,
Fields include user ID, name, email, password, and contact info.

Items Table:
Stores product information such as:
Product name,
Price,
Category,
Image reference.

Users_Items Table:
Acts as a junction table to manage orders and delivery,
Establishes a relationship between users and items,
Tracks which user has selected or purchased which item,
Uses foreign keys for referential integrity.

<img width="1919" height="925" alt="image" src="https://github.com/user-attachments/assets/c18944d4-f3b0-4051-9f8a-06cf0528e675" />
<img width="1915" height="939" alt="image" src="https://github.com/user-attachments/assets/a7c8419e-46ee-43e5-aeb8-99de5b6fbf78" />
<img width="1919" height="952" alt="image" src="https://github.com/user-attachments/assets/e2047d4f-2f55-43f0-a4e0-cb15487feac0" />
<img width="1919" height="954" alt="image" src="https://github.com/user-attachments/assets/107dea57-dda5-44e4-846b-f880a04cb647" />


<h4>10. Product Display</h4>

Products such as seeds, fertilizers, and farming equipment are displayed using images from the img/ folder. 
Each product card includes:
Image,
Product name,
Price, and the option to add to cart.
Designed using Bootstrap cards and grid system.

<h3>How to Run the Project</h3>

Install XAMPP / WAMP

Copy the FarmerStore folder into the htdocs directory

Start Apache and MySQL services

Import store.sql into phpMyAdmin

Update database credentials in connection.php

Open browser and navigate to: http://localhost/FarmerStore/index.php



FarmerStore is a beginner-friendly full-stack PHP project made by Mokshita Yadav that demonstrates essential web development concepts such as authentication, session handling, database relationships using mySQL and XAMPP, and responsive UI design with practical PHP-MySQL integration. 







