
# Welcome to Tank Tycoon!

This is Nathan Kim's and Matthew Seo's CS Data Structures Project

Tank Tycoon is a tycoon game where you get more fish over time and make as much money as you can through tank upgrades. 

## Instructions:

- Start with $20 as your starting amount.
- Money will start to spawn after 12 seconds and you can click with the left mouse button.
- Each dollar found will be worth $5
- Upgrades can be bought as you progress through the game to get more money
- Continue this until you get to buy a shark for your aquarium! (End credits show when shark is bought)

## Upgrades:
1. **Speed Upgrade (+50 Speed Value)**
   - Makes the fish after the purchase of the upgrade move faster
2. **Money Rate (+~10% Money Spawn Rate)**
   - Makes the money spawn faster by 1 second (12 Seconds Default)
3. **Money Worth (+$5 Money Worth)**
   - Makes the money worth more. Each collected dollar is worth $5 more after the upgrade.

## Responses:
- **What Data Structures were used?**
```
Godot uses a SceneTree which manages the hierarchy of nodes in a scene.
Additionally, we used a dictionary to store the prices of the various fish and upgrades
```

## Files:
1. **tscn files**
   - .tscn files stand for text scene files and they represent a single scene tree in Godot. In the Godot engine, the tscn files look like the following:
     ![alt text](https://docs.godotengine.org/en/stable/_images/nodes_and_scenes_05_editor_with_label.webp)
 2. **gd files**
    -.gd files just contain a script in GDScript

## Methods of Downloading
 1. **Can play through Itch.io page**
    - Itch.io Page https://sstray.itch.io/tank-tycoon
 2. **Can download exe file**
    - The exe file can be found on the release page on the right-hand side of the repository

