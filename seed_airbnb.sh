#!/bin/bash
mongoimport --authenticationDatabase admin \
  --username root --password abc123 \
  --db airbnb \
  --collection listings \
  --type csv \
  --file /tmp/listings.csv \
  --headerline
