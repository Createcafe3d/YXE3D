��          |      �             !     (  !   H  (   j  !   �      �  "   �     �     �  %        2  e  R     �  �  �  #  �     �	  U  �  �                 "  5   3     i                                     	               
       Cancel MARKUP - Alignment Instructions MARKUP - Calibration Instructions MARKUP - Center Calibration Instructions MARKUP - Orientation Instructions MARKUP - Print Area Instructions MARKUP - Test Pattern Instructions Ok Print from file dripper_photo_zaxis_delay DESCRIPTION dripper_photo_zaxis_delay TITLE Project-Id-Version: 0.1
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-09-01 16:34-0600
PO-Revision-Date: 2015-03-17 09:48-0600
Last-Translator: James Townley <software+dev@gmail.com>
Language-Team: James Townley <software+dev@gmail.com>
Language: English (American)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
 Cancel Alignment is a tool that will help you get your grid paper positioned properly underneath the printer.  You may come back to this tool multiple times throughout the calibration process.  When complete the laser path should be parallel with the lines on the grid paper.
Ensure that your safety glasses are on.
Place the grid paper underneath the printer.
The printer should be drawing a straight line, rotate the grid paper until the laser line is parallel with the grid paper lines.

[b]Note[/b]:  In order to get the most accurate calibration switch back and forth between the 'Alignment' and “Center” tools to ensure the grid paper is both centered and aligned.

Once you’ve completed this, you may move on to 'Print Area' The Top and Bottom Calibration Steps allow the software to account of some of the typical irregularites in a peachy printer. To do so folow the steps below.

1. Place the provided grid paper below the laser starting at the top height of your printer and using the center and alignment tabs accuratly.
2. Select the top print posistion button eg. 'X:100.0, y: 100.0'
3. Click and drag on the grid to the right and move the laser to the corner of your print area designated by the grid dot in the mini grid on the lower left.
4. [i](optional)[/i] Click the 'Super Accurate mode' to percisely posisition the laser by clicking and dragging.
5.Repeat the process for the remaining points.
 6. Move the grid paper to the bottom of the print area and repeat all the above steps on the 'Bottom' calibration tab. Center is a tool that will assist you in adjusting the mirrors resting point to be centered in the range of deflection and parallel with the surface of the mirror frame.  When complete, the laser beam should be plumb (perfectly vertical) and centered in your build volume.

Ensure that your safety glasses are on.
Place the grid paper underneath the printer
Center the grid paper underneath the 2nd mirror
Move the laser beam to the center of the grid paper by rotating the magnetic damper discs on each galvanometer.  One disc will move the laser in the X-axis, the other will move the laser in the Y-axis.

[b]Note[/b]: Be gentle while adjusting the magnetic damper discs.
[b]Note[/b]: Be sure the magnets do not touch the aluminum damper slug

Once you are satisfied with the adjustments you’ve made, move on to 'Orientation'

[b]Remember[/b]:  The more accurately you calibrate your printer, the better it will perform. However if you’re just printing for fun, then being off center by 2 mm or so isn’t a big deal. Orientation is a tool that helps the software determine the orientation of your printer and the polarity of the coils.

Ensure that your safety glasses are on.
Place the glow paper underneath the printer.
While looking at the printer from the front you should see it drawing a 'P' in one of the 8 orientations on you computer screen.
Choose the 'P' on the screen that matches the orientation of the 'P' that the printer is drawing.  Our software will automatically detect the polarity of your coils and the orientation of your printer. 
Once this is done correctly, you may move on to 'Alignment'. This is where you define the print area of your lower reservoir.

Measure the X and Y dimensions (width and length) of your lower reservoir.
Enter those measurements into the software.

Once you’ve completed this, you may move onto 'Top' The test patterns can be used for a number of tests. The speed and height controls allow you to play with the test patterns at diffrent heights in the print and find good print speeds to use.

1. [b]Square[/b] - Used to test the general success of the calibration. It should be square it can also be used as a test for ringing. To do so adjust the speed untill the corners of the square start getting soft then back off a little bit. This can be used a maximum speed value.
2. [b]Twitch[/b] -  Used for FILL ME IN
3. [b]Damping Test[/b] - [i]Modder use[/i] Used to determine the best magnetic damping. This has been calculated for you with the magenets and damping slugs you recieved however modders may wish to experiment.
4. [b]Hourglass[/b] - [i]Modder use[/i] The hourgalss is a test pattern for the memory effect a good hourglass should have the center points overlapping and all the lines in pattern in line with the oppisite side of the pattern.
5. [b]NESW[/b] - Used to test the orientation of the printer. all the compas points should be in the correct places and not reversed or upside down.
6. [b]Circle[/b] - Another test of calibration that can be used. When properly calibrated the image should be a very clear circle with out distortions.
7. [b]Hilbert[/b] - The hilbert curve is designed to cover a large portion of the print area. It can be used for finding non-linearities and also makes a good test for determining maximum speed.
8. [b]Spiral[/b] - The spiral test is similar to the hilbert curve in it usefullness for finding non linearities Ok Print from GCODE The minimum time the Peachy will take to draw a layer Minimum Layer Time 