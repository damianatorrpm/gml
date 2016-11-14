ADJUSTMENT adjustment3
  SET Upper 4.0
  SET Value 1.0
  SET Step_increment 1.0
  SET Page_increment 1.0
;

ADJUSTMENT adjustment1
  SET Upper 100.0
  SET Lower 1.0
  SET Value 50.0
  SET Step_increment 1.0
  SET Page_increment 10.0
;

SCALE scale5
  ARG GTK_ORIENTATION_HORIZONTAL
  ARG adjustment3
  SET Draw_value FALSE
  SET Has_origin FALSE
  SET Digits 0
  SET Range_restrict_to_fill_level FALSE
  SET Add_mark 0.0 GTK_POS_BOTTOM ""
  SET Add_mark 1.0 GTK_POS_BOTTOM ""
  SET Add_mark 2.0 GTK_POS_BOTTOM ""
  SET Add_mark 3.0 GTK_POS_BOTTOM ""
  SET Add_mark 4.0 GTK_POS_BOTTOM ""
;

SCALE scale2
  ARG GTK_ORIENTATION_HORIZONTAL
  ARG adjustment1
  CMN Sensitive FALSE
  SET Range_restrict_to_fill_level FALSE
  SET Range_fill_level 75.0
  SET Draw_value FALSE
;
                                  
SCALE scale1
  ARG GTK_ORIENTATION_HORIZONTAL
  ARG adjustment1
  SET Range_restrict_to_fill_level FALSE
  SET Range_fill_level 75.0
  SET Draw_value FALSE
;

LEVEL_BAR levelbar2
  SET Max_value 5.0
  SET Value 2.0
  SET Mode GTK_LEVEL_BAR_MODE_DISCRETE
  SET Add_offset_value "low" 1.0
  SET Add_offset_value "high" 4.0
  SET Add_offset_value "full" 5.0
;

LEVEL_BAR levelbar1
  SET Value 0.6
;

PROGRESS_BAR progressbar3
  SET Fraction 0.5
  SET Show_text TRUE
;

PROGRESS_BAR progressbar2
  SET Fraction 0.5
  SET Inverted TRUE
;

PROGRESS_BAR progressbar1
  SET Fraction 0.5
;

VBOX vbox3h2
  SET Spacing 6
  ADD progressbar1
  ADD progressbar2
  ADD progressbar3
  ADD levelbar1
  ADD levelbar2
  ADD scale1
  ADD scale2
  ADD scale5
;
                              

/*
                        <child>
                          <object class="GtkBox" id="box25">
                            <property name="visible">1</property>
                            <property name="homogeneous">1</property>
                            <child>
                              <object class="GtkBox" id="box28">
                                <property name="visible">1</property>
                                <property name="vexpand">1</property>
                                <property name="spacing">6</property>
                                <child>
                                  <object class="GtkProgressBar" id="progressbar5">
                                    <property name="visible">1</property>
                                    <property name="orientation">vertical</property>
                                    <property name="fraction">0.5</property>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkProgressBar" id="progressbar6">
                                    <property name="visible">1</property>
                                    <property name="orientation">vertical</property>
                                    <property name="fraction">0.5</property>
                                    <property name="inverted">1</property>
                                  </object>
                                  <packing>
                                    <property name="position">1</property>
                                  </packing>
                                </child>
                              </object>
                              <packing>
                                <property name="fill">0</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkBox" id="box23">
                                <property name="visible">1</property>
                                <property name="vexpand">1</property>
                                <property name="spacing">6</property>
                                <child>
                                  <object class="GtkScale" id="scale3">
                                    <property name="height_request">100</property>
                                    <property name="visible">1</property>
                                    <property name="can_focus">1</property>
                                    <property name="orientation">vertical</property>
                                    <property name="adjustment">adjustment1</property>
                                    <property name="restrict_to_fill_level">0</property>
                                    <property name="fill_level">75</property>
                                    <property name="draw_value">1</property>
                                    <property name="digits">-1</property>
                                    <signal name="format-value" handler="scale_format_value"/>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkScale" id="scale4">
                                    <property name="height_request">100</property>
                                    <property name="visible">1</property>
                                    <property name="sensitive">0</property>
                                    <property name="can_focus">1</property>
                                    <property name="orientation">vertical</property>
                                    <property name="adjustment">adjustment1</property>
                                    <property name="restrict_to_fill_level">0</property>
                                    <property name="fill_level">75</property>
                                    <property name="draw_value">1</property>
                                    <property name="digits">-1</property>
                                    <signal name="format-value" handler="scale_format_value_blank"/>
                                  </object>
                                  <packing>
                                    <property name="position">1</property>
                                  </packing>
                                </child>
                              </object>
                              <packing>
                                <property name="fill">0</property>
                                <property name="position">1</property>
                              </packing>
                            </child>
                          </object>
                          <packing>
                            <property name="expand">1</property>
                            <property name="position">3</property>
                          </packing>
                        </child>
                      </object>
                      <packing>
                        <property name="position">4</property>
                      </packing>
</child>
*/

