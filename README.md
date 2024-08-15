# lorenzsystem
Demonstration of the Butterfly Effect

# Lorenz Attractor - Butterfly Effect Demonstration

This Ruby script simulates the Lorenz Attractor, a system of differential equations that exhibits chaotic behavior. The script demonstrates the Butterfly Effect by showing how two trajectories with slightly different initial conditions diverge over time, illustrating the sensitivity to initial conditions characteristic of chaotic systems.

## Prerequisites

To run this script, you need to have Gnuplot installed on your system and the Gnuplot gem for Ruby.

### Install Gnuplot

You can install Gnuplot using your package manager:

- **macOS**: 
  ```bash
  brew install gnuplot

- **UBUNTU**: 
  ```bash
  sudo apt-get install gnuplot

- **Install Gunplot Gem**: 
```bash
  gem install gnuplot


######################
— Running the Script —
######################

Save the Ruby script in a file, e.g., lorenz.rb.
Execute the script using the following command:

1) $ ruby app.rb
2) This will generate a plot of the Lorenz attractor and save it as lorenz_attractor.png

####

Output
——————
The script produces a PNG file named lorenz_attractor.png, which visualizes the Lorenz Attractor. The plot shows two trajectories with slightly different initial conditions diverging over time, demonstrating the Butterfly Effect.

Description
——————
The Lorenz Attractor is a set of differential equations originally developed to model atmospheric convection. It is one of the most well-known examples of a chaotic system, where small changes in initial conditions can lead to vastly different outcomes. This script uses the Lorenz Attractor to illustrate this phenomenon, known as the Butterfly Effect.



