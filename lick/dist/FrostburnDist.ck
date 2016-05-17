/*

    LiCK  Library for ChucK.
    Copyright (c) 2007-2016 held jointly by the individual authors.

    This file is part of LiCK.

    LiCK is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    LiCK is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with LiCK.  If not, see <http://www.gnu.org/licenses/>.

*/

// see http://electro-music.com/forum/topic-19287.html&postorder=asc
class F extends FloatFunction
{
    fun float evaluate(float value)
    {
        // f(x) = (x * abs(x) + x) / (x^2 + abs(x) + 1.0)
        return (value * Math.fabs(value) + value) / (value * value + Math.fabs(value) + 1.0);
    }
}

public class FrostburnDist extends WaveShaper
{
    {
        F f;
        f @=> shape;
    }
}