COMBO_BOX_TEXT combo_box1
  SET Active 0
  SIGNAL "show" combobox3_show 
;

COMBO_BOX_TEXT combo_box2
  SET Active 1
  CMN Sensitive FALSE
  SIGNAL "show" combobox3_show 
;

FONT_BUTTON fontbutton1
;

COLOR_BUTTON_WITH_RGBA colorbutton1
  SET Rgba "#31316867a09f"
;
      
FILE_CHOOSER_BUTTON filechooserbutton1
  SET Local_only FALSE
;

LINK_BUTTON_WITH_LABEL linkbutton1
  SET Label_text "link button"
  SET Relief GTK_RELIEF_NONE
  SET Uri "http://www.gtk.org"
  CMN Has_tooltip TRUE
;

SWITCH switch1
  CMN Halign GTK_ALIGN_CENTER
;

SWITCH switch2
  CMN Sensitive FALSE
  CMN Halign GTK_ALIGN_CENTER
;

TOGGLE_BUTTON_WITH_LABEL togglebutton1
  SET Label_text "togglebutton"
  CMN Receives_default TRUE
;

TOGGLE_BUTTON_WITH_LABEL togglebutton2
  SET Label_text "togglebutton"
  CMN Sensitive FALSE
  CMN Receives_default TRUE
;

TOGGLE_BUTTON_WITH_LABEL togglebutton3
  SET Label_text "togglebutton"
  CMN Receives_default TRUE
  SET Active TRUE
;

TOGGLE_BUTTON_WITH_LABEL togglebutton4
  SET Label_text "togglebutton"
  CMN Sensitive FALSE
  CMN Receives_default TRUE
  SET Active TRUE
;

SEPARATOR separator2
  SET Orientation GTK_ORIENTATION_VERTICAL
;

VBOX vbox3h1
  SET Spacing 10
  ADD togglebutton1
  ADD togglebutton2
  ADD togglebutton3
  ADD togglebutton4
  ADD combo_box1
  ADD combo_box2
  ADD fontbutton1
  ADD colorbutton1
  ADD filechooserbutton1
  ADD linkbutton1
  ADD switch1
  ADD switch2
;

SEPARATOR separator1
  SET Orientation GTK_ORIENTATION_VERTICAL
;

SPINNER spinner1
  SET Start 
;

SPINNER spinner2
;

SPINNER spinner3
  CMN Sensitive FALSE
;

SPINNER spinner4
  SET Start 
  CMN Sensitive FALSE
;

RADIO_BUTTON_WITH_LABEL radiobutton1
  SET Label_text "radiobutton"
;

RADIO_BUTTON_WITH_LABEL radiobutton2
  SET Label_text "radiobutton"
  SET Join radiobutton1
;

RADIO_BUTTON_WITH_LABEL radiobutton3
  SET Label_text "radiobutton"
  SET Join radiobutton1
  SET Inconsistent TRUE
;

RADIO_BUTTON_WITH_LABEL radiobutton4
  SET Label_text "radiobutton"
  CMN Sensitive FALSE
;

RADIO_BUTTON_WITH_LABEL radiobutton5
  SET Label_text "radiobutton"
  CMN Sensitive FALSE
  SET Join radiobutton3
;

RADIO_BUTTON_WITH_LABEL radiobutton6
  SET Label_text "radiobutton"
  CMN Sensitive FALSE
  SET Join radiobutton3
  SET Inconsistent TRUE
;

CHECK_BUTTON_WITH_LABEL checkbutton6
  SET Label_text "checkbutton"
  SET Inconsistent TRUE
  CMN Sensitive FALSE
;

CHECK_BUTTON_WITH_LABEL checkbutton5
  SET Label_text "checkbutton"
  CMN Sensitive FALSE
;

