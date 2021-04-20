# Atari 7800 to Sega Master System Controller Adapter

## Summary

I designed this adapter so that I could use an original Atari 7800 Proline joystick with my Daemonbite Sega USB adapter on MiSTer. It adapts the pinout and logic to that of a Sega Master System controller, allowing it to work with more commonly available Sega adapters and, in theory, an actual Sega Master System or Genesis (untested). The left trigger functions as button 1 and the right as button 2.

It should be noted that because this adapter operates the controller in 7800 mode full time, the single-button backwards compatible mode is not supported.

## Background

When designing the Atari 7800's joystick, Atari chose to make it backwards compatible with the 2600 in such a way that both buttons trigger the same fire button pin that the 2600 uses. Unfortunately for anyone wanting to use the stick for something besides the 2600 or 7800, they did it in such a way that the pinout is incompatible with other, more "standard", multi-button controllers.

The controllers function as such:

**2600 Mode**: Both fire buttons trigger the same fire button pin that the 2600 uses and are active low.

**7800 Mode**: 5V is fed to the 2600 fire button pin and the separate fire buttons are held low by pulldowns internal to the controller. Pressing a button pulls its pin high (which is the opposite of how most controllers work).

At best, connecting a 7800 controller to an adapter or system not designed for it causes the buttons to activate the same pin. At worst, something could be damaged by the non-standard wiring in the controller.

## Implementation

This adapter uses two 2n4401 transistors to change the buttons from active-high to active-low, and reroutes the pins to the correct locations for a Master System controller. The base and collector resistor values were chosen in an attempt to match the values inside a 7800 system as closely as possible (based on the information [here](https://www.retronicdesign.com/en/specifications/atari-7800-joystick/)).

## Required Components

- 1x adapter PCB from the fab of your choice (currently shared on [OSH Park](https://oshpark.com/shared_projects/y2CrC8d0) for convenience)
- 2x 2n4401 NPN transistors (or suitable replacements)
- 2x 1.8KΩ resistors (R1,R2) (1/8W is fine, SMD or through-hole)
- 2x 270Ω resistors (R3,R4) (1/8W is fine, SMD or through-hole)
- 1x DE-9 Male connector w/ solder cup termination (J1)
- 1x DE-9 Female connector w/ solder cup termination (J2)
- 1x Gender changer hood (this adapter is known to fit into [this one sold by SF Cable](https://www.sfcable.com/db9-to-db9-gender-changer-hood.html))

I used the DE-9 connectors from [this package](https://www.amazon.com/gp/product/B07C6W5TJ9/), which comes with 10 male / female pairs.

## Assembly

All of the component locations are marked on the PCB to make assembly as quick and easy as possible.

1. Place and solder the resistors (1.8KΩ at R1 and R2, 270Ω at R3 and R4).
2. Place and solder the transistors. Make sure they sit as close to the board as the flats on the legs will allow and that their orientation matches the markings on the PCB. If you don't get them low enough, there may not be enough clearance inside the gender changer hood. When they're right, everything will fit without having to bend them to the side.
3. Position the male and female DE-9 connectors on the appropriate ends of the PCB and carefully place the assembly in half of the gender changer hood. Make sure that the solder cups on the connectors line up with the pads on the PCB and that everything sits comfortably inside the gender changer hood and that they are as perpendicular to the PCB as possible.
4. Solder **one** pin on each DE-9 connector to tack things in place. I recommend using one of the middle pins and moving quickly as the gender changer hood isn't meant for high temperatures and may melt.
5. Test fit the gender changer hood to make sure the tabs on the DE-9 connectors line up correctly with the slots in the gender changer hood, and to verify clearance for the transistors.
6. Remove the hood and finish soldering the rest of the pins on the DE-9 connectors.
7. Put everything back in the hood.

## Disclaimer

This adapter is offered without any support or warranty for any purpose. It works well for my intended purpose (adapting the controller to work with a [Daemonbite adapter](https://github.com/MickGyver/DaemonBite-Retro-Controllers-USB)) but I take no responsibility if it doesn't work for you, breaks something, or says mean things to your cat.

## License

This adapter is licensed as CC0 1.0 Universal. Do with it as you please.
