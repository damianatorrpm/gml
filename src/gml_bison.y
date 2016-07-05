%{
#include<string.h>
#include"gml.h"
#include"widgets/shared.h"
#include"widgets/widget.h"
#include"widgets/window.h"
#include"widgets/entry.h"
#include"widgets/box.h"
#include"widgets/button.h"
#include"widgets/header_bar.h"
#include"widgets/scrolled_window.h"
#include"widgets/adjustment.h"
#include"widgets/text_view.h"

#define YYERROR_VERBOSE 1

void yyerror(const char *str)
{
        fprintf(stderr, "%s\n", str);
        exit(1);
}

int yywrap()
{
        return 1;
}

int yylex();
%}

%token INCLUDE 
%token SET ADD SIGNAL PACK COMMON
%token IDENTIFIER STRING NUMBER SEMICOLON FLOAT CHAR
%token HBOX VBOX BUTTON BUTTONBOX WINDOW 

%token SKIP_PAGER 

%token EDITABLE INPUT_PURPOSE 

%token DECORATED DEFAULT_GEOMETRY HIDE_TITLEBAR_WHEN_MAXIMIZED KEEP_ABOVE 
%token KEEP_BELOW STARTUP_ID ROLE ICON_NAME MNEMONICS_VISIBLE FOCUS_VISIBLE 
%token SKIP_TASKBAR_HINT SKIP_PAGER_HINT URGENCY_HINT GRAVITY TYPE_HINT 
%token POSITION MODAL FOCUS_ON_MAP SKIP_TASKBAR DESTROY_WITH_PARENT TITLEBAR

%token ACCEPT_FOCUS URGENT DELETABLE RESIZABLE DEFAULT_SIZE TITLE 

%token SPACING BASELINE HOMOGENEOUS PADDING FILL EXPAND PACK_TYPE CENTER

%token ENTRY ALIGNMENT MAX_LENGTH WIDTH_CHARS PLACEHOLDER_TEXT TEXT
%token ACTIVATES_DEFAULT OVERWRITE_MODE HAS_FRAME VISIBILITY_CHAR VISIBILITY

%token SIZE_REQUEST MARGIN_BOTTOM MARGIN_TOP MARGIN_END MARGIN_START VALIGN 
%token HALIGN VEXPAND_SET VEXPAND HEXPAND_SET HEXPAND RECEIVES_DEFAULT
%token SENSITIVE NO_SHOW_ALL APP_PAINTABLE CAN_DEFAULT CAN_FOCUS VISIBLE 
%token OPACITY TOOLTIP_MARKUP HAS_TOOLTIP TOOLTIP_TEXT NAME 

%token RELIEF LABEL USE_UNDERLINE FOCUS_ON_CLICK IMAGE IMAGE_POSITION
%token ALWAYS_SHOW_IMAGE 

%token HEADER_BAR HEADER_BAR_TITLE SUBTITLE HAS_SUBTITLE CUSTOM_TITLE 
%token SHOW_CLOSE_BUTTON DECORATION_LAYOUT PACK_START PACK_END 

%token SCROLLED_WINDOW POLICY PLACEMENT SHADOW_TYPE HADJUSTMENT VADJUSTMENT 
%token MIN_CONTENT_WIDTH MIN_CONTENT_HEIGHT KINETIC_SCROLLING 
%token CAPTURE_BUTTON_PRESS OVERLAY_SCROLLING

%token ADJUSTMENT VALUE CLAMP_PAGE CONFIGURE LOWER PAGE_INCREMENT PAGE_SIZE 
%token STEP_INCREMENT UPPER

%token TEXT_VIEW BORDER_WINDOW_SIZE WRAP_MODE CURSOR_VISIBLE OVERWRITE 
%token PIXELS_ABOVE_LINES PIXELS_BELOW_LINES PIXELS_INSIDE_WRAP JUSTIFICATION 
%token LEFT_MARGIN RIGHT_MARGIN INDENT ACCEPTS_TAB INPUT_HINTS 
 
%union
{
        int   int_val;
        char  char_val;
        char  *string;
        float float_val;
}

%type <string>    IDENTIFIER STRING  
%type <int_val>   NUMBER
%type <char_val>  CHAR
%type <float_val> FLOAT

%%
commands: 
        | commands command
        ;

