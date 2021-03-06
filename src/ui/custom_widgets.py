from kivy.uix.gridlayout import GridLayout
from kivy.uix.relativelayout import RelativeLayout
from kivy.uix.bubble import Bubble
from kivy.uix.label import Label
from kivy.graphics import Line, Color
from kivy.logger import Logger
from kivy.uix.popup import Popup
from kivy.uix.textinput import TextInput
from kivy.uix.button import Button
from kivy.uix.togglebutton import ToggleButton
from kivy.uix.tabbedpanel import TabbedPanel, TabbedPanelItem, TabbedPanelHeader
from kivy.uix.accordion import AccordionItem
from kivy.uix.boxlayout import BoxLayout
from kivy.compat import string_types
from kivy.factory import Factory
from kivy.properties import ListProperty, ObjectProperty, BooleanProperty, NumericProperty, StringProperty, BoundedNumericProperty, OptionProperty
from kivy.uix.dropdown import DropDown
from kivy.lang import Builder
from kivy.core.window import Window
import re

from infrastructure.langtools import _


Builder.load_file('ui/custom_widgets.kv')


class I18NImageTabbedPanelHeader(TabbedPanelHeader):
    text_source = StringProperty()
    source = StringProperty()
    orientation = StringProperty('horizontal')


class I18NLabel(Label):
    text_source = StringProperty('')


class I18NButton(Button):
    text_source = StringProperty('')


class I18NToggleButton(Button):
    text_source = StringProperty('')


class I18NImageToggleButton(ToggleButton):
    text_source = StringProperty('')
    source = StringProperty()
    key = StringProperty()


class I18NPopup(Popup):
    title_source = StringProperty('')


class I18NTabbedPanelItem(TabbedPanelItem):
    text_source = StringProperty('')


class I18NAccordionItem(AccordionItem):
    title_source = StringProperty('')


class I18NImageButton(Button):
    text_source = StringProperty()
    source = StringProperty()
    orientation = OptionProperty('horizontal', options=('horizontal', 'vertical'))
    key = StringProperty()


class ErrorPopup(I18NPopup):
    text = StringProperty()
    details = StringProperty()

    def __init__(self, text=None, details=None, title_source=None, **kwargs):
        if text is None:
            self.text = _('Bad Stuff Happened')
        else:
            self.text = text
        if title_source is None:
            self.title_source = _("No Title")
        else:
            self.title_source = title_source
        if details is None:
            self.details = ""
        else:
            self.details = details
        super(ErrorPopup, self).__init__(**kwargs)


class LabelGridLayout(GridLayout):
    text_padding_x = NumericProperty(0)
    child_height = NumericProperty(20)

    def add_widget(self, widget):
        super(LabelGridLayout, self).add_widget(widget)
        self._resize()

    def clear_widgets(self, children=None):
        super(LabelGridLayout, self).clear_widgets(children)
        self._resize()

    def remove_widget(self, widget):
        super(LabelGridLayout, self).remove_widget(widget)
        self._resize()

    def on_child_height(self, instance, value):
        self._resize()

    def on_size(self, instance, value):
        self._resize()

    def _resize(self):
        self.height = str(len(self.children) * self.child_height) + "dp"
        for child in self.children:
            child.text_size = [self.size[0] - self.text_padding_x, child.height]


class BorderedLabel(I18NLabel):
    def __init__(self, borders=[0, 0, 0, 0], **kwargs):
        super(BorderedLabel, self).__init__(**kwargs)
        self.bind(pos=self.update_border, size=self.update_border)
        self.borders = borders
        self.top_points = [0, 0, 0, 0]
        self.bottom_points = [0, 0, 0, 0]
        self.left_points = [0, 0, 0, 0]
        self.right_points = [0, 0, 0, 0]
        self._new = True

    def draw_border(self):
        with self.canvas.after:
            Color(1, 1, 1, 1)
            if self.borders[0]:
                self.top_border = Line(points=self.top_points, width=self.borders[0])
            if self.borders[1]:
                self.right_border = Line(points=self.right_points, width=self.borders[1])
            if self.borders[2]:
                self.bottom_border = Line(points=self.bottom_points, width=self.borders[2])
            if self.borders[3]:
                self.left_border = Line(points=self.left_points, width=self.borders[3])

    def update_border(self, *args):
        if self._new:
            self.draw_border()
            self._new = False
        else:
            if hasattr(self, 'top_border'):
                self.top_border.points =    [self.pos[0]               , self.pos[1] - self.size[1],        self.pos[0] + self.size[0], self.pos[1] - self.size[1]]
            if hasattr(self, 'right_border'):
                self.right_border.points =  [self.pos[0] + self.size[0], self.pos[1],                       self.pos[0] + self.size[0], self.pos[1] + self.size[1]]
            if hasattr(self, 'bottom_border'):
                self.bottom_border.points = [self.pos[0]               , self.pos[1],                       self.pos[0] + self.size[0], self.pos[1]               ]
            if hasattr(self, 'left_border'):
                self.left_border.points =   [self.pos[0]               , self.pos[1],                       self.pos[0]               , self.pos[1] + self.size[1]]


