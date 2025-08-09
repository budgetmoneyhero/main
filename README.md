# Budget Money Hero (Phase 0 Starter)

Stack: PHP 8.2, HTML5/CSS3/JS, nginx (Docker). Deploy target: Railway.

## Local dev (optional)
1) Install PHP & Composer
2) Install deps:
   ```bash
   composer install
   cp .env.example .env
   php -S localhost:8000 -t public
   ```
3) Open http://localhost:8000

## Docker (optional)
```bash
docker build -t bmh .
docker run -p 8080:8080 --env-file .env bmh
```
Visit http://localhost:8080

## Deploy (Railway)
1) Push to GitHub
2) Create Railway project from this repo
3) Add environment variables (copy from `.env.example`)
4) Deploy and open the generated URL

Next phases: content, DB, auth, Stripe.