command:
          window
        | button
        | button_box
        | vbox
        | hbox
        | entry
        | header_bar
        | scrolled_window
        | adjustment
        | text_view
        ;

commons:
        | commons common
        ;

common:
          widget_set_size_request
        | widget_set_margin_bottom
        | widget_set_margin_top
        | widget_set_margin_end
        | widget_set_margin_start
        | widget_set_valign
        | widget_set_halign
        | widget_set_vexpand_set
        | widget_set_vexpand
        | widget_set_hexpand_set
        | widget_set_hexpand
        | widget_set_receives_default
        | widget_set_sensitive
        | widget_set_no_show_all
        | widget_set_app_paintable
        | widget_set_can_default
        | widget_set_can_focus
        | widget_set_visible
        | widget_set_opacity
        | widget_set_tooltip_markup
        | widget_set_has_tootip
        | widget_set_tooltip_text
        | widget_set_name
        ;

widget_set_size_request:
        COMMON SIZE_REQUEST NUMBER NUMBER
        {
                widget_set_size_request(yyout, $3, $4);
        }
        ;

widget_set_margin_bottom:
        COMMON MARGIN_BOTTOM NUMBER
        {
                widget_set_margin_bottom(yyout, $3);
        }
        ;

widget_set_margin_top:
        COMMON MARGIN_TOP NUMBER
        {
                widget_set_margin_top(yyout, $3);
        }
        ;

widget_set_margin_end:
        COMMON MARGIN_END NUMBER
        {
                widget_set_margin_end(yyout, $3);
        }
        ;

widget_set_margin_start:
        COMMON MARGIN_START NUMBER
        {
                widget_set_margin_start(yyout, $3);
        }
        ;

widget_set_valign:
        COMMON VALIGN IDENTIFIER
        {
                widget_set_valign(yyout, $3);
        }
        ;

widget_set_halign:
        COMMON HALIGN IDENTIFIER
        {
                widget_set_halign(yyout, $3);
        }
        ;

widget_set_vexpand_set:
        COMMON VEXPAND_SET IDENTIFIER
        {
                widget_set_vexpand_set(yyout, $3);
        }
        ;

widget_set_vexpand:
        COMMON VEXPAND IDENTIFIER
        {
                widget_set_vexpand(yyout, $3);
        }
        ;

widget_set_hexpand_set:
        COMMON HEXPAND_SET IDENTIFIER
        {
                widget_set_hexpand_set(yyout, $3);
        }
        ;

widget_set_hexpand:
        COMMON HEXPAND IDENTIFIER
        {
                widget_set_hexpand(yyout, $3);
        }
        ;

widget_set_receives_default:
        COMMON RECEIVES_DEFAULT IDENTIFIER
        {
                widget_set_receives_default(yyout, $3);
        }
        ;

widget_set_sensitive:
        COMMON SENSITIVE IDENTIFIER
        {
                widget_set_sensitive(yyout, $3);
        }
        ;

widget_set_no_show_all:
        COMMON NO_SHOW_ALL IDENTIFIER
        {
                widget_set_no_show_all(yyout, $3);
        }
        ;

widget_set_app_paintable:
        COMMON APP_PAINTABLE IDENTIFIER
        {
                widget_set_app_paintable(yyout, $3);
        }
        ;

widget_set_can_default:
        COMMON CAN_DEFAULT IDENTIFIER
        {
                widget_set_can_default(yyout, $3);
        }
        ;

widget_set_can_focus:
        COMMON CAN_FOCUS IDENTIFIER
        {
                widget_set_can_focus(yyout, $3);
        }
        ;

widget_set_visible:
        COMMON VISIBLE IDENTIFIER
        {
                widget_set_visible(yyout, $3);
        }
        ;

widget_set_opacity:
        COMMON OPACITY FLOAT
        {
                widget_set_opacity(yyout, $3);
        }
        ;

widget_set_tooltip_markup:
        COMMON TOOLTIP_MARKUP STRING
        {
                widget_set_tooltip_markup(yyout, $3);
        }
        ;

widget_set_has_tootip:
        COMMON HAS_TOOLTIP IDENTIFIER
        {
                widget_set_has_tootip(yyout, $3);
        }
        ;

widget_set_tooltip_text:
        COMMON TOOLTIP_TEXT STRING
        {
                widget_set_tooltip_text(yyout, $3);
        }
        ;

