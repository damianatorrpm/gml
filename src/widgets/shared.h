#include "box.h"
#include "entry.h"
#include "stack.h"
#include "window.h"
#include "text_view.h"
#include "header_bar.h"
#include "button.h"
#include "combo_box.h"
#include "label.h"
#include "adjustment.h"
#include "spin_button.h"
#include "toggle_button.h"
#include "font_button.h"
#include "color_button.h"
#include "file_chooser_button.h"
#include "file_chooser.h"
#include "link_button.h"
#include "switch.h"
#include "progress_bar.h"
#include "level_bar.h"
#include "scale.h"
#include "scrolled_window.h"
#include "frame.h"
#include "tree_view.h"
#include "cell_renderer_toggle.h"
#include "tree_view_column.h"
#include "cell_layout.h"
#include "revealer.h"
#include "scale_button.h"
#include "text_buffer.h"
#include "header_bar.h"
#include "action_bar.h"
#include "list_box.h"
#include "size_group.h"
#include "menu_item.h"
#include "menu.h"
#include "g_menu.h"
#include "check_menu_item.h"
#include "radio_menu_item.h"
#include "radio_button.h"
#include "tool_button.h"
#include "tool_item.h"
#include "search_bar.h"
#include "info_bar.h"

void set_submenu(char *setting)
{
        widget_type type = getsymtype(this);

        if (type == TYPE_G_MENU_ITEM) {
                g_menu_item_set_submenu(setting);
        } else if (type == TYPE_MENU_ITEM) {
                menu_item_set_submenu(setting);
        }
}

void set_show_close_button(char *setting)
{
        widget_type type = getsymtype(this);

        if (type == TYPE_HEADER_BAR) {
                header_bar_set_show_close_button(setting);
        } else if (type == TYPE_SEARCH_BAR) {
                search_bar_set_show_close_button(setting);
        } else if (type == TYPE_INFO_BAR) {
                info_bar_set_show_close_button(setting);
        }
}

void set_expand(char *setting)
{
        widget_type type = getsymtype(this);

        if (type == TYPE_TREE_VIEW_COLUMN) {
                tree_view_column_set_expand(setting);
        } else if (type == TYPE_TOOL_ITEM) {
                tool_item_set_expand(setting);
        }
}

void set_label_widget(char *setting)
{
        widget_type type = getsymtype(this);

        if (type == TYPE_FRAME) {
                frame_set_label_widget(setting);
        } else if (type == TYPE_TOOL_BUTTON) {
                tool_button_set_label_widget(setting);
        }
}

void set_icon_name(char *setting)
{
        widget_type type = getsymtype(this);

        if (type == TYPE_TOOL_BUTTON) {
                tool_button_set_icon_name(setting);
        } else if (type == TYPE_WINDOW) {
                window_set_icon_name(setting);
        }
}
 
void set_join_group(char *setting)
{
        widget_type type = getsymtype(this);

        if (type == TYPE_RADIO_MENU_ITEM) {
                radio_menu_item_join_group(setting);
        } else if (type == TYPE_RADIO_BUTTON) {
                radio_button_join_group(setting);
        }
}

void set_inconsistent(char *setting)
{
        widget_type type = getsymtype(this);

        if (type == TYPE_CHECK_MENU_ITEM) {
                check_menu_item_set_inconsistent(setting);
        } else if (type == TYPE_TOGGLE_BUTTON) {
                toggle_button_set_inconsistent(setting);
        }
}

void set_accel_path(char *setting)
{
        widget_type type = getsymtype(this);

        if (type == TYPE_MENU) {
                menu_set_accel_path(setting);
        } else if (type == TYPE_MENU_ITEM) {
                menu_item_set_accel_path(setting);
        }
}

void set_activate_on_single_click(char *setting)
{
        widget_type type = getsymtype(this);

        if (type == TYPE_TREE_VIEW) {
                tree_view_set_activate_on_single_click(setting);
        } else if (type == TYPE_LIST_BOX) {
                list_box_set_activate_on_single_click(setting);
        }
}

void set_activatable(char *setting)
{
        widget_type type = getsymtype(this);

        if (type == TYPE_CELL_RENDERER_TOGGLE) {
                cell_renderer_toggle_set_activatable(setting);
        } else if (type == TYPE_LIST_BOX_ROW) {
                list_box_row_set_activatable(setting);
        }
}

void set_selectable(char *setting)
{
        widget_type type = getsymtype(this);

        if (type == TYPE_LABEL) {
                label_set_selectable(setting);
        } else if (type == TYPE_LIST_BOX_ROW) {
                list_box_row_set_selectable(setting);
        }
}

void pack_start(char *setting)
{
        widget_type type = getsymtype(this);

        if (type == TYPE_HEADER_BAR) {
                header_bar_pack_start(setting);
        } else if (type == TYPE_ACTION_BAR) {
                action_bar_pack_start(setting);
        }
}

void pack_end(char *setting)
{
        widget_type type = getsymtype(this);

        if (type == TYPE_HEADER_BAR) {
                header_bar_pack_end(setting);
        } else if (type == TYPE_ACTION_BAR) {
                action_bar_pack_end(setting);
        }
}

