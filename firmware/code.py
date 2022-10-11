import board

from kmk.kmk_keyboard import KMKKeyboard
from kmk.keys import KC
from kmk.scanners import DiodeOrientation
from kmk.extensions.LED import LED
from kmk.extensions.led import AnimationModes
from kmk.extensions.international import International
from kmk.modules.layers import Layers
from kmk.extensions.media_keys import MediaKeys
from kmk.modules.dynamic_sequences import DynamicSequences

keyboard = KMKKeyboard()

keyboard.col_pins = (board.GP11, board.GP12, board.GP13, board.GP14, board.GP15, board.GP16, board.GP17, board.GP18, board.GP19, board.GP20, board.GP21, board.GP22, board.GP26, board.GP27, board.GP28)
keyboard.row_pins = (board.GP5, board.GP6, board.GP7, board.GP8, board.GP9, board.GP10)
keyboard.diode_orientation = DiodeOrientation.COL2ROW

#LED
led_ext = LED(led_pin=[board.GP25])
keyboard.extensions.append(led_ext)

#Suppport for international keys and media keys
keyboard.extensions.append(International())
keyboard.extensions.append(MediaKeys())

#Support for layers
keyboard.modules.append(Layers())
FNLAYER = KC.MO(1)

#Support for dynamic dynamic_sequences
dynamicSequences = DynamicSequences(
    slots=10, # The number of sequence slots to use
    timeout=60000,  # Maximum time to spend in record or config mode before stopping automatically, milliseconds
    key_interval=0,  # Milliseconds between key events while playing
    use_recorded_speed=False  # Whether to play the sequence at the speed it was typed
)
keyboard.modules.append(dynamicSequences)

keyboard.keymap = [
    [KC.ESCAPE, KC.F1, KC.F2, KC.F3, KC.F4, KC.F5, KC.F6, KC.F7, KC.F8, KC.F9, KC.F10, KC.F11, KC.F12, KC.PSCREEN, KC.DELETE,
     KC.GRAVE, KC.N1, KC.N2, KC.N3, KC.N4, KC.N5, KC.N6, KC.N7, KC.N8, KC.N9, KC.N0, KC.MINUS, KC.EQUAL, KC.BSPACE, KC.PGUP,
     KC.TAB, KC.Q, KC.W, KC.E, KC.R, KC.T, KC.Y, KC.U, KC.I, KC.O, KC.P, KC.LBRC, KC.RBRC, KC.ENTER, KC.PGDOWN,
     KC.CAPSLOCK, KC.A, KC.S, KC.D, KC.F, KC.G, KC.H, KC.J, KC.K, KC.L, KC.SCOLON, KC.QUOTE, KC.NUHS, KC.NO, KC.HOME,
     KC.LSHIFT, KC.NUBS, KC.Z, KC.X, KC.C, KC.V, KC.B, KC.N, KC.M, KC.COMMA, KC.DOT, KC.SLASH, KC.RSHIFT, KC.UP, KC.END,
     KC.LCTRL, KC.LGUI, KC.LALT, KC.NO, KC.NO, KC.NO, KC.SPACE, KC.NO, KC.NO, KC.RALT, FNLAYER, KC.RCTRL, KC.LEFT, KC.DOWN, KC.RIGHT] ,

    [KC.NO, KC.MUTE, KC.VOLD, KC.VOLU, KC.F4, KC.RECORD_SEQUENCE(), KC.STOP_SEQUENCE(), KC.PLAY_SEQUENCE(), KC.F8, KC.F9, KC.F10, KC.F11, KC.F12, KC.PSCREEN, KC.DELETE,
     KC.GRAVE, KC.SET_SEQUENCE(0), KC.SET_SEQUENCE(1), KC.SET_SEQUENCE(2), KC.SET_SEQUENCE(3), KC.SET_SEQUENCE(4), KC.SET_SEQUENCE(5), KC.SET_SEQUENCE(6), KC.SET_SEQUENCE(7), KC.SET_SEQUENCE(8), KC.SET_SEQUENCE(9), KC.MINUS, KC.EQUAL, KC.BSPACE, KC.PGUP,
     KC.TAB, KC.Q, KC.W, KC.E, KC.R, KC.T, KC.Y, KC.U, KC.I, KC.O, KC.P, KC.LBRC, KC.RBRC, KC.ENTER, KC.PGDOWN,
     KC.CAPSLOCK, KC.A, KC.S, KC.D, KC.F, KC.G, KC.H, KC.J, KC.K, KC.L, KC.SCOLON, KC.QUOTE, KC.NUHS, KC.NO, KC.HOME,
     KC.LSHIFT, KC.NUBS, KC.Z, KC.X, KC.C, KC.V, KC.B, KC.N, KC.M, KC.COMMA, KC.DOT, KC.SLASH, KC.RSHIFT, KC.UP, KC.END,
     KC.LCTRL, KC.LGUI, KC.LALT, KC.NO, KC.NO, KC.NO, KC.SPACE, KC.NO, KC.NO, KC.RALT, KC.TRNS, KC.RCTRL, KC.LEFT, KC.DOWN, KC.RIGHT]
]

if __name__ == '__main__':
    keyboard.go()
