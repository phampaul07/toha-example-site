---
title: "Autonomous PiCar"
type: "projects"
layout: "single"
role: "Developer"
timeline: "May 2026"
report: /files/picarpaper.pdf
repo: https://github.com/phampaul07/Pi-Car
summary: "An autonomous Raspberry Pi-based vehicle featuring real-time PID motor control, computer vision, ultrasonic sensing, and accelerometer-assisted steering."
---

## Overview

The Autonomous PiCar is a Raspberry Pi-controlled vehicle that drives, tracks objects, recognizes traffic-light colors, and holds a stable speed under closed-loop control — combining motor characterization, PID tuning, computer vision, ultrasonic sensing, and accelerometer-based steering correction into one autonomous system.

---

## Highlights

- **PID motor control:** characterized the PiCar's open-loop motor behavior (PWM duty cycle to rotational speed), built a feedforward baseline, then tuned proportional and integral gains separately for suspended-wheel testing and ground driving — ground driving required more aggressive gains to overcome rolling resistance and static friction.
- **Vision-guided target seeking:** RGB frames from the Pi Camera are converted to HSV and filtered into binary masks to isolate a blue target, calculate its center of mass, and steer toward it in real time.
- **Traffic-light-responsive driving:** separate HSV masks detect red, yellow, and green, driving distinct behaviors (continue / slow down / stop), backed by an emergency-stop distance threshold regardless of detected color.
- **Sensor fusion for stability:** ultrasonic distance sensing handles collision-avoidance braking, while accelerometer/gyroscope data corrects heading drift to keep the vehicle driving straight.

---

## Future Improvements

Although the current prototype is fully functional, there are several improvements I would like to explore.

- More robust frame-handling to fully eliminate dropped-frame stalls under real-time load
- Adaptive HSV thresholding that self-corrects for changing lighting instead of fixed bounds
- Closed-loop speed control that reacts to terrain changes mid-drive, not just at calibration
- Combining ultrasonic and vision data for earlier obstacle detection instead of treating them as separate systems

**What I Learned:** This project showed me how tightly control systems and computer vision have to work together in a real autonomous system — tuning PID gains, filtering noisy sensor data, and building reliable OpenCV masks all had to hold up simultaneously, not just individually, for the car to behave predictably.

---

## Demonstrations

### Target Seeking

<div class="project-image-stack two-images">
  <figure>
    <img src="/images/projects/picar/COM.jpg" alt="Calculated center of mass on blue target">
    <figcaption>Calculated Center of Mass</figcaption>
  </figure>

  <figure>
    <img src="/images/projects/picar/maskbin.jpg" alt="Blue target binary mask">
    <figcaption>Blue Target Binary Mask</figcaption>
  </figure>
</div>

<div class="project-video-block">
  <video controls preload="metadata" playsinline>
    <source src="/images/projects/picar/trashbin.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
  <p class="project-video-caption">Autonomous target-seeking demonstration.</p>
</div>

### Traffic Light Recognition

<div class="project-image-stack four-images">
  <figure>
    <img src="/images/projects/picar/Original_Output.jpg" alt="Original traffic light frame">
    <figcaption>Original Frame</figcaption>
  </figure>

  <figure>
    <img src="/images/projects/picar/RedMask_Output.jpg" alt="Red mask output">
    <figcaption>Red Mask</figcaption>
  </figure>

  <figure>
    <img src="/images/projects/picar/YellowMask_Output.jpg" alt="Yellow mask output">
    <figcaption>Yellow Mask</figcaption>
  </figure>

  <figure>
    <img src="/images/projects/picar/GreenMask_Output.jpg" alt="Green mask output">
    <figcaption>Green Mask</figcaption>
  </figure>
</div>

<div class="project-video-block">
  <video controls preload="metadata" playsinline>
    <source src="/images/projects/picar/traffic.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
  <p class="project-video-caption">Traffic-light response demonstration.</p>
</div>

***