widget_set_name:
        COMMON NAME STRING
        {
                widget_set_name(yyout, $3);
        }
        ;

signals:
        | signals signal 
        ;
        
signal:
        SIGNAL STRING IDENTIFIER IDENTIFIER
        {
                signal_connect(yyout, $2, $3, $4);
        }
        | SIGNAL STRING IDENTIFIER
        {
                signal_connect(yyout, $2, $3, "NULL");
        }
        ;

adds:
        | adds add
        ;

add:
        ADD IDENTIFIER 
        {
                container_add(yyout, $2);
        }
        ;

hb_packs:
        | hb_packs hb_pack
        ;

hb_pack:
        ADD PACK_START IDENTIFIER
        {
                header_bar_pack_start(yyout, $3);
        }
        |
        ADD PACK_END IDENTIFIER
        {
                header_bar_pack_end(yyout, $3);
        }
        ;

text_view:
        TEXT_VIEW IDENTIFIER
        {
                text_view_new(yyout, $2);
        } 
        commons params SEMICOLON
        {
                block_close($2);
        }
        ;

adjustment:
        ADJUSTMENT IDENTIFIER 
        {
                adjustment_new(yyout, $2);
        } params SEMICOLON
        {
                block_close($2);
        }
        ;

scrolled_window:
        SCROLLED_WINDOW IDENTIFIER
        {
                scrolled_window_new(yyout, $2);
        }
        commons params adds SEMICOLON
        {
                block_close($2);
        }
        ;      

header_bar:
        HEADER_BAR IDENTIFIER
        {
                header_bar_new(yyout, $2); 
        }
        commons params hb_packs SEMICOLON
        {
                block_close($2);
        }
        ;

entry:
        ENTRY IDENTIFIER
        {
                entry_new(yyout, $2);
        } 
        commons params SEMICOLON
        {
                block_close($2);
        }
        ;      

hbox:
        HBOX IDENTIFIER
        {
                box_horizontal_new(yyout, $2);
        }
        commons params adds packs SEMICOLON
        {
                block_close($2);
        }
        ;

vbox:
        VBOX IDENTIFIER
        {
                box_vertical_new(yyout, $2);
        }
        commons params adds packs SEMICOLON
        {
                block_close($2);
        }
        ;

button:
        BUTTON IDENTIFIER
        {
                button_new(yyout, $2);
        }
        commons params signals SEMICOLON
        {
                block_close($2);
        }
        ;

button_box:
        BUTTONBOX IDENTIFIER 
        {
                button_box_new(yyout, $2);
        }
        commons adds packs SEMICOLON
        {
                block_close($2);
        }
        ;

window:
        WINDOW IDENTIFIER
        {
                window_new(yyout, $2);
        } 
        commons params adds signals SEMICOLON 
        {
                widget_show_all(yyout, $2);
                block_close($2);
        }
        ;
packs:
        | packs pack
        ;

pack:
          set_pack_position
        | set_pack_padding
        | set_pack_fill
        | set_pack_expand
        | set_pack_type
        | set_pack_center
        ;

set_pack_center:
        PACK IDENTIFIER CENTER
        {
                box_set_center_widget(yyout, $2);
        }
        ;

set_pack_type:
        PACK IDENTIFIER PACK_TYPE IDENTIFIER
        {
                box_set_pack_type(yyout, $2, $4);
        }
        ;

set_pack_expand:
        PACK IDENTIFIER EXPAND IDENTIFIER
        {
                box_set_expand(yyout, $2, $4);
        }
        ;

set_pack_fill:
        PACK IDENTIFIER FILL IDENTIFIER
        {
                box_set_fill(yyout, $2, $4);
        }
        ;

set_pack_padding:
        PACK IDENTIFIER PADDING NUMBER
        {
                box_set_padding(yyout, $2, $4);
        }
        ;

set_pack_position:
        PACK IDENTIFIER POSITION NUMBER
        {
                box_reorder_child(yyout, $2, $4);
        }
        ;
        
params:
        | params param
        ;

