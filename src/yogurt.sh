#!/bin/bash
#
# yogurt: a pacman/yaourt frontend for human beings
#
# Copyright (c) 2017, Xilin Sun
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# * Redistributions of source code must retain the above copyright notice, this
#   list of conditions and the following disclaimer.
#
# * Redistributions in binary form must reproduce the above copyright notice,
#   this list of conditions and the following disclaimer in the documentation
#   and/or other materials provided with the distribution.
#
# * Neither the name of the copyright holder nor the names of its
#   contributors may be used to endorse or promote products derived from
#   this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
# FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
# SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
# OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

NAME='yogurt'
VERSION='0.0.1'

YAOURT=${YAOURT:-yaourt}

usage() {
  echo "$(gettext 'yogurt: yaourt/pacman frontend for human beings.')"
  echo ""
}

# Moo like aptitude
moo() {
  echo "$(gettext 'There are no Easter Eggs in this program.')"
}

if [[ $1 ]]; then
	case "$1" in
		# yogurt options
		moo|-moo|--mooo)    moo; exit 0;;
    -h|--help)          usage; exit 0;;

    # pass to yaourt
		# -*)                 [[ ! $PACMAN_CMD ]] && PACMAN_CMD=0;;
		*)                  (( ! $1 )) && exec $YAOURT "$@" ;;
	esac
else
  usage
fi

exit 0
