# Aplyk

## Summary

Aplyk helps companies fill short-notice shifts with verified temporary staff. It's in closed testing ahead of its first launch in Spain.

Software Engineer · Remote · Jul 2026 – present

Flutter · .NET · PostgreSQL · AWS · OpenTofu

[aplyk.com](https://aplyk.com)

## Problem

When a company needs staff at short notice for an absence, an event, or a busy weekend, it usually juggles agencies, job boards, and WhatsApp groups. Workers face the same mess from the other side: scattered listings, missing pay or hours, and slow replies.

In Aplyk, a company posts a shift, verified workers apply, and the company picks someone, tracks attendance, and rates the work.

## What I owned

When I joined, Aplyk had separate iOS and Android apps, and the team had decided to replace them with one Flutter app. I built that app: sign-in and onboarding, finding and applying for shifts, running shifts as a company, and Spanish and English support. I also added identity verification with Didit, push notifications with Firebase Cloud Messaging, and the pipeline that sends test builds to Google Play and TestFlight.

Another engineer designed the .NET backend as a single deployable app and built accounts that let one person work for several companies. Since August, I've written most of the backend changes. That includes tests for two people accepting the last opening on a shift at the same time, and checks that shift search stays fast as the number of shifts grows.

I also built the AWS infrastructure, the marketing site, and the app's design files.

## Key decisions

### Asking companies for less at sign-up

The old app forced companies through a seven-step wizard before they could do anything, and asked them to enter passwords for their own managers. Working with another engineer, I redesigned the flow. Companies now enter only what Aplyk needs to verify them, and provide the rest when they first need it. The person who registers becomes the default manager, so a company can post its first shift without waiting on anyone else. Invited managers set their own passwords.

The cost: a company can reach its dashboard with no locations or managers set up, so creating a shift has to support adding them on the spot.

### Infrastructure as code, with practised recovery

I defined EU staging and production on AWS as code with OpenTofu and Ansible, deployed through Coolify. The goal was that anyone on the team could rebuild everything from scratch, and practise recovering from a failure instead of guessing. Databases are backed up, and rebuilds and restores can be rehearsed in a separate sandbox.

The cost: more up-front work than creating servers by hand in a console, on a small team with a deadline.

## Outcome

The Flutter app is in closed testing on Android and iOS, running against the production backend and infrastructure ahead of the first launch in Spain.
