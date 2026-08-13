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

A handheld Pomodoro timer built into the size and shape of a Rubik's Cube. Rotate it to start, pause, and reset a session — no screen taps, no buttons, just orientation. Drop it on its magnetic dock and it becomes a small desk companion: a digital clock, a Tamagotchi-style pet, and a productivity tracker.

Every part — the custom KiCad PCB, the 3D-printed enclosure, the analog circuitry, and the CircuitPython firmware — had to fit inside the cube's volume.

## Highlights

- **Zero-button standalone mode:** timer selection, countdown, and battery/temp readout driven entirely by physical orientation.
- **Analog button multiplexing:** the magnetic dock interface only exposes 4 physical connections, so a resistor-ladder circuit reads 4 dock buttons off a single analog pin using distinct voltage thresholds.
- **Safe battery monitoring:** a voltage divider steps the 4.2V LiPo peak down to keep it inside the ESP32's ADC range.
- **State-machine firmware:** standalone and docked modes run as separate states, keeping memory stable and pet/stat animations smooth.

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