void set_adjustment(char *setting)
{
        widget_type type = getsymtype(this);

        if (type == TYPE_SPIN_BUTTON) {
                spin_button_set_adjustment(setting);
        } else if (type == TYPE_SCALE_BUTTON) {
                scale_button_set_adjustment(setting);
        } else if (type == TYPE_LIST_BOX) {
                list_box_set_adjustment(setting);
        }
}

void set_label(char *setting)
{
        widget_type type = getsymtype(this);

        if (type == TYPE_LABEL) {
                label_set_label(setting);
        } else if (type == TYPE_BUTTON) {
                button_set_label(setting);
        } else if (type == TYPE_MENU_ITEM) {
                menu_item_set_label(setting);
        } else if (type == TYPE_G_MENU_ITEM) {
                g_menu_item_set_label(setting);
        } else if (type == TYPE_CHECK_MENU_ITEM) {
                menu_item_set_label(setting);
        } else if (type == TYPE_RADIO_MENU_ITEM) {
                menu_item_set_label(setting);
        } else if (type == TYPE_TOOL_BUTTON) {
                tool_button_set_label(setting);
        }


}

void set_transition_type(char *setting)
{
        widget_type type = getsymtype(this);

        if (type == TYPE_STACK) {
                stack_set_transition_type(setting);
        } else if (type == TYPE_REVEALER) {
                revealer_set_transition_type(setting);
        }
}

void set_transition_duration(char *setting)
{
        widget_type type = getsymtype(this);

        if (type == TYPE_STACK) {
                stack_set_transition_duration(setting);
        } else if (type == TYPE_REVEALER) {
                revealer_set_transition_duration(setting);
        }
}

void set_max_width_chars(char *setting)
{
        widget_type type = getsymtype(this);

        if (type == TYPE_LABEL) {
                label_set_max_width_chars(setting);
        } else if (type == TYPE_ENTRY) {
                entry_set_max_width_chars(setting);
        }
}

void add_attribute(char *widget, char *setting, char *column)
{
        widget_type type = getsymtype(this);

        if (type == TYPE_TREE_VIEW_COLUMN) {
                tree_view_column_add_attribute(widget, setting, column);
        } else {
                cell_layout_add_attribute(widget, setting, column);
        }
}
        
void add_cell_renderer(char *setting)
{
        widget_type type = getsymtype(this);

        if (type == TYPE_TREE_VIEW_COLUMN) {
                tree_view_column_add_renderer(setting);
        } else if (type == TYPE_COMBO_BOX) {
                combo_box_add_renderer(setting);
        }
}

void set_reorderable(char *setting)
{
        widget_type type = getsymtype(this);

        if (type == TYPE_TREE_VIEW_COLUMN) {
                tree_view_column_set_reorderable(setting);
        } else if (type == TYPE_TREE_VIEW) {
                tree_view_set_reorderable(setting);
        }
}

void set_spacing(char *setting)
{
        widget_type type = getsymtype(this);

        if (type == TYPE_TREE_VIEW_COLUMN) {
                tree_view_column_set_spacing(setting);
        } else if (type == TYPE_VBOX || type == TYPE_HBOX) {
                box_set_spacing(setting);
        }
}

void set_alignment(char *setting)
{
        widget_type type = getsymtype(this);

        if (type == TYPE_TREE_VIEW_COLUMN) {
                tree_view_column_set_alignment(setting);
        } else if (type == TYPE_WINDOW) {
                entry_set_alignment(setting);
        }
}

void set_resizable(char *setting)
{
        widget_type type = getsymtype(this);

        if (type == TYPE_TREE_VIEW_COLUMN) {
                tree_view_column_set_resizable(setting);
        } else if (type == TYPE_WINDOW) {
                window_set_resizable(setting);
        }
}

void set_model(char *setting)
{
        widget_type type = getsymtype(this);

        if (type == TYPE_TREE_VIEW) {
                tree_view_set_model(setting);
        } else if (type == TYPE_COMBO_BOX) {
                combo_box_set_model(setting);
        }
}

void set_shadow_type(char *setting)
{
        widget_type type = getsymtype(this);

        if (type == TYPE_FRAME) {
                frame_set_shadow_type(setting);
        } else if (type == TYPE_SCROLLED_WINDOW) {
                scrolled_window_set_shadow_type(setting);
        }
}

void set_digits(char *setting)
{
        widget_type type = getsymtype(this);

        if (type == TYPE_SCALE) {
                scale_set_digits(setting);
        } else if (type == TYPE_SPIN_BUTTON) {
                spin_button_set_digits(setting);
        }
}

void set_mode(char *setting)
{
        widget_type type = getsymtype(this);

        if (type == TYPE_LEVEL_BAR) {
                level_bar_set_mode(setting);
        } else if (type == TYPE_TOGGLE_BUTTON) {
                toggle_button_set_mode(setting);
        } else if (type == TYPE_SIZE_GROUP) {
                size_group_set_mode(setting);
        }
}

