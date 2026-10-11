# EduMeal Infrastructure

Infrastructure as Code (IaC) project for EduMeal,
a school meal management platform.

## Tech Stack

- OpenTofu
- AWS S3
- AWS CLI

## Infrastructure

- S3 bucket for application images
- S3 Block Public Access
- Server-side encryption using SSE-S3
- Resource tags for project identification

## Validation

```bash
tofu fmt -check
tofu validate
tofu plan