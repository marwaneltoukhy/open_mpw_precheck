#!/bin/sh
# Copyright 2020 Efabless Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# ./fom_density_checker.sh ~/testing/caravel.testing/caravel_user_project/caravel/gds/chip_io.gds report.txt 1
#  &
# ./fom_density_checker.sh ~/testing/caravel.testing/caravel_user_project/caravel/gds/chip_io.gds report.txt 2 &
# ./fom_density_checker.sh ~/testing/caravel.testing/caravel_user_project/caravel/gds/chip_io.gds report.txt 3 &
# ./fom_density_checker.sh ~/testing/caravel.testing/caravel_user_project/caravel/gds/chip_io.gds report.txt 4 &

# Define a timestamp function
timestamp() {
  date +"%Y-%m-%d_%H-%M-%S" # current time
}

timestamp
parallel -u ::: './fom_density_checker.sh ~/testing/caravel.testing/caravel_user_project/caravel/gds/chip_io.gds report.txt 1' './fom_density_checker.sh ~/testing/caravel.testing/caravel_user_project/caravel/gds/chip_io.gds report.txt 2' './fom_density_checker.sh ~/testing/caravel.testing/caravel_user_project/caravel/gds/chip_io.gds report.txt 3' './fom_density_checker.sh ~/testing/caravel.testing/caravel_user_project/caravel/gds/chip_io.gds report.txt 4'
timestamp