param:
          set_editable
        | set_input_purpose
        | set_window_title
        | set_window_default_size
        | set_window_resizable
        | set_window_deletable
        | set_window_urgent
        | set_window_accept_focus
        | set_window_destroy_with_parent
        | set_window_skip_taskbar
        | set_window_focus_on_map
        | set_window_modal
        | set_window_skip_pager
        | set_window_position
        | set_window_type_hint
        | set_window_gravity
        | set_window_decorated
        | set_window_default_geometry
        | set_window_hide_titlebar_when_maximized
        | set_window_keep_above
        | set_window_keep_below
        | set_window_startup_id
        | set_window_role
        | set_window_icon_name
        | set_window_mnemonics_visible
        | set_window_focus_visible
        | set_window_skip_taskbar_hint
        | set_window_skip_pager_hint
        | set_window_urgency_hint
        | set_window_titlebar
        | set_box_spacing
        | set_box_baseline
        | set_box_homogeneous
        | set_entry_max_length
        /*
         *| set_entry_input_purpose
         */
        | set_entry_width_chars
        | set_entry_alignment
        | set_entry_placeholder_text
        | set_entry_text
        | set_entry_activates_default
        /*
         *| set_editable
         */
        | set_entry_overwrite_mode
        | set_entry_has_frame
        /*
         * | set_entry_invisible_char
         */
        | set_entry_visibility
        | set_button_relief
        | set_button_label
        | set_button_use_underline
        | set_button_focus_on_click
        | set_button_image
        | set_button_image_position
        | set_button_always_show_image
        | set_header_bar_title
        | set_header_bar_subtitle
        | set_header_bar_has_subtitle
        | set_header_bar_custom_title
        | set_header_bar_show_close_button
        | set_header_bar_decoration_layout
        | set_scrolled_window_policy
        | set_scrolled_window_placement
        | set_scrolled_window_shadow_type
        | set_scrolled_window_hadjustment
        | set_scrolled_window_vadjustment
        | set_scrolled_window_min_content_width 
        | set_scrolled_window_min_content_height
        | set_scrolled_window_kinetic_scrolling
        | set_scrolled_window_capture_button_press
        | set_scrolled_window_overlay_scrolling
        | set_adjustment_value
        | set_adjustment_clamp_page
        | set_adjustment_configure
        | set_adjustment_lower
        | set_adjustment_page_increment
        | set_adjustment_page_size
        | set_adjustment_step_increment
        | set_adjustment_upper
        | set_text_view_border_window_size
        | set_text_view_wrap_mode
        /*
         *| set_text_view_editable
         */
        | set_text_view_cursor_visible
        | set_text_view_overwrite
        | set_text_view_pixels_above_lines
        | set_text_view_pixels_below_lines
        | set_text_view_pixels_inside_wrap
        | set_text_view_justification
        | set_text_view_left_margin
        | set_text_view_right_margin
        | set_text_view_indent
        | set_text_view_accepts_tab
        /*
         *| set_text_view_input_purpose
         */
        | set_text_view_input_hints
        ;

set_text_view_border_window_size:
        SET BORDER_WINDOW_SIZE IDENTIFIER NUMBER
        {
                text_view_set_border_window_size(yyout, $3, $4);
        }
        ;

set_text_view_wrap_mode:
        SET WRAP_MODE IDENTIFIER
        {
                text_view_set_wrap_mode(yyout, $3);
        }
        ;

/*
 *set_text_view_editable:
 *        SET EDITABLE IDENTIFIER
 *        {
 *                text_view_set_editable(yyout, $3);
 *        }
 *        ;
 */

set_text_view_cursor_visible:
        SET CURSOR_VISIBLE IDENTIFIER
        {
                text_view_set_cursor_visible(yyout, $3);
        }
        ;

set_text_view_overwrite:
        SET OVERWRITE IDENTIFIER
        {
                text_view_set_overwrite(yyout, $3);
        }
        ;

set_text_view_pixels_above_lines:
        SET PIXELS_ABOVE_LINES NUMBER
        {
                text_view_set_pixels_above_lines(yyout, $3);
        }
        ;

set_text_view_pixels_below_lines:
        SET PIXELS_BELOW_LINES NUMBER
        {
                text_view_set_pixels_below_lines(yyout, $3);
        }
        ;

set_text_view_pixels_inside_wrap:
        SET PIXELS_INSIDE_WRAP NUMBER
        {
                text_view_set_pixels_inside_wrap(yyout, $3);
        }
        ;

