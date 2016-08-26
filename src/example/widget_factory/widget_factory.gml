HBOX hbox4v2
;

COMBO_BOX_TEXT combobox5
  SIGNAL "show" combobox2_show 
;

COMBO_BOX_TEXT combobox4
  SIGNAL "show" combobox2_show 
;

COMBO_BOX_TEXT combobox3
  SIGNAL "show" combobox2_show 
;

HBOX hbox3v2
  ADD combobox3
  ADD combobox4
  ADD combobox5
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
  SIGNAL "show" hbox_show
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
  ADD combobox
  ADD combobox2
  ADD entry
  ADD entry2
  ADD hbox2v2
  ADD hbox3v2
  ADD hbox4v2
;

HBOX hbox1v1
  ADD vbox2h1
;

VBOX vbox1
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
