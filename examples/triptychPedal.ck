/*

    LiCK  Library for ChucK.
    Copyright (c) 2007-2022 held jointly by the individual authors.

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

Triptych triptych;

0.8 => triptych.mix;

triptych.stop();

class Toggle extends Procedure
{
    fun void run()
    {
        triptych.toggle();
        <<<"running", triptych.running()>>>;
    }
}

adc => triptych => dac;

Toggle toggle;

StompKeyboard stomp;
toggle @=> stomp.button0Down;

stomp.open(0);
