---
title: "Autonomous Arm w/ Computer Vision (AACV) "
type: "projects"
layout: "single"
role: "Co-Developer"
timeline: "June 2026 - August 2026"
repo: https://github.com/phampaul07/AACV---Autonomous-Arm-with-Computer-Vision.git
summary: "An autonomous 6-DOF robotic arm that uses computer vision to detect and sort objects into designated markers."
---

<div class="project-video-block">
  <video controls preload="metadata" playsinline>
    <source src="/images/projects/aacv/aacv_demo.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
  <p class="project-video-caption">AACV autonomous cube-sorting demonstration.</p>
</div>

## Overview

AACV is a six-degree-of-freedom robotic arm system capable of autonomously detecting, localizing, and manipulating colored cubes without any manual control or pre-programmed motion paths. An overhead camera continuously observes the workspace; computer vision converts what it sees into real-world coordinates, and those coordinates drive an inverse-kinematics solver that plans and executes the arm's pickup and placement motions in real time. The system was co-developed with Cole Burton.

---

## Highlights

- **Vision pipeline:** the raw camera feed is corrected for perspective distortion using a homography transform, then segmented into per-color HSV masks to isolate individual cubes. ArUco markers embedded in the workspace anchor the coordinate system and provide a known physical scale, enabling pixel measurements to be converted into millimeters with sub-centimeter accuracy.
- **Autonomous motion planning:** once a cube's real-world position is known, an inverse-kinematics solver computes the six joint angles required to reach it and generates the corresponding servo commands, translating vision output directly into physical motion with no operator input at any stage.
- **Two operating modes:** rainbow-order cube stacking, a fixed sequencing task, and color-to-marker target matching, a decision-driven placement task — demonstrating the system across two distinct classes of manipulation problems.
- **Two-layer calibration:** per-servo angle-to-command mapping corrects for mechanical mounting offsets, while a 3x3 interpolated workspace correction grid measures and compensates for positioning error across the arm's full reachable area, keeping placement accuracy consistent rather than only correct at a few reference points.

---

## Future Improvements

Although the current prototype is fully functional, there are several improvements I would like to explore.

- Multi-frame averaging/tracking for cube position to reduce vision noise.
- Re-calibrate the 3×3 correction grid after any physical change (new camera position, new mat, moving to different hardware) — current values are specific to the exact setup they were measured on.
- Replace the fixed placement biases with additional measured calibration points instead of hand-tuned constants.
- Tune HSV thresholds under the final, permanent lighting setup rather than whatever was available during development.
- Add a post-placement verification pass using the camera.
- Add collision/reachability checks before committing to a pick or place command.

## What I Learned

- **Inverse kinematics:** learned to derive and implement the six-joint solver that converts a target position into the servo angles the arm needs to reach it.
- **Vision logic:** built the OpenCV/ArUco-based perception pipeline end to end — HSV segmentation, homography correction, and coordinate mapping — that turns a raw camera frame into a usable real-world position.
- **System integration:** reinforced how much of a vision-driven robotics system's overall reliability comes from calibration and error correction tying vision and motion planning together, not from either piece alone.

---

## Gallery

<div class="project-image-stack two-images">
  <figure>
    <img src="https://raw.githubusercontent.com/phampaul07/AACV---Autonomous-Arm-with-Computer-Vision/main/docs/images/hardware_camera_rig.jpg" alt="Overhead Camera Rig">
    <figcaption>Overhead Camera Rig</figcaption>
  </figure>
  <figure>
    <img src="https://raw.githubusercontent.com/phampaul07/AACV---Autonomous-Arm-with-Computer-Vision/main/docs/images/hardware_camera_mount.jpg" alt="Camera Mount">
    <figcaption>Camera Mount</figcaption>
  </figure>
</div>

<div class="project-image-stack two-images">
  <figure>
    <img src="https://raw.githubusercontent.com/phampaul07/AACV---Autonomous-Arm-with-Computer-Vision/main/docs/images/hardware_camera_closeup.jpg" alt="Camera Closeup">
    <figcaption>Camera Closeup</figcaption>
  </figure>
  <figure>
    <img src="https://raw.githubusercontent.com/phampaul07/AACV---Autonomous-Arm-with-Computer-Vision/main/docs/images/hardware_servo_bus.jpg" alt="Servo Bus">
    <figcaption>Servo Bus</figcaption>
  </figure>
</div>

<div class="project-image-stack two-images">
  <figure>
    <img src="https://raw.githubusercontent.com/phampaul07/AACV---Autonomous-Arm-with-Computer-Vision/main/docs/images/hardware_cubes_markers.jpg" alt="Cubes and ArUco Markers">
    <figcaption>Cubes &amp; ArUco Markers</figcaption>
  </figure>
  <figure>
    <img src="https://raw.githubusercontent.com/phampaul07/AACV---Autonomous-Arm-with-Computer-Vision/main/docs/images/calibration_grid_board.jpg" alt="Calibration Grid Board">
    <figcaption>Calibration Grid Board</figcaption>
  </figure>
</div>

***