set_text_view_justification:
        SET JUSTIFICATION IDENTIFIER
        {
                text_view_set_justification(yyout, $3);
        }
        ;

set_text_view_left_margin:
        SET LEFT_MARGIN NUMBER
        {
                text_view_set_left_margin(yyout, $3);
        }
        ;

set_text_view_right_margin:
        SET RIGHT_MARGIN NUMBER
        {
                text_view_set_right_margin(yyout, $3);
        }
        ;

set_text_view_indent:
        SET INDENT NUMBER
        {
                text_view_set_indent(yyout, $3);
        }
        ;

set_text_view_accepts_tab:
        SET ACCEPTS_TAB IDENTIFIER
        {
                text_view_set_accepts_tab(yyout, $3);
        }
        ;

/*
 *set_text_view_input_purpose:
 *        SET INPUT_PURPOSE IDENTIFIER
 *        {
 *                text_view_set_input_purpose(yyout, $3);
 *        }
 *        ;
 */

set_text_view_input_hints:
        SET INPUT_HINTS IDENTIFIER
        {
                text_view_set_input_hints(yyout, $3);
        }
        ;

set_adjustment_value:
        SET VALUE FLOAT 
        {
                adjustment_set_value(yyout, $3);
        }
        ;

set_adjustment_clamp_page:
        SET CLAMP_PAGE FLOAT FLOAT
        {
                adjustment_clamp_page(yyout, $3, $4);
        }
        ;

set_adjustment_configure:
        SET CONFIGURE FLOAT FLOAT FLOAT FLOAT FLOAT FLOAT
        {
                adjustment_configure(yyout, $3, $4, $5, $6, $7, $8);
        }
        ;

set_adjustment_lower:
        SET LOWER FLOAT
        {
                adjustment_set_lower(yyout, $3);
        }
        ;

set_adjustment_page_increment:
        SET PAGE_INCREMENT FLOAT
        {
                adjustment_set_page_increment(yyout, $3);
        }
        ;

set_adjustment_page_size:
        SET PAGE_SIZE FLOAT
        {
                adjustment_set_page_size(yyout, $3);
        }
        ;

set_adjustment_step_increment:
        SET STEP_INCREMENT FLOAT
        {
                adjustment_set_step_increment(yyout, $3);
        }
        ;

set_adjustment_upper:
        SET UPPER FLOAT
        {
                adjustment_set_upper(yyout, $3);
        }
        ;

set_scrolled_window_policy:
        SET POLICY IDENTIFIER IDENTIFIER 
        {
                scrolled_window_set_policy(yyout, $3, $4);
        }
        ;

set_scrolled_window_placement:
        SET PLACEMENT IDENTIFIER
        {
                scrolled_window_set_placement(yyout, $3);
        }
        ;

set_scrolled_window_shadow_type:
        SET SHADOW_TYPE IDENTIFIER
        {
                scrolled_window_set_shadow_type(yyout, $3);
        }
        ;

set_scrolled_window_hadjustment:
        SET HADJUSTMENT IDENTIFIER
        {
                scrolled_window_set_hadjustment(yyout, $3);
        }
        ;

set_scrolled_window_vadjustment:
        SET VADJUSTMENT IDENTIFIER
        {
                scrolled_window_set_vadjustment(yyout, $3);
        }
        ;

set_scrolled_window_min_content_width:
        SET MIN_CONTENT_WIDTH NUMBER
        {
                scrolled_window_set_min_content_width(yyout, $3);
        }
        ;

set_scrolled_window_min_content_height:
        SET MIN_CONTENT_HEIGHT NUMBER
        {
                scrolled_window_set_min_content_height(yyout, $3);
        }
        ;

set_scrolled_window_kinetic_scrolling:
        SET KINETIC_SCROLLING IDENTIFIER
        {
                scrolled_window_set_kinetic_scrolling(yyout, $3);
        }
        ;

set_scrolled_window_capture_button_press:
        SET CAPTURE_BUTTON_PRESS IDENTIFIER
        {
                scrolled_window_set_capture_button_press(yyout, $3);
        }
        ;

set_scrolled_window_overlay_scrolling:
        SET OVERLAY_SCROLLING IDENTIFIER
        {
                scrolled_window_set_overlay_scrolling(yyout, $3);
        }
        ;
 
