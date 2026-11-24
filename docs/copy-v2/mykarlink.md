# MyKarLink

## Summary

MyKarLink is a car rental marketplace where people search, book, and pay online for vehicles from different rental companies.

Software Engineer · Hybrid · Nov 2024 – Aug 2025

Next.js · TypeScript · Stripe · Spring Boot · MariaDB

[mykarlink.com](https://mykarlink.com)

## Problem

In Zimbabwe, renting a car usually means calling around, comparing prices by hand, and paying at the counter. Most rental companies still run on paper: a renter walks in, picks a car, signs forms, and drives off.

MyKarLink gives renters one place to compare and book cars online, and gives rental companies a digital way to run their bookings.

## What I owned

I started the renter website in November 2024 and wrote most of it: search and filters, vehicle pages, booking, checkout and payment, invoices, a renter bookings page, ratings and reviews, and prices in the visitor's chosen currency. Another engineer wrote most of the Java backend; I added the endpoints the site needed.

Since moving to MyKargoLink, I've kept working on MyKarLink. Most recently, I built sign-in with one-time codes sent by WhatsApp or email, which is in testing.

## Key decisions

### Search filters that live in the URL

Renters filter by location, dates, daily rate, mileage limit, and promotions. I stored every filter in the URL instead of keeping it only in page state. Searches can be bookmarked or shared, the back button returns to the same results, and a refresh doesn't wipe them.

The cost: every value read from the URL has to be validated, and changing a filter must reset paging so results don't land on an empty page.

### Payment on our own checkout page

Rather than redirecting renters to Stripe's hosted payment page, I embedded Stripe's card form directly in MyKarLink's checkout next to the booking summary. Renters see the vehicle, dates, fees, and total in their chosen currency while they pay.

The cost: the site has to handle success, cancellation, and failed payments itself instead of leaving that to a hosted page.

### One codebase, several brands

On mykarlink.com, renters see vehicles from every company on the platform. Some rental companies wanted the same booking experience under their own brand, showing only their own cars. Rather than build separate sites, I put each brand's details in configuration: colours, logo, images, and which company's vehicles to show. The same code runs both the full marketplace and each company's site.

The cost: each brand has its own deployment, and every change has to work across all of them.

## Outcome

MyKarLink is live at mykarlink.com, alongside branded booking sites for individual rental companies.
