> # Ball and Beam PID Controller
> Bachelor thesis - Positioning a Ball on an Inclined Beam Using Scilab Software
>
> The subject of this bachelor thesis is the design and implementation of a ball and inclined beam system using the Arduino UNO platform, an infrared ToF distance sensor and a servo actuator. The objective was to develop a control system that applies the principles of feedback control to ensure accurate and stable positioning of the ball through the controller’s control variable. The solution included the construction of the mechanical setup, system identification, synthesis and implementation of the PID controller in the Scilab environment and its interfacing with hardware components. The thesis also documents the design of ideal construction parts and the selection of a suitable ball. Based on experimental measurements, a mathematical model was created and the PID controller parameters were determined. The control algorithm was implemented on a physical system that initially exhibited unsatisfactory behavior. Therefore, the controller parameters were adjusted and finetuned again using the mathematical model.
>
> ## Startup guide
> This document serves as a guide to running simulations, whether with a model or with a real system. Certain steps are identical in both cases. It is necessary to have the necessary development environment **Arduino IDE (version 2.3.3)** and **Scilab software (version 2024.1.0)**. All scripts and simulation schemes that are necessary for the simulation alternative are attached in files.
> 
>> ### Running a simulation on the model
>>  To start a simulation with the model, it is necessary to load the parameters of the system and the PID controller.
>> Run the script *PID_parameters.sci*. After this step, in the file named
>> *model_PID_controller.zcos* just start the simulation by pressing the "Start" button, which is located
>> in the top bar of the window under the white arrow icon. After the simulations are finished, another click will appear on the screen
>> two windows with time courses of the measured quantities will appear. However, these waveforms can be displayed more clearly by running the script *model_plotter.sci*. The script
>> adds grids in the graphic outputs for better identification of critical points and legends describing individual.
> 
>> ### Running the simulation on a real system
>> Running on a real system includes specific steps that are required before the actual run. A special requirement is to upload the *toolbox_arduino_v5.ino* code to the Arduino UNO
>> board via the Arduino IDE environment. Without this script, it is not possible to establish the communication between Arduino and Scilab.
>> Equally important is the correct connection of the hardware components, specifically connecting the ToF sensor pin **SDA to the Arduino pin A4**, the **SCL pin to the A5 pin** and >> **the servo motor pin for the control signal (in our case the orange cable) to the Arduino digital pin
>> ~9 supporting PWM**. Since *toolbox_ardino_v5.ino* works with servomotor pins 9 and 10, it is possible to use the control signal also on pin 10, then it is necessary to be able to >> specify this change in the simulation scheme in the block **"Servo WRITE"** (1 represents pin 9, 2 represents pin 10). Finally, the key connection between the PC and Arduino is a
>> USB cable on the correct port, which is specified in Scilab by the **ARDUINO_SETUP** block. To identify the currently connected COM port, it is best to use the Arduino platform IDE: >> *Tools -> "Port: COMX"*, or a direct listing in the bottom bar of the window. After these steps, the simulation *real_system_PID_controller.zcos* is started in the same way as model >> simulation, while the time course of the measured quantities changes in real time. However, if for some reason the user wants to plot the data after the simulation is finished, they >> can do so using the *real_system_plotter.sci* script.