'''Depricated use Numeric Input'''
class FloatInput(TextInput):
    valid_characters = re.compile('[^0-9]')

    def __init__(self, **kwargs):
        super(FloatInput, self).__init__(**kwargs)
        self.multiline = False

    def insert_text(self, substring, from_undo=False):

        if '.' in self.text:
            string_value = re.sub(self.valid_characters, '', substring)
        else:
            string_value = '.'.join([re.sub(self.valid_characters, '', string_value) for string_value in substring.split('.', 1)])
        return super(FloatInput, self).insert_text(string_value, from_undo=from_undo)


class NumericInput(TextInput):
    value = BoundedNumericProperty(None)
    min = NumericProperty()
    max = NumericProperty()

    def __init__(self, **kwargs):
        self.last_text = None

        super(NumericInput, self).__init__(**kwargs)

        if hasattr(kwargs, 'multiline') and kwargs['multiline']:
            raise Exception('Multiline numeric input unsupported')
        else:
            kwargs['multiline'] = False

    def on_min(self, instance, value):
        self.property('value').set_min(self, value)

    def on_max(self, instance, value):
        self.property('value').set_max(self, value)

    def on_value(self, instance, value):
        self.text = str(value)

    def on_text(self, instance, text):
        if self._validate(text):
            try:
                self.value = self._convert_type(text)
                self.last_text = self.text
            except:
                self.text = self.last_text
        else:
            self.text = self.last_text

    def _validate(self, text):
        number = self._convert_type(text)
        if number is None:
            return False
        return True

    def _convert_type(self, text):
        is_float = '.' in str(self.value)
        try:
            if is_float:
                number = float(text)
            else:
                number = int(text)
        except ValueError:
            return None
        return number


class CommunicativeTabbedPanel(TabbedPanel):
    def __init__(self, **kwargs):
        super(CommunicativeTabbedPanel, self).__init__(**kwargs)
        self.last_tab = self.current_tab

    def on_current_tab(self, instance, value):
        if hasattr(self.last_tab.content, 'on_leave'):
            self.last_tab.content.on_leave()
        if hasattr(value.content, 'on_enter'):
            value.content.on_enter()
        self.last_tab = value


class I18NImageSpinnerOption(I18NImageButton):
    key = StringProperty()


class I18NImageSpinner(I18NImageButton):
    values = ListProperty()
    option_cls = ObjectProperty(I18NImageSpinnerOption)
    dropdown_cls = ObjectProperty(DropDown)
    is_open = BooleanProperty(False)
    selected = StringProperty()

    def __init__(self, **kwargs):
        self._dropdown = None
        super(I18NImageSpinner, self).__init__(**kwargs)
        fbind = self.fbind
        build_dropdown = self._build_dropdown
        fbind('on_release', self._toggle_dropdown)
        fbind('dropdown_cls', build_dropdown)
        fbind('option_cls', build_dropdown)
        fbind('values', self._update_dropdown)
        build_dropdown()

    def _build_dropdown(self, *largs):
        if self._dropdown:
            self._dropdown.unbind(on_select=self._on_dropdown_select)
            self._dropdown.unbind(on_dismiss=self._close_dropdown)
            self._dropdown.dismiss()
            self._dropdown = None
        cls = self.dropdown_cls
        if isinstance(cls, string_types):
            cls = Factory.get(cls)
        self._dropdown = cls()
        self._dropdown.bind(on_select=self._on_dropdown_select)
        self._dropdown.bind(on_dismiss=self._close_dropdown)
        self._update_dropdown()

    def _update_dropdown(self, *largs):
        dp = self._dropdown
        cls = self.option_cls
        if isinstance(cls, string_types):
            cls = Factory.get(cls)
        dp.clear_widgets()
        for value in self.values:
            item = cls(text_source=value[0], key=value[1], source=value[2])
            item.bind(on_release=lambda option: dp.select([option.text_source, option.key, option.source]))
            dp.add_widget(item)

    def _toggle_dropdown(self, *largs):
        self.is_open = not self.is_open

    def _close_dropdown(self, *largs):
        self.is_open = False

    def on_selected(self, instance, value):
        data = [data for data in self.values if data[1] == value][0]
        self.text_source = data[0]
        self.source = data[2]

    def _on_dropdown_select(self, instance, data, *largs):
        self.text_source = data[0]
        self.selected = data[1]
        self.source = data[2]
        self.is_open = False

    def on_is_open(self, instance, value):
        if value:
            self._dropdown.open(self)
        else:
            if self._dropdown.attach_to:
                self._dropdown.dismiss()


class HorizontalLabelSlider(BoxLayout):
    title = StringProperty()
    unit = StringProperty()
    value = NumericProperty(0.)
    min_value = NumericProperty(0.)
    max_value = NumericProperty(1.)
    step = BoundedNumericProperty(0, min=0)


class VerticalLabelSlider(BoxLayout):
    title = StringProperty()
    unit = StringProperty()
    value = NumericProperty(0.)
    min_value = NumericProperty(0.)
    max_value = NumericProperty(1.)
    step = BoundedNumericProperty(0, min=0)