set_header_bar_title:
        SET HEADER_BAR_TITLE STRING 
        {
                header_bar_set_title(yyout, $3);
        }
        ;

set_header_bar_subtitle:
        SET SUBTITLE STRING 
        {
                header_bar_set_subtitle(yyout, $3);
        }
        ;

set_header_bar_has_subtitle:
        SET HAS_SUBTITLE IDENTIFIER
        {
                header_bar_set_has_subtitle(yyout, $3);
        }
        ;

set_header_bar_custom_title:
        SET CUSTOM_TITLE IDENTIFIER
        {
                header_bar_set_custom_title(yyout, $3);
        }
        ;

set_header_bar_show_close_button:
        SET SHOW_CLOSE_BUTTON IDENTIFIER
        {
                header_bar_set_show_close_button(yyout, $3);
        }
        ;

set_header_bar_decoration_layout:
        SET DECORATION_LAYOUT STRING
        {
                header_bar_set_decoration_layout(yyout, $3);
        }
        ;

set_button_relief:
        SET RELIEF IDENTIFIER
        {
                button_set_relief(yyout, $3);
        }
        ;

set_button_label:
        SET LABEL STRING
        {
                button_set_label(yyout, $3);
        }
        ;

set_button_use_underline:
        SET USE_UNDERLINE IDENTIFIER
        {
                button_set_use_underline(yyout, $3);
        }
        ;

set_button_focus_on_click:
        SET FOCUS_ON_CLICK IDENTIFIER
        {
                button_set_focus_on_click(yyout, $3);
        }
        ;

set_button_image:
        SET IMAGE IDENTIFIER
        {
                button_set_image(yyout, $3);
        }
        ;

set_button_image_position:
        SET IMAGE_POSITION IDENTIFIER
        {
                button_set_image_position(yyout, $3);
        }
        ;

set_button_always_show_image:
        SET ALWAYS_SHOW_IMAGE IDENTIFIER
        {
                button_set_always_show_image(yyout, $3);
        }
        ;

set_entry_placeholder_text:
        SET PLACEHOLDER_TEXT STRING
        {
                entry_set_placeholder_text(yyout, $3);
        }
        ;

set_entry_text:
        SET TEXT STRING
        {
                entry_set_text(yyout, $3);
        }
        ;

set_entry_activates_default:
        SET ACTIVATES_DEFAULT IDENTIFIER
        {
                entry_set_activates_default(yyout, $3);
        }
        ;

set_editable:
        SET EDITABLE IDENTIFIER
        {
                set_editable(yyout, $3);
        }
        ;

set_entry_overwrite_mode:
        SET OVERWRITE_MODE IDENTIFIER
        {
                entry_set_overwrite_mode(yyout, $3);
        }
        ;

set_entry_has_frame:
        SET HAS_FRAME IDENTIFIER
        {
                entry_set_has_frame(yyout, $3);
        }
        ;

/*
 * set_entry_invisible_char:
 *         SET VISIBILITY_CHAR STRING 
 *         {
 *                 entry_set_invisible_char(yyout, $3);
 *         }
 *         ;
 */

set_entry_visibility:
        SET VISIBILITY IDENTIFIER
        {
                entry_set_visibility(yyout, $3);    
        }
        ;

set_entry_alignment:
        SET ALIGNMENT FLOAT
        {
                entry_set_alignment(yyout, $3);
        }
        ;

set_entry_width_chars:
        SET WIDTH_CHARS NUMBER
        {
                entry_set_max_width_chars(yyout, $3);
        }
        ;

set_input_purpose:
        SET INPUT_PURPOSE IDENTIFIER
        {
                set_input_purpose(yyout, $3);
        }
        ;

set_entry_max_length:
        SET MAX_LENGTH NUMBER
        {
                entry_set_max_length(yyout, $3);
        }
        ;

set_box_homogeneous:
        SET HOMOGENEOUS IDENTIFIER
        {
                box_set_homogeneus(yyout, $3);
        }
        ;

set_box_baseline:
        SET BASELINE IDENTIFIER
        {
                box_set_baseline_position(yyout, $3);
        }
        ;

set_box_spacing:
        SET SPACING NUMBER
        {
                box_set_spacing(yyout, $3);
        }
        ;

