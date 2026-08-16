# Serious Rooms
Serious Rooms is a [Kristal](https://kristal.cc) library that adds the ability to make certain rooms let your party members have **Serious** (Also known as **Unhappy**) walking sprites!


<img width="1152" height="864" alt="1786855361-114 33333333333" src="https://github.com/user-attachments/assets/55ee14e6-e78d-47d5-930a-0618c12e5658" />


# Usage
To make a room "Serious":
* Add a boolean `serious` property to your map in Tiled and check it.
> [!WARNING]
> Make sure to add the property to your Map Properties, and not as a property of an object (You can open the Map Properties tab by clicking on the **Map** button in your Menu Bar, and then clicking **Map Properties**)



* Add `self.serious_path = "(your serious walk sprites folder)"` and `serious_sprites = true` to your actor(s)' init.

The `serious_path` should be a folder in the same directory as your `walk` folder.

By default, Susie and Ralsei's "Serious" walking sprites are named `walk_unhappy`.
