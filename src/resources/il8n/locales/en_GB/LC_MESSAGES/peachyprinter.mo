��    Z      �     �      �     �     �     �     �     �      �     �           6  *   Q  $   |  1   �  +   �  $   �     $	      C	     d	  -   	  '   �	  %   �	     �	     
     4
     G
     ^
     o
     �
     �
     �
     �
     �
     �
               6     I     d  #   y     �  (   �  "   �  (     "   0     S     r     �     �  &   �      �  (     "   6  %   Y       #   �     �  #   �       %   #     I  "   i     �  )   �  #   �     �       &   /      V     w     �  %   �     �  !   �       0   5  *   f     �     �  &   �      �  (   	  "   2     U     t     �     �     �     �  &   �        f  5     �     �     �     �     �  2   �       3     
   M  :   X     �     �     �  1   �       I        d  L   y     �  I   �     &  8   <     u  (   �     �     �     �     �     �  #        *  /   :     j  ,   {     �     �     �     �     �       
        $  
   <     G     U     Y     h  +   p     �  F   �     �          %  >   7     v     �     �     �     �  '   �     �  &        +  >   @       ,   �     �  ,   �     �  8        D  "   V     y  /   �     �  )   �     �  5        I  2   ]     �  A   �     �  4   �     1  7   D     |      �     �                                  (   R         -   B       6       1          	   :       X   )   V   "      D          C       H   =       >         M          ,   U   A   J   #       $   @   +   !      S       0   W   7       8       
       9      I          <      *           3         O                   E      L      2   '       N   .         K               F   &   P   Y      5              G           Z      ?   T       4       ;       /         Q                 %    Cancel Circut Emulated Ok Photo cure_rate_draw_speed DESCRIPTION cure_rate_draw_speed TITLE cure_rate_move_speed DESCRIPTION cure_rate_move_speed TITLE cure_rate_override_laser_power DESCRIPTION cure_rate_override_laser_power TITLE cure_rate_override_laser_power_amount DESCRIPTION cure_rate_override_laser_power_amount TITLE cure_rate_use_draw_speed DESCRIPTION cure_rate_use_draw_speed TITLE dripper_drips_per_mm DESCRIPTION dripper_drips_per_mm TITLE dripper_emulated_drips_per_second DESCRIPTION dripper_emulated_drips_per_second TITLE dripper_photo_zaxis_delay DESCRIPTION dripper_photo_zaxis_delay TITLE dripper_type DESCRIPTION dripper_type TITLE email.host DESCRIPTION email.host TITLE email.on DESCRIPTION email.on TITLE email.password DESCRIPTION email.password TITLE email.port DESCRIPTION email.port TITLE email.recipient DESCRIPTION email.recipient TITLE email.sender DESCRIPTION email.sender TITLE email.username DESCRIPTION email.username TITLE info_firmware_data_rate DESCRIPTION info_firmware_data_rate TITLE info_firmware_version_number DESCRIPTION info_firmware_version_number TITLE info_hardware_version_number DESCRIPTION info_hardware_version_number TITLE info_serial_number DESCRIPTION info_serial_number TITLE info_version_number DESCRIPTION info_version_number TITLE options_laser_thickness_mm DESCRIPTION options_laser_thickness_mm TITLE options_max_lead_distance_mm DESCRIPTION options_max_lead_distance_mm TITLE options_overlap_amount_mm DESCRIPTION options_overlap_amount_mm TITLE options_post_fire_delay DESCRIPTION options_post_fire_delay TITLE options_pre_layer_delay DESCRIPTION options_pre_layer_delay TITLE options_print_queue_delay DESCRIPTION options_print_queue_delay TITLE options_scaling_factor DESCRIPTION options_scaling_factor TITLE options_shuffle_layers_amount DESCRIPTION options_shuffle_layers_amount TITLE options_slew_delay DESCRIPTION options_slew_delay TITLE options_sublayer_height_mm DESCRIPTION options_sublayer_height_mm TITLE options_use_overlap DESCRIPTION options_use_overlap TITLE options_use_shufflelayers DESCRIPTION options_use_shufflelayers TITLE options_use_sublayers DESCRIPTION options_use_sublayers TITLE options_wait_after_move_milliseconds DESCRIPTION options_wait_after_move_milliseconds TITLE serial_enabled DESCRIPTION serial_enabled TITLE serial_layer_ended_command DESCRIPTION serial_layer_ended_command TITLE serial_layer_started_command DESCRIPTION serial_layer_started_command TITLE serial_off_command DESCRIPTION serial_off_command TITLE serial_on_command DESCRIPTION serial_on_command TITLE serial_port DESCRIPTION serial_port TITLE serial_print_ended_command DESCRIPTION serial_print_ended_command TITLE Project-Id-Version: 0.1
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-05-29 12:53-0600
PO-Revision-Date: 2015-03-17 09:48-0600
Last-Translator: James Townley <software+dev@gmail.com>
Language-Team: James Townley <software+dev@gmail.com>
Language: English (Canada/UK)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
 Cancel Default Emulate Drips Ok Light Drawing Photo Mode The override speed to be used when the laser is on Laser Draw Speed The override speed to be used when the laser is off Move Speed Override the laser power/extrusion rate specified in GCODE Override Laser Power The override power to be used Laser Power Override the laser draw speeds specified in GCODE Override GCODE Speeds The number of drips that it takes to raise the print surface 1 millimeter Drips Per Millimeter The rate at which the computer will emulate drips when in Emulate Drips mode Emulated Drips/Second The minimum total layer duration to allow for consistent exposure lengths Photo Exposure Length Choose the way that your printer handles Z-axis movement Z-axis Stuff The Address of the SMTP server for email SMTP server address True emailing after print Email On Enter Email password Email Password The port for outgoing smtp messages Email SMTP port The Email address that you wish to receive with Email Reciepient The Email address that you wish to send from Email Sender Enter Email username Email account username Firmware Data Rate FW Data Rate Firmware Version Number FW Version Hardware Version Number HW Version Serial Number S/N Version Number Version The size of the laser as it his the surface Laser Thickness mm Amount of distance the drips can be ahead of the layer before skipping Max Lead Distance Amount to overlap each layer Overlap amount mm Amout of time to wait before moving after turning the laser on Post Fire Delay TODO Pre Layer Delay Unsupported Print Queue Delay [Unsupported] Scales the gocde x the specified amount Gcode Scaling factor Number of points to shuffle each layer Shuffle Layer Amount A time to wait to allow for the inertia of the mirror assembly Slew Rate delay Height of sublayers when Use Sublayers is on Sublayer Height [0.1] Enables overlapping at the end of each layer Use Overlap Shuffle Layers moves the starting point around the print Use Shufflelayers Enables automatic adding of layers Use Sublayers Number of milliseconds to wait after each move. Wait after move milliseconds Send characters to an arduino upon events Enable Simple Serial Signals that the printer has finished drawing a layer Layer Ended Command Signals that the printer has begun drawing a layer Layer Started command Signals that the z-axis has reached the height for the next layer Dripper off command Signals that the layer at current height is complete Dripper on command Enter the serial port you wish to use ie: /dev/tty/USB0 Serial Port Signals that the print has ended Print ended command 