#!/bin/sh
#
# Copyright (C) 2021 Free Software Foundation, Inc.
#
# This file is part of groff.
#
# groff is free software; you can redistribute it and/or modify it under
# the terms of the GNU General Public License as published by the Free
# Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# groff is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
# FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
# for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.
#

grog="${abs_top_builddir:-.}/grog"
doc="${abs_top_srcdir:-..}/src/utils/grog/tests/foo.man"

# Regression test Savannah #59622.
#
# Recognize the strongly-accented dialect of man(7) produced by
# pod2man(1).

"$grog" "$doc" | grep '^groff -man .*/src/utils/grog/tests/foo\.man'

# vim:set ai et sw=4 ts=4 tw=72:
