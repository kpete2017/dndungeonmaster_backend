# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Note.destroy_all
Npc.destroy_all
Player.destroy_all
User.destroy_all


user1 = User.create({
    username: "kpete2017",
    name: "The_All_Powerful_Kyle",
    password: "Guitarman2"
})

Player.create({
    name: "Vitch",
    subtitle: "von carstein",
    race: "Elf",
    characterClass: "Rogue",
    level: "1",
    strength:                 "(+1)",
    dexterity:                "(+2)",
    constitution:             "(+0)",
    intelligence:             "(+0)",
    wisdom:                   "(-1)",
    charisma:                 "(+1)",
    initiative: "3",
    armor_class: "12",
    passive_perception: "9",
    hit_points: "40",
    proficiency_bonus: "2",
    speed: "30ft",
    player_name: "Kaylee",
    image_url: "https://preview.redd.it/uutgtc8tehu01.jpg?width=640&crop=smart&auto=webp&s=78bad8c8ee8465088478c48d2e5d5b992bc1ad60",
    actions: "<p>Sword: +5 attack bonus, 1d6+3(5)</p><p>Shortbow: +5 attack bonus, 1d6+3(5)</p><p>Shortsword, Piercing, Light, Finesse, 2 lb, One-Handed. Shortbow, Piercing, 2 lb, 80/32</p><p>Expertise; Thieves' Tools and Sleight of Hand&nbsp;</p><p>Sneak Attack: 1d6</p><p>&nbsp;</p>",
    equipment: "<p>Leather Armour 11+Dex AC 10 lbs&nbsp;</p><p>Backpack&nbsp;</p><p>1000 x Ball Bearings&nbsp;</p><p>10 ft String&nbsp;</p><p>Bell&nbsp;</p><p>5 x Candles&nbsp;</p><p>Crowbar&nbsp;</p><p>Hammer&nbsp;</p><p>10 x Pitons&nbsp;</p><p>Hooded Lantern&nbsp;</p><p>2 x Flasks of Oil</p><p>&nbsp;5 x Rations&nbsp;</p><p>Tinderbox&nbsp;</p><p>Waterskin&nbsp;</p><p>Bedroll&nbsp;</p><p>Quiver 20 x Arrows&nbsp;</p><p>Fine clothing Disguise kit&nbsp;</p><p>Wheigted Dice Belt Pouch&nbsp;</p><p>Theives' Tools</p>",
    user_id: user1.id
})

Player.create({
    name: "Othellia",
    subtitle: "of House Lumineer",
    race: "Half-Elf",
    characterClass: "Sorcerer",
    level: "1",
    strength:                 "(+1)",
    dexterity:                "(+2)",
    constitution:             "(+0)",
    intelligence:             "(+0)",
    wisdom:                   "(-1)",
    charisma:                 "(+1)",
    initiative: "3",
    armor_class: "12",
    passive_perception: "9",
    hit_points: "30",
    proficiency_bonus: "2",
    speed: "30ft",
    player_name: "Kyle",
    image_url: "https://sketchmob.com/wp-content/uploads/2019/06/80346_2db8cbf54-720x1018.jpg",
    actions: "<p>Light-Crossbow: +4 Attack bonus, 1d8 +2 Piercing</p><p>Dagger: +4 Attack bonus, 1d4 +2 Piercing&nbsp;</p><p>Spells: +5 Attack bonus: various</p><p>light crossbow range: 80/320</p><p>dagger range: 20/60&nbsp;</p><p>&nbsp;</p><p>Sorcerer Class Features:&nbsp;</p><p>1st lvl: Spellcasting -&nbsp;</p><p>know cantrips as per table on pg 100 of PHB -</p><p>&nbsp;know spells as per table on pg 100 of PHB -&nbsp;</p><p>spellcasting ability is CHR - DC = 8 + prof. bonus + CHR mod -&nbsp;</p><p>spellcasting focus 1st lvl: Sorcerer Origin (Storm Sorcery)&nbsp;</p><p>1st lvl: Wind Speaker: learn Primordial language (can understand Aquan, Auran, Ignan, &amp; Terran)&nbsp;</p><p>1st lvl: Tempestuous Magic: as a bonus action, when you cast a spell of 1st lvl or higher, you can fly 10ft without provoking a attack of opportunity</p>",
    equipment: "<p>Background Equipment:</p><p>belaying pin (club)</p><p>50 ft of silk rope</p><p>lucky charm (trinket)</p><p>common clothes</p><p>pouch</p><p>Class Equipment:</p><p>light crossbow</p><p>bolts x20</p><p>arcane focus (orb)</p><p>daggers x2</p><p>explorer's pack: backpack, bedroll, mess kit, 10 torches, 10 days of rations, waterskin, 50 ft of hempen rope</p>",
    user_id: user1.id
})

