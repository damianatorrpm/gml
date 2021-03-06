#include "gml.h"
#include "fmtout.h"
#include "text_view.h"

void text_view_new(char *widget)
{
        this = syminst(TYPE_TEXT_VIEW, widget, widget);

        putdef("GtkWidget *", widget, "gtk_text_view_new", 0);
}

void text_view_set_text(char *setting)
{
        char *buffer = "buffer";
        char *widget = wrptype("GTK_TEXT_VIEW", this);
        
        putdef("GtkTextBuffer *", buffer, "gtk_text_view_get_buffer", 1, widget);
        putfun("gtk_text_buffer_set_text", 3, buffer, setting, "-1");
        
        free(widget);
        free(setting);
}

void text_view_set_buffer(char *setting)
{
        char *widget = wrptype("GTK_TEXT_VIEW", this);
        char *buffer = wrptype("GTK_TEXT_BUFFER", setting);

        putfun("gtk_text_view_set_buffer", 2, widget, buffer);

        free(widget);
        free(buffer);
        free(setting);
}

void text_view_set_border_window_size(char *type, char *size)
{
        char *widget = wrptype("GTK_TEXT_VIEW", this);

        putfun("gtk_text_view_set_border_window_size", 3, widget, type, size);

        free(widget);
        free(type);
        free(size);
}

void text_view_set_wrap_mode(char *setting)
{
        char *widget = wrptype("GTK_TEXT_VIEW", this);

        putfun("gtk_text_view_set_wrap_mode", 2, widget, setting);

        free(widget);
        free(setting);
}

void text_view_set_editable(char *setting)
{
        char *widget = wrptype("GTK_TEXT_VIEW", this);

        putfun("gtk_text_view_set_editable", 2, widget, setting);

        free(widget);
        free(setting);
}

void text_view_set_cursor_visible(char *setting)
{
        char *widget = wrptype("GTK_TEXT_VIEW", this);

        putfun("gtk_text_view_set_cursor_visible", 2, widget, setting);

        free(widget);
        free(setting);
}

void text_view_set_overwrite(char *setting)
{
        char *widget = wrptype("GTK_TEXT_VIEW", this);

        putfun("gtk_text_view_set_overwrite", 2, widget, setting);

        free(widget);
        free(setting);
}

void text_view_set_pixels_above_lines(char *setting)
{
        char *widget = wrptype("GTK_TEXT_VIEW", this);

        putfun("gtk_text_view_set_pixels_above_lines", 2, widget, setting);

        free(widget);
        free(setting);
}

void text_view_set_pixels_below_lines(char *setting)
{
        char *widget = wrptype("GTK_TEXT_VIEW", this);

        putfun("gtk_text_view_set_pixels_below_lines", 2, widget, setting);

        free(widget);
        free(setting);
}

void text_view_set_pixels_inside_wrap(char *setting)
{
        char *widget = wrptype("GTK_TEXT_VIEW", this);

        putfun("gtk_text_view_set_pixels_inside_wrap", 2, widget, setting);

        free(widget);
        free(setting);
}

void text_view_set_justification(char *setting)
{
        char *widget = wrptype("GTK_TEXT_VIEW", this);

        putfun("gtk_text_view_set_justification", 2, widget, setting);

        free(widget);
        free(setting);
}

void text_view_set_left_margin(char *setting)
{
        char *widget = wrptype("GTK_TEXT_VIEW", this);

        putfun("gtk_text_view_set_left_margin", 2, widget, setting);

        free(widget);
        free(setting);
}

void text_view_set_right_margin(char *setting)
{
        char *widget = wrptype("GTK_TEXT_VIEW", this);

        putfun("gtk_text_view_set_right_margin", 2, widget, setting);

        free(widget);
        free(setting);
}

void text_view_set_indent(char *setting)
{
        char *widget = wrptype("GTK_TEXT_VIEW", this);

        putfun("gtk_text_view_set_indent", 2, widget, setting);

        free(widget);
        free(setting);
}

void text_view_set_accepts_tab(char *setting)
{
        char *widget = wrptype("GTK_TEXT_VIEW", this);
        
        putfun("gtk_text_view_set_accepts_tab", 2, widget, setting);

        free(widget);
        free(setting);
}

void text_view_set_input_purpose(char *setting)
{
        char *widget = wrptype("GTK_TEXT_VIEW", this);

        putfun("gtk_text_view_set_input_purpose", 2, widget, setting);

        free(widget);
        free(setting);
}

void text_view_set_input_hints(char *setting)
{
        char *widget = wrptype("GTK_TEXT_VIEW", this);

        putfun("gtk_text_view_set_input_hints", 2, widget, setting);

        free(widget);
        free(setting);
}
