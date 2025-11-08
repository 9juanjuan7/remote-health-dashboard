# remote-health-dashboard

We’re building a health data marketplace where people can upload their sensor data (like heart rate or movement) using our hardware. Instead of selling data one by one, everyone’s data gets grouped into big, anonymous bundles (called cohorts).

When a researcher buys a bundle, our system automatically tracks ownership and splits the payment among all contributors—so every user gets rewarded.

We use blockchain behind the scenes for fairness, transparency, and simple automated payouts—but users just see an easy web app, no crypto or wallets required.


## Simple User Flow for the Marketplace:

User signs up with Google.

User uploads health sensor data, or records using our hardware.

System automatically groups user’s data into a large, anonymous bundle with other users (a cohort).

A researcher browses available cohorts and buys one for research.

System tracks the sale and automatically splits the payment among all contributors in that bundle.

Each user gets a notification or dashboard update showing they earned a reward from the sale.

## Why Blockchain?
Handles automatic payments to users when their data is sold.

Creates permanent, tamper-proof records (“immutable objects”) for each user’s health data.

Guarantees users give clear consent before their data can be included or sold.

Proves and tracks true ownership of each user’s data participation.

-- juan and eric can do blockchain functionality
basically, when a user prompts UI (uploads or records their data), UI will talk to Flask backend. Flask backend will then call the smart-contract that creates the NFT for that data (NFT = tamper-proof record (immutable object)). Flask is the middle connector between the UI and the smart contract (blockchain). When called the smart contract instantly creates an NFT on the blockchain with the user as the owner.

How do we know the User is the owner? We can use third-party login through Google. When someone signs up, we will automatically create a blockchain address for them. This address will identify them and be linked to the NFT that is created from their data.

Bundles of similar data (by age group, activity, etc.) get sold to researchers, and our contracts split any payment among all the users in the bundle, all automated and transparent.
All blockchain magic happens in the background—users just use a familiar web app and see their rewards!

Apart from the blockchain features, it’s just a regular marketplace—
Researchers browse and shop for large, anonymized bundles of health data grouped by useful categories (like age, activity, or device type).
Users see a familiar dashboard, track their earnings, and can easily see which bundles their data is part of.
Everything feels like a standard web platform—blockchain is only used behind the scenes for fairness, security, and automated payments.

*WE CAN USE MOCK DATA TO FILL THE DB ALSO*