Player.create({
    name: "Jason",
    subtitle: "Of Clan Momoa",
    race: "Human",
    characterClass: "Barbarian",
    level: "1",
    strength:             "(+3)",
    dexterity:            "(+0)",
    constitution:         "(+2)",
    intelligence:         "(-2)",
    wisdom:               "(-1)",
    charisma:             "(+0)",
    initiative: "3",
    armor_class: "15",
    passive_perception: "9",
    hit_points: "60",
    proficiency_bonus: "2",
    speed: "20ft",
    player_name: "Kyle",
    image_url: "https://i.pinimg.com/originals/68/42/a0/6842a0b547772b8b21598a98324e908a.jpg",
    actions: "<p>Great Axe: +5, 1d12+3(5)</p><p>Javelin x 4: +5, 1d6+3(5)</p><p>HandAxe: +5, 1d6+3(5)</p><p>Great Axe, Slashing, 7lb, 2 Handed</p><p>Javelin x 4, Piercing, 2lb, 30/120</p><p>Hand Axe x 2, Slashing, Light, 20/60</p><p>Lvl 1, Rage, Bonus Action, 2 times (1 min), +2 damage, resistant to bludgeoning, piercing, slashing damage.</p><p>Lvl 1, unarmored Defense, When wearing no armor your AC = 10 + Dex mod + Con mod. You CAN use a shield.</p>",
    equipment: "<p>Instrument - Lute</p><p>Staff</p><p>Hunting Trap</p><p>Traveler's Clothes</p><p>Belt &amp; pouch</p><p>Backpack</p><p>Bedroll</p><p>Mess Kit</p><p>Tinderbox</p><p>10 x Torches</p><p>10 x Rations</p><p>Waterskin</p><p>50 Feet Hemp Rope</p> ",
    user_id: user1.id
})

Player.create({
    name: "Evaughn",
    subtitle: "The Soul Stealer",
    race: "Human",
    characterClass: "Warlock",
    level: "1",
    strength:             "(+3)",
    dexterity:            "(+0)",
    constitution:         "(+2)",
    intelligence:         "(-2)",
    wisdom:               "(-1)",
    charisma:             "(+0)",
    initiative: "3",
    armor_class: "15",
    passive_perception: "9",
    hit_points: "60",
    proficiency_bonus: "2",
    speed: "20ft",
    player_name: "Kyle",
    image_url: "https://2static.fjcdn.com/pictures/Dank+dd+character+concept+art+10+mentionlist+dndcharartpart1+channeldungeonsndragsdank+d+d+chara+cter+concept+artgjxiltw_538ddf_5931853.jpg",
    actions: "<p>Great Club: +2, 1d8+0 Blunt</p><p>Light Crossbow: +3, 1d8+1</p><p>spells: +4, Various</p><p>dagger: +3, 1d4 + 1 P</p><p>light crossbow range: 80/320</p><p>dagger range: 20/60</p><p>1st lvl: Otherworldly Patron (The Undying)</p><p>&nbsp;</p><p>1st lvl: Pact Magic: &nbsp;</p><p>- know cantrips as per table on pg 106 in PHB</p><p>- spell slot as per table on pg 106 of PHB</p><p>- spells known as per table on pg 106 on PHB</p><p>- spellcasting ability is CHR</p><p>- DC = 8 + prof. bonus + CHR mod</p><p>- spellcasting focus</p><p>&nbsp;</p><p>1st lvl: Among the Dead: &nbsp;</p><p>- learn spare the dying cantrip</p><p>- have advantage on saves vs. disease</p><p>- if an undead targets you, they must make a WIS saving throw vs your DC, on fail they must attack someone else or lose attack / if they pass they are immune to this ability for 24 hrs</p><p>- undead are also immune to effect for 24 hrs if you target it with an attack or harmful spell</p>",
    equipment: "<p>scroll case (with notes and/or prayers)</p><p>winter blanket</p><p>common clothes</p><p>herbalism kit</p><p>&nbsp;</p><p>Class Equipment:</p><p>light crossbow</p><p>bolts x20</p><p>arcane focus (rod)</p><p>leather armor</p><p>dagger x2</p><p>great club</p><p>dungeoneer's pack:</p>",
    user_id: user1.id
})

Player.create({
    name: "Jeff",
    subtitle: "From Accounting",
    race: "Human",
    characterClass: "Accountant",
    level: "1",
    strength: "(-3)",
    dexterity: "(+3)",
    constitution: "(+5)",
    intelligence: "(+4)",
    wisdom: "-(2)",
    charisma: "(+3)",
    initiative: "3",
    armor_class: "10",
    passive_perception: "9",
    hit_points: "10",
    proficiency_bonus: "2",
    speed: "30ft",
    player_name: "Jeff",
    image_url: "https://i.imgflip.com/4/1cf8by.jpg",
    actions: "<p>Sword: +5 attack bonus, 1d6+3(5)</p><p>Shortbow: +5 attack bonus, 1d6+3(5)</p><p>Shortsword, Piercing, Light, Finesse, 2 lb, One-Handed. Shortbow, Piercing, 2 lb, 80/32</p><p>Expertise; Thieves' Tools and Sleight of Hand&nbsp;</p><p>Sneak Attack: 1d6</p><p>&nbsp;</p>",
    equipment: "<p>scroll case (with notes and/or prayers)</p><p>winter blanket</p><p>common clothes</p><p>herbalism kit</p><p>&nbsp;</p><p>Class Equipment:</p><p>light crossbow</p><p>bolts x20</p><p>arcane focus (rod)</p><p>leather armor</p><p>dagger x2</p><p>great club</p><p>dungeoneer's pack:</p>",
    user_id: user1.id
})