set_window_titlebar:
        SET TITLEBAR IDENTIFIER
        {
                window_set_titlebar(yyout, $3);
        }
        ;

set_window_decorated:
        SET DECORATED IDENTIFIER
        {
                window_set_decorated(yyout, $3);
        }
        ;

set_window_default_geometry:
        SET DEFAULT_GEOMETRY NUMBER NUMBER
        {
                window_set_default_geometry(yyout, $3, $4);
        }
        ;

set_window_hide_titlebar_when_maximized:
        SET HIDE_TITLEBAR_WHEN_MAXIMIZED IDENTIFIER
        {
                window_set_hide_titlebar_when_maximized(yyout, $3);
        }
        ;

set_window_keep_above:
        SET KEEP_ABOVE IDENTIFIER
        {
                window_set_keep_above(yyout, $3);
        }
        ;

set_window_keep_below:
        SET KEEP_BELOW IDENTIFIER
        {
                window_set_keep_below(yyout, $3);
        }
        ;

set_window_startup_id:
        SET STARTUP_ID STRING
        {
                window_set_startup_id(yyout, $3);
        }
        ;

set_window_role:
        SET ROLE STRING
        {
                window_set_role(yyout, $3);
        }
        ;

set_window_icon_name:
        SET ICON_NAME STRING
        {
                window_set_icon_name(yyout, $3);
        }
        ;

set_window_mnemonics_visible:
        SET MNEMONICS_VISIBLE IDENTIFIER
        {
                window_set_mnemonics_visible(yyout, $3);
        }
        ;

set_window_focus_visible:
        SET FOCUS_VISIBLE IDENTIFIER
        {
                window_set_focus_visible(yyout, $3);
        }
        ;

set_window_skip_taskbar_hint:
        SET SKIP_TASKBAR_HINT IDENTIFIER
        {
                window_set_skip_taskbar_hint(yyout, $3);
        }
        ;

set_window_skip_pager_hint:
        SET SKIP_PAGER_HINT IDENTIFIER
        {
                window_set_skip_pager_hint(yyout, $3);
        }
        ;

set_window_urgency_hint:
        SET URGENCY_HINT IDENTIFIER
        {
                window_set_urgency_hint(yyout, $3);
        }
        ;

set_window_gravity:
        SET GRAVITY IDENTIFIER
        {
                window_set_gravity(yyout, $3);
        }
        ;


set_window_type_hint:
        SET TYPE_HINT IDENTIFIER
        {
                window_set_type_hint(yyout, $3);
        }
        ;

set_window_position:
        SET POSITION IDENTIFIER
        {
                window_set_position(yyout, $3);
        }
        ;

set_window_skip_pager:
        SET SKIP_PAGER IDENTIFIER
        {
                window_set_skip_pager_hint(yyout, $3);
        }
        ;

set_window_modal:
        SET MODAL IDENTIFIER
        {
                window_set_modal(yyout, $3);
        }
        ;

set_window_focus_on_map:
        SET FOCUS_ON_MAP IDENTIFIER
        {
                window_set_focus_on_map(yyout, $3);
        }
        ; 

set_window_skip_taskbar:
        SET SKIP_TASKBAR IDENTIFIER
        {
                window_set_skip_taskbar_hint(yyout, $3);
        }
        ;

set_window_destroy_with_parent:
        SET DESTROY_WITH_PARENT IDENTIFIER
        {
                window_set_destroy_with_parent(yyout, $3);
        }
        ;

set_window_accept_focus:
        SET ACCEPT_FOCUS IDENTIFIER
        {
                window_set_accept_focus(yyout, $3);
        }
        ;

set_window_urgent:
        SET URGENT IDENTIFIER
        {
                window_set_urgency_hint(yyout, $3);
        }
        ;

set_window_deletable:
        SET DELETABLE IDENTIFIER
        {
                window_set_deletable(yyout, $3);
        }
        ;

set_window_resizable:
        SET RESIZABLE IDENTIFIER
        {
                window_set_resizable(yyout, $3);
        }
        ;

set_window_default_size:
        SET DEFAULT_SIZE NUMBER NUMBER
        {
                window_set_default_size(yyout, $3, $4);
        }
        ;

set_window_title:
        SET TITLE STRING 
        {
                window_set_title(yyout, $3);
        }
        ;

%%

