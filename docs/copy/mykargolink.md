# MyKargoLink

## Summary

MyKargoLink is a logistics platform where shippers post loads, carriers bid on and haul them, and drivers find work.

Software Engineer · Hybrid · Aug 2025 – present

React · TanStack Start · Capacitor · Spring Boot · MariaDB

[mykargolink.com](https://mykargolink.com)

## Problem

Finding a truck for a load usually means phone calls and middlemen. Trucks often drive back empty. Once a load leaves, the shipper can't see where it is until it arrives.

## What I owned

I started the web app in August 2025 and have written most of it: loads, invoices and payments, PDF documents, the services marketplace, and the admin dashboard. I then shipped it as Android and iOS apps.

I also added Didit identity verification to the platform's fraud checks and built sign-in with one-time codes sent by WhatsApp or email, which is in testing for both MyKargoLink and MyKarLink. Another engineer has written most of the shared Java backend; I build the endpoints these features need.

## Key decisions

### One codebase for web, Android and iOS

Rather than build separate native apps, I wrapped the web app with Capacitor. Every feature ships to the browser and both app stores from one codebase, which matters on a small team. Where the web falls short, such as saving files to the phone or tracking location in the background, native plugins fill the gap.

The cost: those native plugins behave differently on Android and iOS, so they have to be tested on real phones.

### A typed API client shared by both products

MyKargoLink and MyKarLink talk to the same backend. Instead of writing requests separately in each app, I generated a typed client from the backend's OpenAPI spec and published it as a private package both apps install. If the backend renames a field or changes a response, the frontend build fails immediately instead of breaking in production.

The cost: the OpenAPI spec has to stay accurate, so part of the work was fixing it in the backend, and every backend change needs a new client release.

### Load tracking that doesn't lose data

I built GPS tracking end to end: the backend, the driver's phone, and the map shippers follow. Tracking starts at pickup and stops after delivery. Because drivers lose signal on the road, the phone stores every location locally instead of relying on a live connection, uploads it when it can, and keeps it until delivery is confirmed.

The cost: recovery logic like this is hard to verify in a simulator, so we tested it on a real trip from Beitbridge to Harare, about 580 km.

## Outcome

MyKargoLink is live on the web, Android, and iOS. Shippers can follow a load on a map from pickup to delivery.
