DIGIT     [0-9]
LITERAL   [a-zA-Z_]
ID        [a-zA-Z0-9_]

%{
#include<stdio.h>
#include"gml_bison.h"

void comment();
%}

%%

"/*"                  comment();
{DIGIT}+              yylval.int_val=atoi(yytext);    return NUMBER; 
{DIGIT}+\.{DIGIT}+    yylval.float_val=atof(yytext);  return FLOAT;
ENTRY                 return ENTRY;
HBOX                  return HBOX;
VBOX                  return VBOX;
BUTTON                return BUTTON;
BUTTONBOX             return BUTTONBOX;
WINDOW                return WINDOW;
SET                   return SET;
ADD                   return ADD;
SIGNAL                return SIGNAL;
PACK                  return PACK;
CMN                   return COMMON;

Decorated             return DECORATED;
Default_geometry      return DEFAULT_GEOMETRY;
Hide_titlebar_when_maximized return HIDE_TITLEBAR_WHEN_MAXIMIZED;
Keep_above            return KEEP_ABOVE;
Keep_below            return KEEP_BELOW; 
Startup_id            return STARTUP_ID;
Role                  return ROLE;
Icon_name             return ICON_NAME;
Mnemonics_visible     return MNEMONICS_VISIBLE;
Focus_visible         return FOCUS_VISIBLE;
Skip_taskbar_hint     return SKIP_TASKBAR_HINT; 
Skip_pager_hint       return SKIP_PAGER_HINT;
Urgency_hin           return URGENCY_HINT;
Gravity               return GRAVITY;
Type_hint             return TYPE_HINT;
Position              return POSITION;
Skip_pager            return SKIP_PAGER;
Modal                 return MODAL;
Focus_on_map          return FOCUS_ON_MAP;
Skip_taskbar          return SKIP_TASKBAR;
Destroy_with_parent   return DESTROY_WITH_PARENT;

Title                 return TITLE;
Default_size          return DEFAULT_SIZE;
Resizable             return RESIZABLE;
Deletable             return DELETABLE;
Urgent                return URGENT;
Accept_focus          return ACCEPT_FOCUS;

Spacing               return SPACING;
Baseline              return BASELINE;
Homogeneous           return HOMOGENEOUS;
Padding               return PADDING;
Fill                  return FILL;
Expand                return EXPAND;
Pack_type             return PACK_TYPE;
Center                return CENTER;

Max_length            return MAX_LENGTH;
Input_purpose         return INPUT_PURPOSE;
Width_chars           return WIDTH_CHARS;
Alignment             return ALIGNMENT;
Placeholder_text      return PLACEHOLDER_TEXT;
Text                  return TEXT;
Activates_defalut     return ACTIVATES_DEFAULT;
Editable              return EDITABLE;
Overwrite_mode        return OVERWRITE_MODE;
Has_frame             return HAS_FRAME;
Visibility_char       return VISIBILITY_CHAR;
Visibility            return VISIBILITY;

Size_request          return SIZE_REQUEST;
Margin_bottom         return MARGIN_BOTTOM;
Margin_top            return MARGIN_TOP;
Margin_end            return MARGIN_END;
Margin_start          return MARGIN_START;
Valign                return VALIGN;
Halign                return HALIGN;
Vexpand_set           return VEXPAND_SET;
Vexpand               return VEXPAND;
Hexpand_set           return HEXPAND_SET;
Hexpand               return HEXPAND;
Receives_default      return RECEIVES_DEFAULT;
Sensitive             return SENSITIVE;
No_show_all           return NO_SHOW_ALL;
App_paintable         return APP_PAINTABLE;
Can_default           return CAN_DEFAULT;
Can_focus             return CAN_FOCUS;
Visible               return VISIBLE;
Opacity               return OPACITY;
Tooltip_markup        return TOOLTIP_MARKUP;
Has_tooltip           return HAS_TOOLTIP;
Tooltip_text          return TOOLTIP_TEXT;
Name                  return NAME;

Relief                return RELIEF;
Label                 return LABEL; 
Use_underline         return USE_UNDERLINE;
Focus_on_click        return FOCUS_ON_CLICK;
Image                 return IMAGE;
Image_position        return IMAGE_POSITION;
Always_show_image     return ALWAYS_SHOW_IMAGE;

\"(\\.|[^\\"])*\"     yylval.string=strdup(yytext); return STRING;  
{ID}+                 yylval.string=strdup(yytext); return IDENTIFIER;
;                     return SEMICOLON;
\n                    ;
[ \t]+                ;
.                     fprintf(stderr, "Error operator: %s\n", yytext);
%%

void comment()
{
        char c, c1;

loop:
        while ((c = input()) != '*' && c != 0)
                putchar(c);

        if ((c1 = input()) != '/' && c != 0) {
                unput(c1);
                goto loop;
        }

        if (c != 0)
                putchar(c1);
  
        putchar('\n');
}