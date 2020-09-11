# D&DungeonMaster
![Image of Home](https://github.com/kpete2017/D-DungeonMaster/blob/master/src/assets/screenshot.PNG?raw=true)

<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [Usage](#usage)
* [Roadmap](#roadmap)
* [Contributing](#contributing)
* [License](#license)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)



<!-- ABOUT THE PROJECT -->
## About The Project

D&DungeonMaster is a powerful tool that helps Dungeon Master's everywhere keep their game sessions organized and accessable.

It does this by:
* Keeping all the player and enemy information accessible from the home screen with a simple click.
* Keeping an advanced compendium of every spell and monster officailly in Dungeons & Dragons 5th Edition.
* Keeping all the players equipment, spells, and other notes in one easy to access place.

### Built With
* [Vue.js](https://vuejs.org/)
* [Ruby On Rails](https://rubyonrails.org/)
* [Postgresql](https://www.postgresql.org/)
* [Google Firebase](https://firebase.google.com/)
* [Heroku](https://www.heroku.com/about)



<!-- GETTING STARTED -->
## Getting Started

There is a seperate repositiory for the Vue frontend. 

[Frontend](https://github.com/kpete2017/DnDungeonMaster)


### Prerequisites

In order to run the back-end of this project locally you will need Ruby and Ruby on Rails installed

### Installation

1. Clone the repo
```sh
git clone https://github.com/kpete2017/dndungeonmaster_backend.git
```
2. Install ruby gems
```sh
bundle install
```
3. Create the databse
```sh
rails db:create
```
4. Migrate the database
```sh
rails db:migrate
```
5. Seed the database
```sh
rails db:seed
```

<!-- USAGE EXAMPLES -->
## Usage

### Log-in Screen
![Image of Login](https://github.com/kpete2017/D-DungeonMaster/blob/master/src/assets/Login.PNG?raw=true)

From here the user can either login with the appropiate username or password or create a new account.
To create a new account the user must provide a valid username, password, and name.

### Home Screen
![Image of Home](https://github.com/kpete2017/D-DungeonMaster/blob/master/src/assets/screenshot.PNG?raw=true)

The homescreen is divided into four sections:
* The calculator/note section (the most left column). Here the dungeon master can pin any of his created notes or make quick calculations.
* The ally section (The top row of the middle column). From here the dungeon master can add any of their player characters or non player characters into the card layout, once clicked the card will expand out to reveal more information.
* The enemy section (The bottom row of the middle column). From here the dungeon master can add any monster or non player characters into the card layout, once clicked the card will expand out to reveal more information.
* The region/rotation/dice section(the most right column). Here the dungeon master can make quick edits to the region's information, change the turn rotation so it is easy to keep track of, and make a quick roll of the dice.

### Notes Page
![Image of Notes](https://github.com/kpete2017/D-DungeonMaster/blob/master/src/assets/notes.PNG?raw=true)

The second option down on the nav bar is the notes page.
From here a dungeon master can create or delete any notes related to the campaign.

### Party Page
![Image of Party](https://github.com/kpete2017/D-DungeonMaster/blob/master/src/assets/Party.PNG?raw=true)

The third option down on the nav bar is the party page.
From here the dungeon master can create, edit, or delete any player character.
Once created here a party member can be added to the ally tab of the home page.

### NPC Page
![Image of NPC](https://github.com/kpete2017/D-DungeonMaster/blob/master/src/assets/NPC.PNG?raw=true)

The fourth option down on the nav bar is the NPC page.
From here the dungeon master can create, edit, or delete any non player character.
Once created here a NPC can be added to either the ally secition of the home page or the enemy secion.

### Monster Page
![Image of Monster](https://github.com/kpete2017/D-DungeonMaster/blob/master/src/assets/Monster.PNG?raw=true)

The fifth option down on the nav bar is the monster page.
From here the dungeon master can browse every official monster from dungeons and dragons 5e.
There is also a filter function which allows the dungeon master to search by name or challange rating.

### Compendium Page
![Image of Compendium](https://github.com/kpete2017/D-DungeonMaster/blob/master/src/assets/Compendium.PNG?raw=true)

The sixth option down on the nav bar is the compendium page.
From here the dungeon master can browse every official spell from dungeons and dragons 5e.
The First row contains the name of the spell, The second row contains the spells attributes and description, the third row (Footer) contains the classes that can use the spell.
There is also a filter function which allows the dungeon master to search by name.


<!-- CONTRIBUTING -->
## Contributing

If you wish to contribute to the project:

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request


Anything will be greatly appreciated!


<!-- CONTACT -->
## Contact

Kyle Petersen - [Linked-In](https://www.linkedin.com/in/kyle-petersen-27259b18b/) - kpete2017@gmail.com

Project Link: [https://github.com/your_username/repo_name](https://github.com/kpete2017/D-DungeonMaster)

<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements
* [srd_5e_monsters.json](https://gist.github.com/tkfu/9819e4ac6d529e225e9fc58b358c3479)
* [srd_spells](https://github.com/vorpalhex/srd_spells)

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/othneildrew/Best-README-Template.svg?style=flat-square
[contributors-url]: https://github.com/othneildrew/Best-README-Template/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/othneildrew/Best-README-Template.svg?style=flat-square
[forks-url]: https://github.com/othneildrew/Best-README-Template/network/members
[stars-shield]: https://img.shields.io/github/stars/othneildrew/Best-README-Template.svg?style=flat-square
[stars-url]: https://github.com/othneildrew/Best-README-Template/stargazers
[issues-shield]: https://img.shields.io/github/issues/othneildrew/Best-README-Template.svg?style=flat-square
[issues-url]: https://github.com/othneildrew/Best-README-Template/issues
[license-shield]: https://img.shields.io/github/license/othneildrew/Best-README-Template.svg?style=flat-square
[license-url]: https://github.com/othneildrew/Best-README-Template/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/othneildrew
[product-screenshot]: images/screenshot.png