Npc.create({
    name: "King Radavan",
    subtitle: "King of the Rooks",
    race: "Human",
    characterClass: "Paladin",
    level: "16",
    strength: "(+5)",
    dexterity: "(-3)",
    constitution: "(+1)",
    intelligence: "(+1)",
    wisdom: "(-3)",
    charisma: "(+2)",
    initiative: "4",
    armor_class: "16",
    passive_perception: "14",
    hit_points: "150",
    proficiency_bonus: "4",
    speed: "25ft",
    image_url: "https://i.pinimg.com/originals/4f/fe/f7/4ffef70ebb4931089343544c10beca98.jpg",
    actions: "<p>Greatsword: +9, 2d6+4 + 1d8</p><p>Javeline: +9, 1d6+4</p><p>Spells: +9, Various</p><p>Javelin range: 30/120</p><p>1st lvl: Divine Sense: use action to detect any celestial, fiend or undead within 60 ft</p><p>- 1 + CHR mod uses per long rest</p><p>1st lvl: Lay on Hands: as action restore hit points or cure poison or disease</p><p>- pool equal to paladin lvl x5</p><p>- takes 5 points to cure poison or disease</p><p>2nd lvl: Fighting Style (Great Weapon Fighting)</p><p>- when you roll a 1 or 2 on dmg die, get to reroll and take new roll</p><p>2nd lvl: Spellcasting</p><p>- prepare CHR mod + 1/2 paladin lvl in spells</p><p>- CHR is spellcasting ability</p><p>- DC = 8 + prof. bonus + CHR mod</p><p>- use holy symbol a spell focus</p><p>2nd lvl: Divine Smite</p><p>- when you hit, 1st lvl spell slot to add 2d8 radiant dmg, plus 1d8 for each spell slot above 1st for max of 5d8</p><p>3rd lvl: Divine Health: immune to disease</p><p>3rd lvl: Sacred Oath (Oath of the Crown)</p><p>- oath spells do not count against number of prepared</p><p>3rd lvl: Oath of the Crown: (1 use of channel divinity per short or long rest)</p><p>Channel Divinity (Champion Challenge): as an action, each creature within 30ft that you can see must make WIS save or cannot move more than 30ft from you</p><p>Channel Divinity (Turn the Tide): as a bonus action, each creature you choose that can hear you regains hit points equal to 1d6 + CHR mod</p><p>4t lvl: ASI: +2 to CON</p><p>5th lvl: Extra Attack: when you take attack action make 2 attacks instead of 1</p><p>6th Aura of Protection: when you or a ally within 10ft of you must make a saving throw, gain a bonus of CHR mod (minimum of 1)</p><p>7th lvl: Divine Allegiance: when a creature within 5ft of you takes dmg, you can take it instead, the dmg can't be reduced or prevented in any way</p><p>8th lvl: ASI: +2 to CHR</p><p>10th lvl: Aura of Courage: you and allies within 10ft can't be frightened while you are conscious</p><p>11th lvl: Improved Divine Smite: all melee weapons attacks deal an extra 1d8 radiant dmg, this can be combined with Divine Smite dmg</p><p>12th lvl: ASI: +2 CHR</p><p>14th lvl: Cleansing Touch: use your action to end 1 spell effect on yourself or ally</p><p>- CHR mod (minimum of 1) uses per long rest</p><p>15th lvl: Unyielding Spirit: you have advantage on saving throws vs. paralyzed or stunned</p><p>16th lvl: ASI: +2 to STR</p> ",
    equipment: "<p>Background Equipment:</p><p>traveler's clothes</p><p>signet, banner or seal &nbsp;representing rank within order</p><p>pouch</p><p>Class Equipment:</p><p>greatsword</p><p>shield</p><p>javelins x5</p><p>chain mail</p><p>holy symbol</p><p>explorer's pack: backpack, bedroll, mess kit, 10 torches, 10 days of rations, waterskin, 50 ft of hempen rope</p>",
    user_id: user1.id
})

Note.create({
    title: "IMPORTANT CAMPAIGN DETAILS",
    message: "Make it up as you go",
    user_id: user1.id
})

Note.create({
    title: "That one character you forgot the accent for",
    message: "It was borderline offensive irish",
    user_id:user1.id
})
Note.create({
    title: "The random tavern your group spent wayyy to much time in ",
    message: "The Leaks",
    user_id: user1.id
})
Note.create({
    title: "The mega demon that will destory the world",
    message: "His name was fluffy",
    user_id: user1.id
})
Note.create({
    title: "Dont forget",
    message: "Horribly Murder Jeff for showing up late",
    user_id: user1.id,
})