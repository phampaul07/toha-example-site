---
title: "Autonomous Arm w/ Computer Vision (AACV) "
type: "projects"
layout: "single"
role: "Co-Developer"
timeline: "June 2026 - August 2026"
repo: https://github.com/phampaul07/AACV---Autonomous-Arm-with-Computer-Vision.git
summary: "An autonomous 6-DOF robotic arm that uses computer vision to detect and sort objects into designated bins."
---

## Overview

AACV is a six-degree-of-freedom robotic arm system capable of autonomously detecting, localizing, and manipulating colored cubes without any manual control or pre-programmed motion paths. An overhead camera continuously observes the workspace; computer vision converts what it sees into real-world coordinates, and those coordinates drive an inverse-kinematics solver that plans and executes the arm's pickup and placement motions in real time. The system was co-developed with Cole Burton.

## Highlights

- **Vision pipeline:** the raw camera feed is corrected for perspective distortion using a homography transform, then segmented into per-color HSV masks to isolate individual cubes. ArUco markers embedded in the workspace anchor the coordinate system and provide a known physical scale, enabling pixel measurements to be converted into millimeters with sub-centimeter accuracy.
- **Autonomous motion planning:** once a cube's real-world position is known, an inverse-kinematics solver computes the six joint angles required to reach it and generates the corresponding servo commands, translating vision output directly into physical motion with no operator input at any stage.
- **Two operating modes:** rainbow-order cube stacking, a fixed sequencing task, and color-to-marker target matching, a decision-driven placement task — demonstrating the system across two distinct classes of manipulation problems.
- **Two-layer calibration:** per-servo angle-to-command mapping corrects for mechanical mounting offsets, while a 3x3 interpolated workspace correction grid measures and compensates for positioning error across the arm's full reachable area, keeping placement accuracy consistent rather than only correct at a few reference points.

## Future Improvements

- Multi-frame temporal averaging to reduce color-detection noise under variable or warm lighting, building on the current single-frame pipeline
- Expanding color/object detection beyond the current primary-color set
- Closed-loop visual feedback during the placement motion itself, rather than only before it begins
- Evaluating a depth camera to make localization more robust to lighting conditions independent of color segmentation

## Gallery

*Placeholder images below — swap in build/demo photos once available.*

<div class="project-image-stack two-images">
  <figure>
    <img src="https://placehold.co/640x400/0d0d0d/ffffff?text=Arm+Overview" alt="Arm Overview (placeholder)">
    <figcaption>Arm Overview</figcaption>
  </figure>
  <figure>
    <img src="https://placehold.co/640x400/0d0d0d/ffffff?text=Vision+Pipeline" alt="Vision Pipeline (placeholder)">
    <figcaption>Vision Pipeline / ArUco Detection</figcaption>
  </figure>
</div>

<div class="project-image-stack two-images">
  <figure>
    <img src="https://placehold.co/640x400/0d0d0d/ffffff?text=Cube+Stacking+Demo" alt="Cube Stacking Demo (placeholder)">
    <figcaption>Rainbow-Order Cube Stacking</figcaption>
  </figure>
  <figure>
    <img src="https://placehold.co/640x400/0d0d0d/ffffff?text=Calibration+Grid" alt="Calibration Grid (placeholder)">
    <figcaption>Workspace Calibration Grid</figcaption>
  </figure>
</div>

***
