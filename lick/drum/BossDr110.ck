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

class Clap extends Sample
{
    {
        "samples/BossDr110/Clap.wav" => buf.read;
    }
}

class ClosedHat extends Sample
{
    {
        "samples/BossDr110/ClosedHat.wav" => buf.read;
    }
}

class Crash extends Sample
{
    {
        "samples/BossDr110/Crash.wav" => buf.read;
    }
}

class Kick extends Sample
{
    {
        "samples/BossDr110/Kick.wav" => buf.read;
    }
}

class OpenHat extends Sample
{
    {
        "samples/BossDr110/OpenHat.wav" => buf.read;
    }
}

class PedalHat extends Sample
{
    {
        "samples/BossDr110/PedalHat.wav" => buf.read;
    }
}

class Snare extends Sample
{
    {
        "samples/BossDr110/Snare.wav" => buf.read;
    }
}

class PlaySample extends UnaryProcedure
{
    int velocity;

    fun void run(Object value)
    {
        value $ Sample @=> Sample sample;
        sample.asIntProcedure().run(velocity);
        500::ms => now;
    }
}

public class BossDr110
{
    Clap clap;
    ClosedHat closedHat;
    Crash crash;
    Kick kick;
    OpenHat openHat;
    PedalHat pedalHat;
    Snare snare;

    fun void demo()
    {
        ArrayList samples;
        samples.add(clap);
        samples.add(closedHat);
        samples.add(crash);
        samples.add(kick);
        samples.add(openHat);
        samples.add(pedalHat);
        samples.add(snare);

        PlaySample playSample;
        32 => playSample.velocity;
        samples.forEach(playSample);

        64 => playSample.velocity;
        samples.forEach(playSample);

        127 => playSample.velocity;
        samples.forEach(playSample);
    }
}
