# Aptible::BillForward Test App

This is a sample Rails app used to test the [aptible-bf-ruby](https://github.com/aptible/aptible-bf-ruby).

### Setup

#### Create a `.env` file

Create a `.env` file to store necessary environment variables.  You must include `BILLFORWARD_ACCESS_TOKEN`.

```
PORT=3000
BILLFORWARD_ACCESS_TOKEN=xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
```

#### Install Dependencies
Run `bundle install` to install dependencies.

#### Start Server
Run `foreman start` to start server.

