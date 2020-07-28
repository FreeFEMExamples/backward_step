# backward_step

backward_step, a FreeFem++ code which solves the backward step benchmark problem for Navier Stokes flow.

The backward step geometry is:

      | y=H   +--------------L5--------+  y=H
      |       |                        |
      |       L1                       L2
      |       |                        |
      | y=0.5 +-L4--+                  |
      |             L4                 |
      | y=0         +--------L3--------+  y=0
      |       ^     ^                  ^
      |       x=0   x=3                x=22
      |
      +--------------------------------------------------
      
In flow case 1, H = 1.5, and in flow case 2, H = 1. Solutions are desired at Reynolds numbers 50, 150, 500. Side L1 is an inflow boundary, with a parabolic inflow profile:
        uinflow = (H-y)*(y-1/2)/((H-1/2)/2)^2
      
Side L2 is an outflow boundary where boundary conditions are not imposed. Sides labeled L3, L4 and L5 are no slip walls, with U = V = 0.
The steady incompressible Navier Stokes equations for (u,v,p) in 2D are:

      -nu ( uxx + uyy ) + u ux + v uy + px = 0
      -nu ( vxx + vyy ) + u vx + v vy + py = 0
                                   ux + vy = 0
      
where nu is the kinematic viscosity.

## Licensing:
The computer code and data files described and made available on this web page are distributed under the MIT license.

## Reference:
Frederic Hecht,
New development in FreeFem++,
Journal of Numerical Mathematics,
Volume 20, Number 3-4, 2012, pages 251-265.

## Source Code:
- backward_step.edp, the FreeFem++ script;
- backward_step.sh, a BASH script to run the example;
- backward_step.txt, the output file;
- backward_step_mesh.png, a PNG image of the mesh;