CHECK_BUTTON_WITH_LABEL checkbutton4
  SET Label_text "checkbutton"
  SET Active TRUE
  CMN Sensitive FALSE
;

CHECK_BUTTON_WITH_LABEL checkbutton3
  SET Label_text "checkbutton"
  SET Inconsistent TRUE
;

CHECK_BUTTON_WITH_LABEL checkbutton2
  SET Label_text "checkbutton"
;

CHECK_BUTTON_WITH_LABEL checkbutton1
  SET Label_text "checkbutton"
  SET Active TRUE
;

GRID grid1
  SET Row_homogeneous TRUE
  SET Column_spacing 18
  SET Row_spacing 6
  ADD Atach checkbutton1 0 0 1 1
  ADD Atach checkbutton2 0 1 1 1
  ADD Atach checkbutton3 0 2 1 1
  ADD Atach checkbutton4 0 3 1 1
  ADD Atach checkbutton5 0 4 1 1
  ADD Atach checkbutton6 0 5 1 1
  ADD Atach radiobutton1 1 0 1 1
  ADD Atach radiobutton2 1 1 1 1
  ADD Atach radiobutton3 1 2 1 1
  ADD Atach radiobutton4 1 3 1 1
  ADD Atach radiobutton5 1 4 1 1
  ADD Atach radiobutton6 1 5 1 1
  ADD Atach spinner1 2 0 1 1
  ADD Atach spinner2 2 1 1 1
  ADD Atach spinner3 2 2 1 1
  ADD Atach spinner4 2 3 1 1
;

SPIN_BUTTON spin_button2
  CMN Hexpand TRUE 
  CMN Sensitive FALSE
;

SPIN_BUTTON spin_button1
  CMN Hexpand TRUE 
  SET Adjustment adjustment1
;

LABEL label2
  CMN Hexpand TRUE 
  SET Text "label"
  CMN Sensitive FALSE
;

LABEL label1
  CMN Hexpand TRUE 
  SET Text "label"
;

HBOX hbox4v2
  SET Spacing 20
  ADD label1
  ADD label2
  ADD spin_button1
  ADD spin_button2
;

COMBO_BOX_TEXT combobox5
  CMN Hexpand TRUE 
  SIGNAL "show" combobox2_show 
;

COMBO_BOX_TEXT combobox4
  CMN Hexpand TRUE 
  SIGNAL "show" combobox2_show 
;

COMBO_BOX_TEXT combobox3
  CMN Hexpand TRUE 
  SIGNAL "show" combobox2_show 
;

HBOX hbox3v2
  ADD combobox3
  ADD combobox4
  ADD combobox5
  STYLE Add_class "linked"
;

ENTRY entry3
  SET Text "entry"
  CMN Hexpand TRUE
;

BUTTON button
  SIGNAL "show" button_show
;

HBOX hbox2v2
  ADD entry3
  ADD button
  STYLE Add_class "linked"
;

ENTRY entry2
  SET Text "entry"
  CMN Sensitive FALSE
;

ENTRY entry
  SIGNAL "show" entry_show
  SIGNAL "icon-release" on_entry_icon_release
;

COMBO_BOX_TEXT_ENTRY combobox2
  SIGNAL "show" combobox_show
  CMN Sensitive FALSE
;

COMBO_BOX_TEXT_ENTRY combobox
  SIGNAL "show" combobox_show
;

VBOX vbox2h1
  SET Spacing 10
  ADD combobox
  ADD combobox2
  ADD entry
  ADD entry2
  ADD hbox2v2
  ADD hbox3v2
  ADD hbox4v2
  ADD grid1
;

HBOX hbox1v1
  SET Spacing 10
  ADD vbox2h1
  ADD separator1
  ADD vbox3h1
  ADD separator2
  ADD vbox3h2
;

VBOX vbox1
  CMN Border_width 10
  SET Spacing 10
  ADD hbox1v1
;

STACK stack
  ADD Titled vbox1 "Page1" "Page1"
;

STACK_SWITCHER stack_switcher
  SET Stack_switcher_stack stack
;

BUTTON_FROM_ICON_NAME menu_button
  SET Icon_name "open-menu-symbolic"
  SET Size GTK_ICON_SIZE_BUTTON
;

HEADER_BAR header_bar
  SET Show_close_button TRUE
  SET Custom_title stack_switcher
  ADD Pack_end menu_button
;

WINDOW window
  SET Titlebar header_bar
  ADD stack
;
