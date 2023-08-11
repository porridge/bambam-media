#!/bin/bash
# Copyright (C) 2023 Marcin Owsiany <marcin@owsiany.pl>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
set -euo pipefail
mkdir -p orig
cd orig
base_url="https://evolution.voxeo.com/library/audio/prompts"
function fetch() {
	subdir="$1"
	shift
	for f in "$@"
	do
		wget -nc "${base_url}/${subdir}/${f}.wav"
	done
}
fetch numbers {0..9}
fetch alphabet {A..Z}
