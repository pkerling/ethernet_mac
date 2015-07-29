-- This file is part of the ethernet_mac project.
--
-- For the full copyright and license information, please read the
-- LICENSE.md file that was distributed with this source code.

library ieee;
use ieee.std_logic_1164.all;


use work.ethernet_types.all;

package framing_types is

	-- Preamble/SFD data in IEEE 802.3 clauses 4.2.5 and 4.2.6 is denoted LSB first, so they appear reversed here
	constant PREAMBLE_DATA              : ethernet_data_t := "01010101";
	--constant PREAMBLE_LENGTH : positive := 7;
	constant START_FRAME_DELIMITER_DATA : ethernet_data_t := "11010101";
	constant PADDING_DATA               : ethernet_data_t := "00000000";

	-- Data is counted from the end of the SFD to the beginning of the frame check sequence, exclusive
	constant MIN_FRAME_DATA_BYTES : positive := 46 + 2 + 6 + 6; -- bytes
	constant MAX_FRAME_DATA_BYTES : positive := 1500 + 2 + 6 + 6; -- bytes

end package;
