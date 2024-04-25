# Data Science applied in MTG Cards

This repository contains functionalities to download, visualize and interact with Magic: The Gathering cards, sets and more. All information regarding Magic: The Gathering is retrieved by [mtgjson.com](https://mtgjson.com/) and belong to Wizards of the Coast.

## Requirements

To help develop this project, clone this repository and install the following:

- A kubernetes cluster (examples: Kind, MiniKube, Rancher)
- [tilt.dev](https://tilt.dev/)

## Running the Database

After installing the requirements, you can run **tilt up** to create a local instance of a postgres database in your k8s cluster. This will create all the resources you need in order to run the project.

Then, in another terminal, after spinning up the database, you can run **make install** to download and initialize the database with all data regarding Magic: The Gathering.

```sh
tilt up
# in another terminal
make install
```


