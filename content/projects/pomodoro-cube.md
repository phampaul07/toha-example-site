---
title: "Pomodoro Cube"
type: "projects"
layout: "single"
role: "Developer"
timeline: "June 2026 - August 2026"
repo: https://github.com/phampaul07/pomodoro-cube.git
summary: "A Pomodoro timer with a physical cube that can be rotated to start, pause, and reset the timer."
---

## Overview

The Pomodoro Cube is a handheld productivity device engineered to fit entirely within the footprint of a standard Rubik's Cube. Rather than relying on a touchscreen or physical buttons for its primary interface, the device uses orientation as its main input: rotating the cube selects, starts, pauses, and resets a Pomodoro session. When placed on its custom magnetic charging dock, the device transitions into an expanded mode that adds a digital clock, a Tamagotchi-style virtual pet, and a running log of focus statistics.

Every subsystem — the custom KiCad PCB, the 3D-printed enclosure, the analog signal circuitry, and the CircuitPython firmware — was designed under the constraint of fitting inside the cube's volume, which shaped nearly every hardware decision on the project.

---

## Highlights

- **Zero-button standalone mode:** orientation sensing via an onboard MPU6050 drives timer selection and countdown, paired with a real-time clock and live battery/temperature readout, so the device runs entirely without physical buttons.
- **Analog button multiplexing:** the magnetic dock interface exposes only four physical contacts (5V, GND, 3.3V, Data), which ruled out dedicating a separate GPIO pin to each of the four dock buttons. I designed a resistor-ladder network that maps each button to a distinct voltage threshold, allowing all four to be read reliably from a single analog input.
- **Safe battery monitoring:** a hardware voltage divider steps the LiPo battery's 4.2V peak down to a level safe for the ESP32's ADC, letting the firmware calculate remaining battery percentage without risking damage to the microcontroller.
- **State-machine firmware architecture:** the CircuitPython firmware is structured as a memory-efficient finite state machine that cleanly separates standalone logic (clock/timer) from docked logic (Tamagotchi/stats), preventing memory fragmentation and keeping sprite animations smooth.

---

## Future Improvements

Although the current prototype is fully functional, there are several improvements I would like to explore.

- Custom PCB for the charging dock to replace the perfboard prototype
- Improved magnetic charging reliability
- Lower-power sleep mode
- Configurable timer durations
- Improved charging dock alignment
- Historical productivity graphs
- Rotating screen animation to make the interface fixed

---

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

---

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
