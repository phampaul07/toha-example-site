---
title: "Pomodoro Cube"
type: "projects"
layout: "single"
role: "Developer"
timeline: "June 2026 - Present"
repo: https://github.com/phampaul07/pomodoro-cube.git
summary: "A Pomodoro timer with a physical cube that can be rotated to start, pause, and reset the timer."
---

## Overview

The Smart Pomodoro Cube is a handheld productivity device built from the ground up to explore embedded systems, custom electronics, and industrial design. It functions as a distraction-free Pomodoro timer driven entirely by its physical orientation. When placed on its custom magnetic pogo-pin dock, it transforms into an interactive hub featuring a virtual pet (Tamagotchi), productivity tracker, and digital clock.

Every element—the custom KiCad PCB, the 3D-printed enclosure, the analog circuitry, and the CircuitPython firmware—was specifically designed to fit inside the highly constrained volume of a standard Rubik's Cube.

## Key Features

- Standalone Operation: Features a real-time clock, orientation-based timer selection, countdown progress bar, and battery/temperature monitoring.
- Magnetic Charging Dock: Enables cable-free charging via pogo pins and seamlessly transitions the cube into docked mode. 
- Interactive Dock Modes: Unlocks a 15-minute quick timer, an interactive Tamagotchi pet (with petting animations), and long-term productivity statistics.


### Demonstrations
## Standalone Cube

<p align="center">
<a href="https://youtube.com/shorts/b-1S72bGzG8?feature=share">
<img src="https://img.youtube.com/vi/b-1S72bGzG8/maxresdefault.jpg" width="700">
</a>
</p>

## Interactive Charging Dock

<p align="center">
<a href="https://youtube.com/shorts/HYNcFR9NDS4?feature=share">
<img src="https://img.youtube.com/vi/HYNcFR9NDS4/maxresdefault.jpg" width="700">
</a>
</p>

### Engineering Highlights

## Analog Button Multiplexing
Because the magnetic pogo-pin interface is strictly limited to four physical connections (5V, GND, 3.3V, Data), it was impossible to dedicate separate GPIO pins to the four dock buttons. To solve this, I engineered a resistor ladder that multiplexes all four buttons into a single analog data line, using distinct voltage thresholds to determine which button was pressed.

## Safe Battery Monitoring
To accurately read the 3.7V LiPo battery (which peaks at 4.2V, exceeding the ESP32's safe limits), I implemented a hardware voltage divider. It steps the voltage down by half before reaching the ADC, allowing software to accurately calculate the remaining battery percentage without hardware damage.

## State-Machine Architecture
The CircuitPython firmware is built on a memory-efficient Finite State Machine (FSM), cleanly separating the standalone logic (Clock/Timer) from the docked logic (Tamagotchi/Stats) to prevent memory fragmentation and ensure smooth sprite animations.

### Hardware & Tools

- MCU & UI: Seeed Studio XIAO ESP32-C3, 1.28" Round GC9A01 IPS Display
- Sensors: MPU6050 (Orientation Detection), External RTC Module
- Power & Connectivity: 3.7V LiPo Battery, Magnetic Pogo Pins
- Electronics: Custom KiCad PCB (Cube Mainboard), Custom Perfboard (Dock Circuitry)

## Gallery

<div class="project-image-stack two-images">
  <figure>
    <img src="https://github.com/user-attachments/assets/47c5d93c-9311-4f70-925c-c8ca01058350" alt="Cube">
    <figcaption>Cube</figcaption>
  </figure>
  <figure>
    <img src="https://github.com/user-attachments/assets/2d7062d3-feac-4b3a-922d-83b6af8a94fb" alt="Dock">
    <figcaption>Dock</figcaption>
  </figure>
</div>

<div class="project-image-stack two-images">
  <figure>
    <img src="https://github.com/user-attachments/assets/7f6579c9-9c8a-4ac8-bc8b-8f16c355ab3e" alt="Real-Time Clock">
    <figcaption>Real-Time Clock</figcaption>
  </figure>
  <figure>
    <img src="https://github.com/user-attachments/assets/7ebef5c4-1801-4718-a616-3413b40726a2" alt="Iterated Timer">
    <figcaption>Iterated Timer</figcaption>
  </figure>
</div>

<div class="project-image-stack two-images">
  <figure>
    <img src="https://github.com/user-attachments/assets/083e92cf-9342-4e21-a807-ed936aab5156" alt="Tamagotchi">
    <figcaption>Tamagotchi</figcaption>
  </figure>
  <figure>
    <img src="https://github.com/user-attachments/assets/bf3a9c01-6fa3-46c4-bbdb-243c60f5bd75" alt="Stats">
    <figcaption>Stats</figcaption>
  </figure>
</div>

<div class="project-image-stack two-images">
  <figure>
    <img src="https://github.com/user-attachments/assets/8b14f7b8-9f3f-4de5-b548-ce51dcfeb479" alt="PCB">
    <figcaption>PCB</figcaption>
  </figure>
  <figure>
    <img src="https://github.com/user-attachments/assets/bb55650d-d55b-4280-af41-0574d795a18d" alt="Wiring">
    <figcaption>Wiring</figcaption>
  </figure>
</div>

***