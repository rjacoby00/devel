import time
import math
import board
from analogio import AnalogIn
from digitalio import DigitalInOut, Direction
import displayio
import terminalio
from adafruit_bitmap_font import bitmap_font
from adafruit_display_text import label
import adafruit_ili9341

analog_in = AnalogIn(board.A1)
blue = DigitalInOut(board.D7)
blue.direction = Direction.OUTPUT
green = DigitalInOut(board.D6)
green.direction = Direction.OUTPUT
red = DigitalInOut(board.D5)
red.direction = Direction.OUTPUT

green.value = True
blue.value = True
red.value = True

def get_voltage(pin):
    return (pin.value * 3.3) / 65536
 
spi = board.SPI()
tft_cs = board.D10
tft_dc = board.D9
 
display_bus = displayio.FourWire(spi, command=tft_dc, chip_select=tft_cs)
display = adafruit_ili9341.ILI9341(display_bus, width=320, height=240)
 

while(True):
    temp = math.log(get_voltage(analog_in) / 0.41) / 0.0218
    # temp = math.pow(math.e, 1.16 * get_voltage(analog_in)) * 12.3
    print(temp)
    text = str(get_voltage(analog_in))
    
    if(temp >= 52 and temp <= 75):
        red.value = True
        blue.value = False
        green.value = True
    elif(temp >= 21):
        red.value = True
        blue.value = True
        green.value = False
    else:
        red.value = False
        blue.value = True
        green.value = True
    
    time.sleep(0.5)

