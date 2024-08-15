require 'gnuplot'

# Constants for the Lorenz system
sigma = 10.0
rho = 28.0
beta = 8.0 / 3.0

# Time step
dt = 0.01
steps = 10_000

# Initial conditions
x0, y0, z0 = 0.0, 1.0, 1.05
x1, y1, z1 = 0.0, 1.0, 1.06 # Slightly different initial condition

# Arrays to store the trajectories
trajectory1 = [[x0, y0, z0]]
trajectory2 = [[x1, y1, z1]]

# Function to compute the next step in the Lorenz system
def lorenz_step(x, y, z, sigma, rho, beta, dt)
  dx = sigma * (y - x) * dt
  dy = (x * (rho - z) - y) * dt
  dz = (x * y - beta * z) * dt
  [x + dx, y + dy, z + dz]
end

# Simulate the Lorenz system
steps.times do
  x0, y0, z0 = lorenz_step(x0, y0, z0, sigma, rho, beta, dt)
  x1, y1, z1 = lorenz_step(x1, y1, z1, sigma, rho, beta, dt)
  trajectory1 << [x0, y0, z0]
  trajectory2 << [x1, y1, z1]
end

# Plot the trajectories using Gnuplot
Gnuplot.open do |gp|
  Gnuplot::Plot.new(gp) do |plot|
    plot.title  "Lorenz Attractor - Butterfly Effect"
    plot.xlabel "X"
    plot.ylabel "Y"
    plot.zlabel "Z"
    plot.terminal "png"
    plot.output "lorenz_attractor.png"
    plot.data << Gnuplot::DataSet.new(trajectory1.transpose) do |ds|
      ds.with = "lines"
      ds.linewidth = 1
      ds.title = "Trajectory 1"
    end
    plot.data << Gnuplot::DataSet.new(trajectory2.transpose) do |ds|
      ds.with = "lines"
      ds.linewidth = 1
      ds.title = "Trajectory 2"
    end
  end
end

puts "Plot saved as 'lorenz_attractor.png'"
