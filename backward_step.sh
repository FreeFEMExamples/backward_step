#! /bin/bash
#
/usr/local/bin/FreeFem++ backward_step.edp > backward_step.txt
if [ $? -ne 0 ]; then
  echo "Run error."
  exit
fi
#
ps2png backward_step_mesh.ps backward_step_mesh.png
#
echo "Normal end of execution."
