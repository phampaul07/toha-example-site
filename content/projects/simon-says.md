---
title: "FPGA-based Simon Says Game"
type: "projects"
layout: "single"
role: Developer
timeline: "May 2026"
repo: https://github.com/phampaul07/Simon-Says
summary: "A Simon Says sequence game on an FPGA using Verilog based on behavioral modeling."
---


<div class="project-video-block">
  <video controls preload="metadata" playsinline>
    <source src="/images/projects/simon-says/simon.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
  <p class="project-video-caption">FPGA Simon Says gameplay demonstration.</p>
</div>

## Overview

A hardware-implemented Simon Says memory game written from scratch in SystemVerilog. The project features a fully synthesizable design utilizing an algorithmic Linear Feedback Shift Register (LFSR) for pseudo-random sequence generation, a robust Finite State Machine (FSM) for game state handling, and pure behavioral logic split cleanly into control logic and hardware datapath.

## Key Features

- Built a playable Simon Says memory game using SystemVerilog.
- Used a finite state machine to control idle, playback, input, validation, and game-over states.
- Generated pseudo-random LED sequences with a 4-bit Linear Feedback Shift Register.
- Stored and replayed the growing sequence using internal sequence memory.
- Compared player button input against the expected sequence step-by-step.
- Displayed game progress and failure states using FPGA-controlled LEDs.

## Motivation

I built this project as a final project for my digital logic course, but to also better understand how digital systems are structured at the hardware level. Instead of relying on a microcontroller or software loop, I wanted to implement the game using FPGA logic where timing, state transitions, registers, and outputs all had to be explicitly designed. Simon Says was a good project because it combines several important digital design concepts in one system: memory, randomness, user input, sequential logic, output control, and state-machine design.

## Design Process

I designed the game around a finite state machine that controls the main gameplay loop. The system first generates a new sequence value, plays the stored sequence through LEDs, waits for button input, and checks whether the player matched the correct pattern. If the input is correct, the game advances; if not, it enters a game-over state.

## Challenges

One challenge was managing timing between LED playback and user input. I had to make sure each state lasted long enough for the sequence to be readable while still keeping the logic clean. Another challenge was separating control logic from datapath behavior so the design stayed organized and synthesizable.

## What I Learned

This project helped me understand how FSMs, registers, counters, and pseudo-random logic work together in a real hardware design. I also learned how important timing is in FPGA projects, especially when user input and output signals need to be coordinated clearly.

