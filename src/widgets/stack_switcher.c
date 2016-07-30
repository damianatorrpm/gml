#include "gml.h"
#include "fmtout.h"
#include "stack_switcher.h"

void stack_switcher_new(char *widget)
{
        syminst(TYPE_STACK_SWITCHER, widget, widget);
        syminst(TYPE_STACK_SWITCHER, "this", widget);

        putdef("GtkWidget *", widget, "gtk_stack_switcher_new", 0);
}

void stack_switcher_set_stack(char *setting)
{
        char *widget = wrptype("GTK_STACK_SWITCHER", getsymval("this"));
        
        putfun("gtk_stack_switcher_set_stack"
              ,2
              ,widget
              ,wrptype("GTK_STACK", setting));
}
