#include "gml.h"
#include "fmtout.h"
#include "header_bar.h"

void header_bar_new(char *widget) 
{
        syminst(TYPE_HEADER_BAR, widget, widget);
        syminst(TYPE_HEADER_BAR, "this", widget);

        putdef("GtkWidget *", widget, "gtk_header_bar_new", 0);
}

void header_bar_set_title(char *string)
{
        char *widget = wrptype("GTK_HEADER_BAR", getsymval("this"));

        putfun("gtk_header_bar_set_title", 2, widget, string);
}
 
void header_bar_set_subtitle(char *string)
{
        char *widget = wrptype("GTK_HEADER_BAR", getsymval("this"));

        putfun("gtk_header_bar_set_subtitle", 2, widget, string);
}
 
void header_bar_set_has_subtitle(char *setting)
{
        char *widget = wrptype("GTK_HEADER_BAR", getsymval("this"));

        putfun("gtk_header_bar_set_has_subtitle", 2, widget, setting);
}

void header_bar_set_custom_title(char *title_widget)
{
        char *widget = wrptype("GTK_HEADER_BAR", getsymval("this"));

        putfun("gtk_header_bar_set_custom_title", 2, widget, title_widget);
}

void header_bar_pack_start(char *child)
{
        char *widget = wrptype("GTK_HEADER_BAR", getsymval("this"));

        putfun("gtk_header_bar_pack_start", 2, widget, child);
}

void header_bar_pack_end(char *child)
{
        char *widget = wrptype("GTK_HEADER_BAR", getsymval("this"));

        putfun("gtk_header_bar_pack_end", 2, widget, child);
}

void header_bar_set_show_close_button(char *setting)
{
        char *widget = wrptype("GTK_HEADER_BAR", getsymval("this"));
        putfun("gtk_header_bar_set_show_close_button", 2, widget, setting);
}

void header_bar_set_decoration_layout(char *string)
{
        char *widget = wrptype("GTK_HEADER_BAR", getsymval("this"));

        putfun("gtk_header_bar_set_decoration_layout", 2, widget, string);
}
