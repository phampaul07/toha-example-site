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

The Autonomous PiCar is a Raspberry Pi-controlled vehicle designed to drive, track objects, recognize traffic-light colors, and maintain stable speed using closed-loop control. The project combined motor characterization, PID tuning, computer vision, ultrasonic distance sensing, and accelerometer-based steering correction into one autonomous system.

## Key Features

- Manually tuned PID controls for real-time motor speed control using rotational speed feedback.
- Used OpenCV and HSV color masking to detect blue targets and simulated traffic-light colors.
- Integrated ultrasonic sensing for distance-based braking and collision prevention.
- Used accelerometer/gyroscope data to help the vehicle maintain a straight heading.
- Implemented multiple autonomous behaviors: target seeking, traffic-light response, and hallway cruise control.

## Motor Control and PID Tuning

I first characterized the PiCar’s open-loop motor behavior by mapping PWM duty cycle to rotational speed. From this, I estimated the motor response and developed a feedforward baseline before tuning the PID controller.

The final controller reduced steady-state error and stabilized the vehicle under different physical conditions, including both suspended-wheel testing and ground-driving conditions. Ground driving required more aggressive proportional and integral gains because of rolling resistance and static friction.

## Computer Vision Pipeline

For object tracking and traffic-light recognition, I used the Pi Camera with OpenCV. Captured RGB frames were converted into HSV color space, then filtered using binary masks to isolate target colors.

### Blue Target Detection

The PiCar used a blue-object mask to locate a target, calculate its center of mass, and adjust steering toward the object.

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
  <video controls prelffoad="metadata" playsinline>
    <source src="/images/projects/picar/trashbin.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
  <p class="project-video-caption">Autonomous target-seeking demonstration.</p>
</div>

## Traffic Light Recognition

For the traffic-light objective, the system detected red, yellow, and green circles using separate HSV masks. The detected color controlled the vehicle’s behavior:

- Green: continue driving
- Yellow: slow down
- Red: stop
- Emergency threshold: stop if too close, regardless of detected color

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

## Challenges

One major challenge was handling inconsistent camera frames during real-time operation. The control loop sometimes ran faster than the Pi Camera could provide updated frames, so I added safer image-handling logic to prevent dropped frames from crashing the system.

Another challenge was tuning HSV thresholds under changing lighting. The printed green and yellow targets were affected by shadows, glare, and camera exposure, so I adjusted the HSV bounds to improve detection reliability.

## Results

The PiCar successfully demonstrated autonomous navigation behaviors using a combination of PID control and sensor feedback. It was able to track a colored object, respond to traffic-light colors, maintain controlled speed, and use sensor data to make driving decisions in real time.

## What I Learned

This project helped me understand how control systems and computer vision interact in real autonomous systems. I learned how to tune PID parameters, process noisy sensor data, build reliable OpenCV masks, and design state-based autonomous behavior for a physical robot.