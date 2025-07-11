# CAN-Based-ABS-System
🚗 **Modeling and Simulation of CAN-Based Anti-lock Braking System (ABS) using Simulink and Fuzzy Logic Control**

---

## 📌 Overview

This project simulates a Controller Area Network (CAN)-based Anti-lock Braking System (ABS) using **MATLAB/Simulink**, with an optional **Fuzzy Logic Controller** to enhance braking efficiency. The simulation models real-world braking scenarios and evaluates the effect of communication delay, message prioritization, and intelligent control strategies on vehicle safety.

---

## 🎯 Objectives

- ✅ Simulate ABS dynamics using MATLAB/Simulink 
- ✅ Integrate CAN communication for controller-actuator signaling  
- ✅ Investigate the effect of **message priority** on braking response  
- ✅ Enhance ABS performance using **Fuzzy Logic Control (FLC)**  
- ✅ Compare classical Bang-Bang control with fuzzy control logic  

---

## 🧠 System Description

### 1. **CAN Communication**
- Implements real-time messaging between ABS controllers and actuators using **CAN Bus Protocol**
- Evaluates **transmission delay**, **message priority arbitration**, and its effects on braking performance
- Emulates automotive-grade communication infrastructure using Simulink CAN blocks

### 2. **ABS Control Strategies**
- **Bang-Bang Controller**: Traditional threshold-based slip controller  
- **Fuzzy Logic Controller (FLC)**: Adaptive control based on road condition, slip ratio, and braking force

### 3. **Simulation Tools**
- **MATLAB/Simulink** – Control modeling and signal flow   

---

## 📊 Key Results

| Metric                     | Value / Insight                        |
|---------------------------|----------------------------------------|
| Target Slip Ratio         | 0.2 (Maintained with small oscillations)|
| Peak Wheel Acceleration   | -100 rad/s² to +10 rad/s²              |
| ABS Activation Pattern    | Periodic, effective at preventing lockup|
| Communication Speed       | Up to 1 Mbps, CAN priority respected   |
| FLC vs. Bang-Bang Control | FLC showed smoother response and better slip control |

---

## 📈 Simulation Outputs

- Vehicle vs. Wheel Speed plots  
- Slip ratio graphs over time  
- ABS cycle activation pattern  
- Comparison of controller responses

---

## 🔍 Research Insights

- CAN communication significantly enhances the **reliability and responsiveness** of braking commands.  
- **Fuzzy Logic** improves adaptability under varying road conditions compared to classical control.  
- Delays and message collisions in CAN affect response time, validating the need for **message prioritization**.

---

## 🧪 Future Work

- Integration of **machine learning-based adaptive ABS controllers**  
- **Hardware-in-the-loop (HIL)** testing for real-time validation  
- Sensor fusion and multi-ECU coordination with traction/stability systems

---

## 🛠️ How to Run

1. Open `ABSwithBangbangController.slx` in MATLAB Simulink  
2. Configure input parameters: Initial vehicle speed, slip ratio  
3. Run simulation for 15–17.5 seconds  
4. Observe outputs in scope blocks or exported data plots  
5. Compare performance across:
   - Bang-Bang Controller
   - Fuzzy Logic Controller (FLC)
   - CAN-based communication model



