# Rails Code Challenge - Sweets Vendors

For this assessment, you'll be working with a vendors and sweets domain.

In this repo, there is a Rails application with some features built out. Your job is to extend this code to add the functionality described in the deliverables below.

## Topics

- MVC
- REST
- Request-Response Cycle
- Forms and Form Helpers
- ActiveRecord
- Validations

## Setup

Before you begin coding your solution, clone this repo and then `cd` into it. Then run `bundle install` to install dependencies.

## Domain

This application tracks vendors who sell sweets.

There are three models in the domain: Sweets, Vendors, and a join model VendorSweets.

Vendors can have many sweets. Sweets can be sold by many vendors. The join model `VendorSweet` connects **one sweet** with **one vendor**.

## What You Already Have

The starter code has migrations, models, and seed data for the initial Sweet and Vendor models. There are also routes, controllers and views for the Sweet and Vendor index pages.

Once you have followed the setup instructions above, visiting the `/vendors` route will display all of the Vendors. Similarly, visiting `/sweets` will list all the sweets.

***Schema***

Sweet

| Column | Type |
| ------------- | ------------- |
| name | String |
| created_at | DateTime |
| updated_at  | DateTime  |

Vendor

| Column | Type |
| ------------- | ------------- |
| name  | String  |
| created_at  | DateTime  |
| updated_at  | DateTime  |

## Instructions

Update the code of the application to meet the following deliverables. Follow RESTful naming conventions and the MVC pattern to divide responsibility.

***Read through these deliverables carefully to understand the requirements for this code challenge. Tackle them one by one, as they build on each other sequentially.***

### 1. Create VendorSweet model

Update the schema and models to add the `VendorSweet` model. It should have:

- a vendor
- a sweet
- a price (use an integer data type for this column: we'll treat the numbers in it as the price, in cents).

In the rails console, check that your code works by creating your first `VendorSweet` with a given `Sweet`, `Vendor`, and price.

Run `rails db:migrate`, and `rails db:seed` to set up the database, then run `rails s` to start the server

### 2. VendorSweet Create Form

A user should be able to visit a page to link a vendor and a sweet. The form should let them:

- choose a `Vendor` from a select dropdown
- choose a `Sweet` from a select dropdown
- enter a price
- submit the form to create a `VendorSweet`

Once the `VendorSweet` is created, the user should be redirected to the selected vendor's show page.

### 3. Vendor show page

The show page for a Vendor should include:

- the Vendor's name (ie. Insomnia Cookies)
- a list of the Sweets that they sell
- each Sweet in the list should link to that Sweet's show page

### 4. Sweet Show page

The Sweet's show page should include:

- the Sweet's name
- a list of Vendors that sell this Sweet
- each Vendor in the list should link to that Vendor's show page

### 5. Vendor Index page links

On the Vendors index page, we should see a list of vendor's names. Each name should link to the Vendor's show page.

### 6. Sweets index page links

On the Sweets index page, we should see a list of sweet's names. Each name should link to the Sweet's show page.

### 7. Advanced: VendorSweet Validations

Add validations to the VendorSweet model so that:

- the price is not blank
- the price is not a negative number

Add error handling to the `VendorSweet` create action. If the VendorSweet is *not* valid, the form should show the validation error messages.

### 8. Advanced: VendorSweet Validation

There should only be one `VendorSweet` for any pair of `Vendor` and `Sweet`.

Add a validation to ensure that there is only one VendorSweet for a Vendor and Sweet pair. Update your error handling so that this new validation is also displayed to the user.

### 9. Advanced: Vendor Average Price

On the Vendor index page, show:

- the average price for all Sweets at the top of the page
- the average price for each Vendor next to the Vendor's name

### Features Demo

![screen capture of demo of features](sweets-features-demo.gif)

## Rubric

### Models, Associations, and Validations

1. Models, associations, and validation not started or have errors that prevent the application from running. Missing validations, or validation syntax is incorrect. May have introduced models outside the specified domain.
2. Models, associations, and validations attempted but incomplete or have errors. Associations may construct the wrong relationships. Validations may be missing or applied to the wrong models. Advanced query methods incomplete or have errors.
3. Models, associations, and validations mostly complete and correct per the deliverables. Advanced validations and methods may be incomplete. May have unused or unnecessary code, possibly including duplication. May have written validations instead of using appropriate built-in validations. May implement advanced query methods with iterators instead of using built-in methods.
4. All models, associations, and validations are complete and correct, save minor mistakes in advanced deliverables. Advanced validations are complete and add informative error messages.
5. All specified models, associations, and validations complete and correct. Built-in validations are used when appropriate. Variable and method names are intention-revealing. Models have appropriate logic extracted from controllers and views. Advanced query methods use appropriate built-in methods.

### Routes, Controllers, and REST

1. Routes missing, naming does not follow REST, controller actions incomplete or with errors.
2. Some routing and controller logic implemented, but incompletely or incorrectly. May have routes or controller actions not included in the deliverables. May include routes that have no corresponding controller action or vice versa. Controller methods might do work beyond their responsibility in MVC.
3. Most routing and controller logic working as specified. Some advanced deliverables may be incomplete. Routing follows REST convention. Routing table might include some unused routes, or routes and actions that were not specified in the deliverables. Logic may be duplicated between methods.
4. Nearly all routing and controller deliverables completed, possibly with minor errors in advanced deliverables. Routing follows REST conventions. Some logic may be duplicated between controller actions, or not respect MVC separation of concerns. Attempts to use filters and private helper methods to reduce duplication, but some duplication may remain.
5. All routes and controllers deliverables work as described in the instructions. Routing follows REST naming conventions. Controller actions respect MVC separation of concerns, and don't have logic that belongs in the model or the view. ActionController filters and private helper methods are used appropriately to reduce duplication in controller actions.

### Views and Forms

1. Missing or unattempted views and forms, or erb syntax errors in views and forms. Forms created in the wrong views, do not accept the correct input, or do not submit to the correct location. Data not displayed correctly.
2. Views display some data correctly. Forms attempted, but with some errors that prevent submitting data correctly. May not have attempted or may have significant errors in advanced deliverables.
3. Uses view to show data as specified. At least one working form that submits data to the correct location. May not have attempted some advanced view features. May have included views not specified by the deliverables. May include model or controller logic in the view. Forms may accept invalid input (for example, out of range numbers). May not display validation errors correctly. May not use view helper methods to reduce duplication.
4. Nearly all view and form deliverables are complete and correct. May have minor logic errors in advanced deliverables. Mostly does not include controller or model logic in the views. Mostly uses helpers to reduce duplication.
5. All view and form deliverables are complete and correct, including advanced form components. No views are included that are not specified by the instructions. No model or controller logic present in the views. Appropriate use of helpers and built-ins to reduce duplication. Validation errors displayed correctly on form.
