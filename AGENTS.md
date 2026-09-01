# AGENTS.md — froxlor_api

## What this is
Shell scripts for interacting with the Froxlor server management panel API (email accounts, customer management).

## Stack
- Bash shell scripts
- curl (API calls)
- Froxlor REST API

## Run
```bash
cd bash
cp config_default.sh config.sh  # edit with real credentials
./list_functions.sh
```

## Structure
- `bash/config_default.sh` — API config template (key, secret, domain)
- `bash/list_functions.sh` — list available API functions
- `bash/Customers.listing.sh` — list customers
- `bash/EmailAccounts.add.sh` — add email accounts
- `bash/Emails.add.sh` — add email addresses
- `bash/mails.sh` — mail operations

## Conventions
- No comments in code unless asked.
- Verify: `bash -n bash/*.sh`
