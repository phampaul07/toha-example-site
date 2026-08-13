---
title: "FPGA-based Simon Says Game"
type: "projects"
layout: "single"
role: Developer
timeline: "May 2026"
repo: https://github.com/phampaul07/Simon_Says
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

A hardware-implemented Simon Says memory game, written from scratch in SystemVerilog with no microcontroller or software loop involved — timing, state transitions, registers, and outputs are all explicitly designed in FPGA logic. Built as a final project for a digital logic course, it combines several core digital design concepts into a single working system: memory, randomness, user input, sequential logic, and state-machine design.

---

## Highlights

- **Finite-state-machine control:** a single FSM governs the idle, playback, input, validation, and game-over states, keeping the timing between LED playback and user input clean and readable.
- **Pseudo-random sequence generation:** a 4-bit Linear Feedback Shift Register (LFSR) generates each new step in the growing sequence.
- **Sequence memory:** the full sequence is stored and replayed each round, then checked against player input step-by-step for correctness.
- **Behavioral design, fully synthesizable:** control logic and hardware datapath are separated cleanly, keeping the design organized and synthesizable rather than relying on ad hoc logic.

---

## Future Improvements

Although the current prototype is fully functional, there are several improvements I would like to explore.

- Support for longer sequences with a wider counter/memory width
- A difficulty mode that speeds up playback as the sequence grows
- An on-board score display beyond LED-based failure indication
- Porting the control logic to a different FPGA target to test the design's portability

**What I Learned:** This project deepened my understanding of how FSMs, registers, counters, and pseudo-random logic work together in a real hardware design, and how much timing precision matters when input and output signals need to line up exactly.

***