void set_inverted(char *setting)
{
        widget_type type = getsymtype(this);

        if (type == TYPE_LEVEL_BAR) {
                level_bar_set_inverted(setting);
        } else if (type == TYPE_PROGRESS_BAR) {
                progress_bar_set_inverted(setting);
        }
}

void set_ellipsize(char *setting)
{
        widget_type type = getsymtype(this);

        if (type == TYPE_LABEL) {
                label_set_ellipsize(setting);
        } else if (type == TYPE_PROGRESS_BAR) {
                progress_bar_set_ellipsize(setting);
        }
}

void set_uri(char *setting)
{
        widget_type type = getsymtype(this);

        if (type == TYPE_FILE_CHOOSER_BUTTON) {
                file_chooser_set_uri(setting);
        } else if (type == TYPE_LINK_BUTTON) {
                link_button_set_uri(setting);
        }
}

void set_active(char *setting)
{
        widget_type type = getsymtype(this);

        if (type == TYPE_TOGGLE_BUTTON) {
                toggle_button_set_active(setting);
        } else if (type == TYPE_COMBO_BOX) {
                combo_box_set_active(setting);
        } else if (type == TYPE_SWITCH) {
                switch_set_active(setting);
        } else if (type == TYPE_CELL_RENDERER_TOGGLE) {
                cell_renderer_toggle_set_active(setting);
        } else if (type == TYPE_COMBO_BOX) {
                combo_box_set_active(setting);
        } else if (type == TYPE_MENU) {
                menu_set_active(setting);
        } else if (type == TYPE_CHECK_MENU_ITEM) {
                check_menu_item_set_active(setting);
        }

}

void set_value(char *setting)
{
        widget_type type = getsymtype(this);

        if (type == TYPE_SPIN_BUTTON) {
                spin_button_set_value(setting);
        } else if (type == TYPE_ADJUSTMENT) {
                adjustment_set_value(setting);
        } else if (type == TYPE_LEVEL_BAR) {
                level_bar_set_value(setting);
        } else if (type == TYPE_SCALE_BUTTON || type == TYPE_VOLUME_BUTTON) {
                scale_button_set_value(setting);
        }
}

void set_use_underline(char *setting)
{
        widget_type type = getsymtype(this);

        if (type == TYPE_BUTTON) {
                button_set_use_underline(setting); 
        } else if (type == TYPE_LABEL) {
                label_set_use_underline(setting);
        } else if (type == TYPE_MENU_ITEM) {
                menu_item_set_use_underline(setting);
        } else if (type == TYPE_TOOL_BUTTON) {
                tool_button_set_use_underline(setting);
        }
}

void set_width_chars(char *setting)
{
        widget_type type = getsymtype(this);

        if (type == TYPE_ENTRY) {
                entry_set_max_width_chars(setting);
        } else if (type == TYPE_LABEL) {
                label_set_width_chars(setting); 
        } else if (type == TYPE_FILE_CHOOSER_BUTTON) {
                file_chooser_button_set_width_chars(setting); 
        }

}

void set_text(char *setting)
{
        widget_type type = getsymtype(this);

        if (type == TYPE_LABEL) {
                label_set_text(setting);
        } else if (type == TYPE_ENTRY) {
                entry_set_text(setting);
        } else if (type == TYPE_PROGRESS_BAR) {
                progress_bar_set_text(setting);
        } else if (type == TYPE_TEXT_VIEW) {
                text_view_set_text(setting);
        } else if (type == TYPE_TEXT_BUFFER) {
                text_buffer_set_text(setting);
        }
}

void set_title(char *string)
{
        widget_type type = getsymtype(this);

        if (type == TYPE_WINDOW) {
                window_set_title(string);
        } else if (type == TYPE_HEADER_BAR) {
                header_bar_set_title(string);
        } else if (type == TYPE_FONT_BUTTON) {
                font_button_set_title(string);
        } else if (type == TYPE_COLOR_BUTTON) {
                color_button_set_title(string);
        } else if (type == TYPE_FILE_CHOOSER_BUTTON) {
                file_chooser_button_set_title(string);
        } else if (type == TYPE_TREE_VIEW_COLUMN) {
                tree_view_column_set_title(string);
        }
}

void set_editable(char *setting)
{
        widget_type type = getsymtype(this);

        if (type == TYPE_TEXT_VIEW) {
                text_view_set_editable(setting);
        } else if (type == TYPE_ENTRY) {
                editable_set_editable(setting);
        }
}

void set_input_purpose(char *setting)
{
        widget_type type = getsymtype(this);
        if (type == TYPE_TEXT_VIEW) {
                text_view_set_input_purpose(setting);
        } else if (type == TYPE_ENTRY) {
                entry_set_input_purpose(setting);
        }
}

void set_homogeneous(char *setting)
{
        widget_type type = getsymtype(this);
        if (type == TYPE_VBOX || type == TYPE_HBOX) {
                box_set_homogeneous(setting);
        } else if (type == TYPE_STACK) {
                stack_set_homogeneous(setting);
        } else if (type == TYPE_TOOL_ITEM) {
                tool_item_set_homogeneous(setting);
        }
}


