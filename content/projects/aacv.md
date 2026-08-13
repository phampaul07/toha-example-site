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

A 6-degree-of-freedom robotic arm that watches its workspace through an overhead camera, figures out where colored cubes are, and picks them up and sorts them — no manual control, no pre-programmed paths. Co-developed with Cole Burton.

## Highlights

- **Vision pipeline:** OpenCV + ArUco marker detection converts the camera feed into real-world coordinates, calibrated to millimeter accuracy.
- **Autonomous planning:** inverse kinematics solves the arm's motion in real time from those coordinates — the arm plans and executes its own pickup path.
- **Two operating modes:** rainbow-order cube stacking, and color-to-marker target matching.
- **Two-layer calibration:** per-servo angle mapping plus a per-workspace position correction grid, tuned out mechanical and optical error.

Currently refining color-detection robustness under variable lighting conditions.

***
