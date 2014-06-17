# Structs detected to have problems (total 95):

# _GtkScaleButtonClass (expect 6 members, found 1 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10005564,0,10004152,'5.0'); # type=GtkButtonClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkScaleButton *, gdouble)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkScaleButton *, typeid=10004156, name=button)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'button',10004156,0,@Tid,'5.0'); # type=GtkScaleButton *
# args (pos=1, type=gdouble, typeid=11598, name=value)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'value',11598,1,@Tid,'5.0'); # type=gdouble
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'value_changed',0,1,10004152,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,2,10004152,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,3,10004152,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,4,10004152,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,5,10004152,'5.0'); # type=fptr

# _GtkAdjustmentClass (expect 7 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10003273,0,10004182,'5.0'); # type=GInitiallyUnownedClass
# fptr void (*)(GtkAdjustment *) found, id=14492
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'changed',14492,1,10004182,'5.0'); # type=fptr
# fptr void (*)(GtkAdjustment *) found, id=14492
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'value_changed',14492,2,10004182,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,3,10004182,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,4,10004182,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,5,10004182,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,6,10004182,'5.0'); # type=fptr

# _GtkActivatableIface (expect 3 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'g_iface',11997,0,10004241,'5.0'); # type=GTypeInterface
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkActivatable *, GtkAction *, const gchar *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkActivatable *, typeid=10004243, name=activatable)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'activatable',10004243,0,@Tid,'5.0'); # type=GtkActivatable *
# args (pos=1, type=GtkAction *, typeid=10004244, name=action)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'action',10004244,1,@Tid,'5.0'); # type=GtkAction *
# args (pos=2, type=const gchar *, typeid=11421, name=property_name)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'property_name',11421,2,@Tid,'5.0'); # type=const gchar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'update',0,1,10004241,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkActivatable *, GtkAction *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkActivatable *, typeid=10004243, name=activatable)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'activatable',10004243,0,@Tid,'5.0'); # type=GtkActivatable *
# args (pos=1, type=GtkAction *, typeid=10004244, name=action)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'action',10004244,1,@Tid,'5.0'); # type=GtkAction *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'sync_action_properties',0,2,10004241,'5.0'); # type=fptr

# _GtkSpinButtonClass (expect 10 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10004883,0,10004293,'5.0'); # type=GtkEntryClass
# fptr gint (*)(GtkSpinButton *, gdouble *) found, id=14294
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'input',14294,1,10004293,'5.0'); # type=fptr
# fptr gint (*)(GtkSpinButton *) found, id=14295
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'output',14295,2,10004293,'5.0'); # type=fptr
# fptr void (*)(GtkSpinButton *) found, id=14296
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'value_changed',14296,3,10004293,'5.0'); # type=fptr
# fptr void (*)(GtkSpinButton *, GtkScrollType) found, id=14297
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'change_value',14297,4,10004293,'5.0'); # type=fptr
# fptr void (*)(GtkSpinButton *) found, id=14296
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'wrapped',14296,5,10004293,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,6,10004293,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,7,10004293,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,8,10004293,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,9,10004293,'5.0'); # type=fptr

# _GtkToolButtonClass (expect 7 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10005114,0,10004304,'5.0'); # type=GtkToolItemClass
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'button_type',11836,1,10004304,'5.0'); # type=GType
# fptr void (*)(GtkToolButton *) found, id=14109
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'clicked',14109,2,10004304,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,3,10004304,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,4,10004304,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,5,10004304,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,6,10004304,'5.0'); # type=fptr

# _GtkIMContextClass (expect 23 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',11867,0,10004311,'5.0'); # type=GObjectClass
# fptr void (*)(GtkIMContext *) found, id=14087
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'preedit_start',14087,1,10004311,'5.0'); # type=fptr
# fptr void (*)(GtkIMContext *) found, id=14087
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'preedit_end',14087,2,10004311,'5.0'); # type=fptr
# fptr void (*)(GtkIMContext *) found, id=14087
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'preedit_changed',14087,3,10004311,'5.0'); # type=fptr
# fptr void (*)(GtkIMContext *, const gchar *) found, id=14088
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'commit',14088,4,10004311,'5.0'); # type=fptr
# fptr gboolean (*)(GtkIMContext *) found, id=14089
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'retrieve_surrounding',14089,5,10004311,'5.0'); # type=fptr
# fptr gboolean (*)(GtkIMContext *, gint, gint) found, id=14090
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'delete_surrounding',14090,6,10004311,'5.0'); # type=fptr
# fptr void (*)(GtkIMContext *, GdkWindow *) found, id=14091
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'set_client_window',14091,7,10004311,'5.0'); # type=fptr
# fptr void (*)(GtkIMContext *, gchar **, PangoAttrList **, gint *) found, id=14092
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_preedit_string',14092,8,10004311,'5.0'); # type=fptr
# fptr gboolean (*)(GtkIMContext *, GdkEventKey *) found, id=14093
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'filter_keypress',14093,9,10004311,'5.0'); # type=fptr
# fptr void (*)(GtkIMContext *) found, id=14087
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'focus_in',14087,10,10004311,'5.0'); # type=fptr
# fptr void (*)(GtkIMContext *) found, id=14087
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'focus_out',14087,11,10004311,'5.0'); # type=fptr
# fptr void (*)(GtkIMContext *) found, id=14087
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'reset',14087,12,10004311,'5.0'); # type=fptr
# fptr void (*)(GtkIMContext *, GdkRectangle *) found, id=14094
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'set_cursor_location',14094,13,10004311,'5.0'); # type=fptr
# fptr void (*)(GtkIMContext *, gboolean) found, id=14095
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'set_use_preedit',14095,14,10004311,'5.0'); # type=fptr
# fptr void (*)(GtkIMContext *, const gchar *, gint, gint) found, id=14096
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'set_surrounding',14096,15,10004311,'5.0'); # type=fptr
# fptr gboolean (*)(GtkIMContext *, gchar **, gint *) found, id=14097
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_surrounding',14097,16,10004311,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,17,10004311,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,18,10004311,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,19,10004311,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,20,10004311,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved5',9926,21,10004311,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved6',9926,22,10004311,'5.0'); # type=fptr

# _GtkToolShellIface (expect 10 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'g_iface',11997,0,10004323,'5.0'); # type=GTypeInterface
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GtkIconSize (*)(GtkToolShell *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkToolShell *, typeid=10004325, name=shell)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'shell',10004325,0,@Tid,'5.0'); # type=GtkToolShell *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_icon_size',0,1,10004323,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GtkOrientation (*)(GtkToolShell *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkToolShell *, typeid=10004325, name=shell)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'shell',10004325,0,@Tid,'5.0'); # type=GtkToolShell *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_orientation',0,2,10004323,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GtkToolbarStyle (*)(GtkToolShell *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkToolShell *, typeid=10004325, name=shell)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'shell',10004325,0,@Tid,'5.0'); # type=GtkToolShell *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_style',0,3,10004323,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GtkReliefStyle (*)(GtkToolShell *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkToolShell *, typeid=10004325, name=shell)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'shell',10004325,0,@Tid,'5.0'); # type=GtkToolShell *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_relief_style',0,4,10004323,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkToolShell *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkToolShell *, typeid=10004325, name=shell)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'shell',10004325,0,@Tid,'5.0'); # type=GtkToolShell *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'rebuild_menu',0,5,10004323,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GtkOrientation (*)(GtkToolShell *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkToolShell *, typeid=10004325, name=shell)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'shell',10004325,0,@Tid,'5.0'); # type=GtkToolShell *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_text_orientation',0,6,10004323,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gfloat (*)(GtkToolShell *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkToolShell *, typeid=10004325, name=shell)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'shell',10004325,0,@Tid,'5.0'); # type=GtkToolShell *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_text_alignment',0,7,10004323,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'PangoEllipsizeMode (*)(GtkToolShell *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkToolShell *, typeid=10004325, name=shell)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'shell',10004325,0,@Tid,'5.0'); # type=GtkToolShell *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_ellipsize_mode',0,8,10004323,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GtkSizeGroup * (*)(GtkToolShell *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkToolShell *, typeid=10004325, name=shell)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'shell',10004325,0,@Tid,'5.0'); # type=GtkToolShell *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_text_size_group',0,9,10004323,'5.0'); # type=fptr

# _GtkToggleButtonClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10005564,0,10004333,'5.0'); # type=GtkButtonClass
# fptr void (*)(GtkToggleButton *) found, id=14251
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'toggled',14251,1,10004333,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,2,10004333,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,3,10004333,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,4,10004333,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,5,10004333,'5.0'); # type=fptr

# _GtkMenuShellClass (expect 15 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10006175,0,10004342,'5.0'); # type=GtkContainerClass
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'1',0,1,10004342,'5.0'); # type=guint submenu_placement :
# fptr void (*)(GtkMenuShell *) found, id=14059
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'deactivate',14059,2,10004342,'5.0'); # type=fptr
# fptr void (*)(GtkMenuShell *) found, id=14059
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'selection_done',14059,3,10004342,'5.0'); # type=fptr
# fptr void (*)(GtkMenuShell *, GtkMenuDirectionType) found, id=14062
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'move_current',14062,4,10004342,'5.0'); # type=fptr
# fptr void (*)(GtkMenuShell *, gboolean) found, id=14063
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'activate_current',14063,5,10004342,'5.0'); # type=fptr
# fptr void (*)(GtkMenuShell *) found, id=14059
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cancel',14059,6,10004342,'5.0'); # type=fptr
# fptr void (*)(GtkMenuShell *, GtkWidget *) found, id=14064
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'select_item',14064,7,10004342,'5.0'); # type=fptr
# fptr void (*)(GtkMenuShell *, GtkWidget *, gint) found, id=14065
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'insert',14065,8,10004342,'5.0'); # type=fptr
# fptr gint (*)(GtkMenuShell *) found, id=14066
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_popup_delay',14066,9,10004342,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkMenuShell *, gint)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkMenuShell *, typeid=10004344, name=menu_shell)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'menu_shell',10004344,0,@Tid,'5.0'); # type=GtkMenuShell *
# args (pos=1, type=gint, typeid=11400, name=distance)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'distance',11400,1,@Tid,'5.0'); # type=gint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'move_selected',0,10,10004342,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,11,10004342,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,12,10004342,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,13,10004342,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,14,10004342,'5.0'); # type=fptr

# _GtkRecentManagerClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',11867,0,10004365,'5.0'); # type=GObjectClass
# fptr void (*)(GtkRecentManager *) found, id=40177
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'changed',40177,1,10004365,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_recent1',9926,2,10004365,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_recent2',9926,3,10004365,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_recent3',9926,4,10004365,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_recent4',9926,5,10004365,'5.0'); # type=fptr

# _GtkRadioButtonClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10005875,0,10004402,'5.0'); # type=GtkCheckButtonClass
# fptr void (*)(GtkRadioButton *) found, id=14489
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'group_changed',14489,1,10004402,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,2,10004402,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,3,10004402,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,4,10004402,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,5,10004402,'5.0'); # type=fptr

# _GtkLinkButtonClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10005564,0,10004432,'5.0'); # type=GtkButtonClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkLinkButton *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkLinkButton *, typeid=10004434, name=button)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'button',10004434,0,@Tid,'5.0'); # type=GtkLinkButton *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'activate_link',0,1,10004432,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_padding1',9926,2,10004432,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_padding2',9926,3,10004432,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_padding3',9926,4,10004432,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_padding4',9926,5,10004432,'5.0'); # type=fptr

# _GtkRcStyle (expect 15 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_instance',11840,0,10004442,'5.0'); # type=GObject
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'name',11415,1,10004442,'5.0'); # type=gchar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'bg_pixmap_name',11415,2,10004442,'5.0'); # type=gchar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'font_desc',12451,3,10004442,'5.0'); # type=PangoFontDescription *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'color_flags',0,4,10004442,'5.0'); # type=GtkRcFlags
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'fg',0,5,10004442,'5.0'); # type=GdkColor  
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'bg',0,6,10004442,'5.0'); # type=GdkColor  
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'text',0,7,10004442,'5.0'); # type=GdkColor  
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'base',0,8,10004442,'5.0'); # type=GdkColor  
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'xthickness',11400,9,10004442,'5.0'); # type=gint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'ythickness',11400,10,10004442,'5.0'); # type=gint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'rc_properties',11646,11,10004442,'5.0'); # type=GArray *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'rc_style_lists',11452,12,10004442,'5.0'); # type=GSList *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'icon_factories',11452,13,10004442,'5.0'); # type=GSList *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'1',0,14,10004442,'5.0'); # type=guint engine_specified :

# _GtkRangeClass (expect 12 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10004828,0,10004469,'5.0'); # type=GtkWidgetClass
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'slider_detail',11415,1,10004469,'5.0'); # type=gchar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'stepper_detail',11415,2,10004469,'5.0'); # type=gchar *
# fptr void (*)(GtkRange *) found, id=13926
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'value_changed',13926,3,10004469,'5.0'); # type=fptr
# fptr void (*)(GtkRange *, gdouble) found, id=13927
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'adjust_bounds',13927,4,10004469,'5.0'); # type=fptr
# fptr void (*)(GtkRange *, GtkScrollType) found, id=13930
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'move_slider',13930,5,10004469,'5.0'); # type=fptr
# fptr void (*)(GtkRange *, GtkBorder *) found, id=13931
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_range_border',13931,6,10004469,'5.0'); # type=fptr
# fptr gboolean (*)(GtkRange *, GtkScrollType, gdouble) found, id=13932
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'change_value',13932,7,10004469,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,8,10004469,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,9,10004469,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,10,10004469,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,11,10004469,'5.0'); # type=fptr

# _GtkTreeSelectionClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',11867,0,10004494,'5.0'); # type=GObjectClass
# fptr void (*)(GtkTreeSelection *) found, id=14056
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'changed',14056,1,10004494,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,2,10004494,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,3,10004494,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,4,10004494,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,5,10004494,'5.0'); # type=fptr

# _GtkTreeViewColumnClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10003273,0,10004518,'5.0'); # type=GInitiallyUnownedClass
# fptr void (*)(GtkTreeViewColumn *) found, id=13978
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'clicked',13978,1,10004518,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,2,10004518,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,3,10004518,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,4,10004518,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,5,10004518,'5.0'); # type=fptr

# _GtkStatusIconClass (expect 12 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',11867,0,10004545,'5.0'); # type=GObjectClass
# fptr void (*)(GtkStatusIcon *) found, id=40145
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'activate',40145,1,10004545,'5.0'); # type=fptr
# fptr void (*)(GtkStatusIcon *, guint, guint32) found, id=40146
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'popup_menu',40146,2,10004545,'5.0'); # type=fptr
# fptr gboolean (*)(GtkStatusIcon *, gint) found, id=40147
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'size_changed',40147,3,10004545,'5.0'); # type=fptr
# fptr gboolean (*)(GtkStatusIcon *, GdkEventButton *) found, id=40586
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'button_press_event',40586,4,10004545,'5.0'); # type=fptr
# fptr gboolean (*)(GtkStatusIcon *, GdkEventButton *) found, id=40586
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'button_release_event',40586,5,10004545,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkStatusIcon *, GdkEventScroll *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkStatusIcon *, typeid=10004547, name=status_icon)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'status_icon',10004547,0,@Tid,'5.0'); # type=GtkStatusIcon *
# args (pos=1, type=GdkEventScroll *, typeid=0, name=event)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'event',0,1,@Tid,'5.0'); # type=GdkEventScroll *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'scroll_event',0,6,10004545,'5.0'); # type=fptr
# fptr gboolean (*)(GtkStatusIcon *, gint, gint, gboolean, GtkTooltip *) found, id=40585
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'query_tooltip',40585,7,10004545,'5.0'); # type=fptr
#OOPS! what happened? void|(*__gtk_reserved1)
#OOPS! what happened? void|(*__gtk_reserved2)
#OOPS! what happened? void|(*__gtk_reserved3)
#OOPS! what happened? void|(*__gtk_reserved4)

# _GtkCalendarClass (expect 12 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10004828,0,10004573,'5.0'); # type=GtkWidgetClass
# fptr void (*)(GtkCalendar *) found, id=14284
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'month_changed',14284,1,10004573,'5.0'); # type=fptr
# fptr void (*)(GtkCalendar *) found, id=14284
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'day_selected',14284,2,10004573,'5.0'); # type=fptr
# fptr void (*)(GtkCalendar *) found, id=14284
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'day_selected_double_click',14284,3,10004573,'5.0'); # type=fptr
# fptr void (*)(GtkCalendar *) found, id=14284
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'prev_month',14284,4,10004573,'5.0'); # type=fptr
# fptr void (*)(GtkCalendar *) found, id=14284
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'next_month',14284,5,10004573,'5.0'); # type=fptr
# fptr void (*)(GtkCalendar *) found, id=14284
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'prev_year',14284,6,10004573,'5.0'); # type=fptr
# fptr void (*)(GtkCalendar *) found, id=14284
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'next_year',14284,7,10004573,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,8,10004573,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,9,10004573,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,10,10004573,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,11,10004573,'5.0'); # type=fptr

# _GtkActionableInterface (expect 5 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'g_iface',11997,0,10004599,'5.0'); # type=GTypeInterface
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'const gchar * (*)(GtkActionable *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkActionable *, typeid=10004601, name=actionable)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'actionable',10004601,0,@Tid,'5.0'); # type=GtkActionable *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_action_name',0,1,10004599,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkActionable *, const gchar *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkActionable *, typeid=10004601, name=actionable)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'actionable',10004601,0,@Tid,'5.0'); # type=GtkActionable *
# args (pos=1, type=const gchar *, typeid=11421, name=action_name)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'action_name',11421,1,@Tid,'5.0'); # type=const gchar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'set_action_name',0,2,10004599,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GVariant * (*)(GtkActionable *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkActionable *, typeid=10004601, name=actionable)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'actionable',10004601,0,@Tid,'5.0'); # type=GtkActionable *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_action_target_value',0,3,10004599,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkActionable *, GVariant *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkActionable *, typeid=10004601, name=actionable)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'actionable',10004601,0,@Tid,'5.0'); # type=GtkActionable *
# args (pos=1, type=GVariant *, typeid=41081, name=target_value)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'target_value',41081,1,@Tid,'5.0'); # type=GVariant *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'set_action_target_value',0,4,10004599,'5.0'); # type=fptr

# _GtkRecentChooserIface (expect 15 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'base_iface',11997,0,10004623,'5.0'); # type=GTypeInterface
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkRecentChooser *, const gchar *, GError **)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkRecentChooser *, typeid=10004625, name=chooser)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'chooser',10004625,0,@Tid,'5.0'); # type=GtkRecentChooser *
# args (pos=1, type=const gchar *, typeid=11421, name=uri)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'uri',11421,1,@Tid,'5.0'); # type=const gchar *
# args (pos=2, type=GError **, typeid=11481, name=error)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'error',11481,2,@Tid,'5.0'); # type=GError **
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'set_current_uri',0,1,10004623,'5.0'); # type=fptr
# fptr gchar * (*)(GtkRecentChooser *) found, id=40195
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_current_uri',40195,2,10004623,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkRecentChooser *, const gchar *, GError **)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkRecentChooser *, typeid=10004625, name=chooser)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'chooser',10004625,0,@Tid,'5.0'); # type=GtkRecentChooser *
# args (pos=1, type=const gchar *, typeid=11421, name=uri)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'uri',11421,1,@Tid,'5.0'); # type=const gchar *
# args (pos=2, type=GError **, typeid=11481, name=error)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'error',11481,2,@Tid,'5.0'); # type=GError **
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'select_uri',0,3,10004623,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkRecentChooser *, const gchar *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkRecentChooser *, typeid=10004625, name=chooser)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'chooser',10004625,0,@Tid,'5.0'); # type=GtkRecentChooser *
# args (pos=1, type=const gchar *, typeid=11421, name=uri)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'uri',11421,1,@Tid,'5.0'); # type=const gchar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'unselect_uri',0,4,10004623,'5.0'); # type=fptr
# fptr void (*)(GtkRecentChooser *) found, id=40197
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'select_all',40197,5,10004623,'5.0'); # type=fptr
# fptr void (*)(GtkRecentChooser *) found, id=40197
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'unselect_all',40197,6,10004623,'5.0'); # type=fptr
# fptr GList * (*)(GtkRecentChooser *) found, id=40198
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_items',40198,7,10004623,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'chooser',0,8,10004623,'5.0'); # type=GtkRecentManager *(* get_recent_manager) (GtkRecentChooser *
# fptr void (*)(GtkRecentChooser *, GtkRecentFilter *) found, id=40200
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'add_filter',40200,9,10004623,'5.0'); # type=fptr
# fptr void (*)(GtkRecentChooser *, GtkRecentFilter *) found, id=40200
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'remove_filter',40200,10,10004623,'5.0'); # type=fptr
# fptr GSList * (*)(GtkRecentChooser *) found, id=40201
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'list_filters',40201,11,10004623,'5.0'); # type=fptr
# fptr void (*)(GtkRecentChooser *, GtkRecentSortFunc, gpointer, GDestroyNotify) found, id=40202
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'set_sort_func',40202,12,10004623,'5.0'); # type=fptr
# fptr void (*)(GtkRecentChooser *) found, id=40197
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'item_activated',40197,13,10004623,'5.0'); # type=fptr
# fptr void (*)(GtkRecentChooser *) found, id=40197
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'selection_changed',40197,14,10004623,'5.0'); # type=fptr

# _GtkRadioActionClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10005170,0,10004639,'5.0'); # type=GtkToggleActionClass
# fptr void (*)(GtkRadioAction *, GtkRadioAction *) found, id=14497
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'changed',14497,1,10004639,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,2,10004639,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,3,10004639,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,4,10004639,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,5,10004639,'5.0'); # type=fptr

# _GtkPlugClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10005883,0,10004656,'5.0'); # type=GtkWindowClass
# fptr void (*)(GtkPlug *) found, id=14174
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'embedded',14174,1,10004656,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,2,10004656,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,3,10004656,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,4,10004656,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,5,10004656,'5.0'); # type=fptr

# _GtkNotebookClass (expect 20 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10006175,0,10004698,'5.0'); # type=GtkContainerClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkNotebook *, GtkWidget *, guint)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkNotebook *, typeid=10004700, name=notebook)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'notebook',10004700,0,@Tid,'5.0'); # type=GtkNotebook *
# args (pos=1, type=GtkWidget *, typeid=10004154, name=page)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'page',10004154,1,@Tid,'5.0'); # type=GtkWidget *
# args (pos=2, type=guint, typeid=11402, name=page_num)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'page_num',11402,2,@Tid,'5.0'); # type=guint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'switch_page',0,1,10004698,'5.0'); # type=fptr
# fptr gboolean (*)(GtkNotebook *, gboolean) found, id=14464
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'select_page',14464,2,10004698,'5.0'); # type=fptr
# fptr gboolean (*)(GtkNotebook *, GtkNotebookTab) found, id=14465
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'focus_tab',14465,3,10004698,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkNotebook *, gint)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkNotebook *, typeid=10004700, name=notebook)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'notebook',10004700,0,@Tid,'5.0'); # type=GtkNotebook *
# args (pos=1, type=gint, typeid=11400, name=offset)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'offset',11400,1,@Tid,'5.0'); # type=gint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'change_current_page',0,4,10004698,'5.0'); # type=fptr
# fptr void (*)(GtkNotebook *, GtkDirectionType) found, id=14467
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'move_focus_out',14467,5,10004698,'5.0'); # type=fptr
# fptr gboolean (*)(GtkNotebook *, GtkDirectionType, gboolean) found, id=40592
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'reorder_tab',40592,6,10004698,'5.0'); # type=fptr
# fptr gint (*)(GtkNotebook *, GtkWidget *, GtkWidget *, GtkWidget *, gint) found, id=40593
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'insert_page',40593,7,10004698,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GtkNotebook * (*)(GtkNotebook *, GtkWidget *, gint, gint)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkNotebook *, typeid=10004700, name=notebook)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'notebook',10004700,0,@Tid,'5.0'); # type=GtkNotebook *
# args (pos=1, type=GtkWidget *, typeid=10004154, name=page)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'page',10004154,1,@Tid,'5.0'); # type=GtkWidget *
# args (pos=2, type=gint, typeid=11400, name=x)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'x',11400,2,@Tid,'5.0'); # type=gint
# args (pos=3, type=gint, typeid=11400, name=y)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'y',11400,3,@Tid,'5.0'); # type=gint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'create_window',0,8,10004698,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkNotebook *, GtkWidget *, guint)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkNotebook *, typeid=10004700, name=notebook)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'notebook',10004700,0,@Tid,'5.0'); # type=GtkNotebook *
# args (pos=1, type=GtkWidget *, typeid=10004154, name=child)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'child',10004154,1,@Tid,'5.0'); # type=GtkWidget *
# args (pos=2, type=guint, typeid=11402, name=page_num)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'page_num',11402,2,@Tid,'5.0'); # type=guint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'page_reordered',0,9,10004698,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkNotebook *, GtkWidget *, guint)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkNotebook *, typeid=10004700, name=notebook)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'notebook',10004700,0,@Tid,'5.0'); # type=GtkNotebook *
# args (pos=1, type=GtkWidget *, typeid=10004154, name=child)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'child',10004154,1,@Tid,'5.0'); # type=GtkWidget *
# args (pos=2, type=guint, typeid=11402, name=page_num)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'page_num',11402,2,@Tid,'5.0'); # type=guint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'page_removed',0,10,10004698,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkNotebook *, GtkWidget *, guint)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkNotebook *, typeid=10004700, name=notebook)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'notebook',10004700,0,@Tid,'5.0'); # type=GtkNotebook *
# args (pos=1, type=GtkWidget *, typeid=10004154, name=child)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'child',10004154,1,@Tid,'5.0'); # type=GtkWidget *
# args (pos=2, type=guint, typeid=11402, name=page_num)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'page_num',11402,2,@Tid,'5.0'); # type=guint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'page_added',0,11,10004698,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,12,10004698,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,13,10004698,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,14,10004698,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,15,10004698,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved5',9926,16,10004698,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved6',9926,17,10004698,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved7',9926,18,10004698,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved8',9926,19,10004698,'5.0'); # type=fptr

# _GtkTreeDragSourceIface (expect 4 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'g_iface',11997,0,10004714,'5.0'); # type=GTypeInterface
# fptr gboolean (*)(GtkTreeDragSource *, GtkTreePath *) found, id=14069
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'row_draggable',14069,1,10004714,'5.0'); # type=fptr
# fptr gboolean (*)(GtkTreeDragSource *, GtkTreePath *, GtkSelectionData *) found, id=14070
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'drag_data_get',14070,2,10004714,'5.0'); # type=fptr
# fptr gboolean (*)(GtkTreeDragSource *, GtkTreePath *) found, id=14069
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'drag_data_delete',14069,3,10004714,'5.0'); # type=fptr

# _GtkTreeDragDestIface (expect 3 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'g_iface',11997,0,10004720,'5.0'); # type=GTypeInterface
# fptr gboolean (*)(GtkTreeDragDest *, GtkTreePath *, GtkSelectionData *) found, id=14259
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'drag_data_received',14259,1,10004720,'5.0'); # type=fptr
# fptr gboolean (*)(GtkTreeDragDest *, GtkTreePath *, GtkSelectionData *) found, id=14259
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'row_drop_possible',14259,2,10004720,'5.0'); # type=fptr

# _GtkEntryBufferClass (expect 15 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',11867,0,10004748,'5.0'); # type=GObjectClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkEntryBuffer *, guint, const gchar *, guint)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkEntryBuffer *, typeid=10004750, name=buffer)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'buffer',10004750,0,@Tid,'5.0'); # type=GtkEntryBuffer *
# args (pos=1, type=guint, typeid=11402, name=position)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'position',11402,1,@Tid,'5.0'); # type=guint
# args (pos=2, type=const gchar *, typeid=11421, name=chars)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'chars',11421,2,@Tid,'5.0'); # type=const gchar *
# args (pos=3, type=guint, typeid=11402, name=n_chars)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'n_chars',11402,3,@Tid,'5.0'); # type=guint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'inserted_text',0,1,10004748,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkEntryBuffer *, guint, guint)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkEntryBuffer *, typeid=10004750, name=buffer)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'buffer',10004750,0,@Tid,'5.0'); # type=GtkEntryBuffer *
# args (pos=1, type=guint, typeid=11402, name=position)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'position',11402,1,@Tid,'5.0'); # type=guint
# args (pos=2, type=guint, typeid=11402, name=n_chars)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'n_chars',11402,2,@Tid,'5.0'); # type=guint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'deleted_text',0,2,10004748,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'const gchar* (*)(GtkEntryBuffer *, gsize *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkEntryBuffer *, typeid=10004750, name=buffer)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'buffer',10004750,0,@Tid,'5.0'); # type=GtkEntryBuffer *
# args (pos=1, type=gsize *, typeid=11480, name=n_bytes)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'n_bytes',11480,1,@Tid,'5.0'); # type=gsize *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_text',0,3,10004748,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'guint (*)(GtkEntryBuffer *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkEntryBuffer *, typeid=10004750, name=buffer)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'buffer',10004750,0,@Tid,'5.0'); # type=GtkEntryBuffer *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_length',0,4,10004748,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'guint (*)(GtkEntryBuffer *, guint, const gchar *, guint)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkEntryBuffer *, typeid=10004750, name=buffer)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'buffer',10004750,0,@Tid,'5.0'); # type=GtkEntryBuffer *
# args (pos=1, type=guint, typeid=11402, name=position)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'position',11402,1,@Tid,'5.0'); # type=guint
# args (pos=2, type=const gchar *, typeid=11421, name=chars)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'chars',11421,2,@Tid,'5.0'); # type=const gchar *
# args (pos=3, type=guint, typeid=11402, name=n_chars)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'n_chars',11402,3,@Tid,'5.0'); # type=guint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'insert_text',0,5,10004748,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'guint (*)(GtkEntryBuffer *, guint, guint)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkEntryBuffer *, typeid=10004750, name=buffer)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'buffer',10004750,0,@Tid,'5.0'); # type=GtkEntryBuffer *
# args (pos=1, type=guint, typeid=11402, name=position)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'position',11402,1,@Tid,'5.0'); # type=guint
# args (pos=2, type=guint, typeid=11402, name=n_chars)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'n_chars',11402,2,@Tid,'5.0'); # type=guint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'delete_text',0,6,10004748,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,7,10004748,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,8,10004748,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,9,10004748,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,10,10004748,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved5',9926,11,10004748,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved6',9926,12,10004748,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved7',9926,13,10004748,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved8',9926,14,10004748,'5.0'); # type=fptr

# _GtkThemingEngineClass (expect 18 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',11867,0,10004773,'5.0'); # type=GObjectClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkThemingEngine *, cairo_t *, gdouble, gdouble, gdouble, gdouble)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkThemingEngine *, typeid=10004775, name=engine)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'engine',10004775,0,@Tid,'5.0'); # type=GtkThemingEngine *
# args (pos=1, type=cairo_t *, typeid=32487, name=cr)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cr',32487,1,@Tid,'5.0'); # type=cairo_t *
# args (pos=2, type=gdouble, typeid=11598, name=x0)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'x0',11598,2,@Tid,'5.0'); # type=gdouble
# args (pos=3, type=gdouble, typeid=11598, name=y0)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'y0',11598,3,@Tid,'5.0'); # type=gdouble
# args (pos=4, type=gdouble, typeid=11598, name=x1)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'x1',11598,4,@Tid,'5.0'); # type=gdouble
# args (pos=5, type=gdouble, typeid=11598, name=y1)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'y1',11598,5,@Tid,'5.0'); # type=gdouble
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'render_line',0,1,10004773,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkThemingEngine *, cairo_t *, gdouble, gdouble, gdouble, gdouble)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkThemingEngine *, typeid=10004775, name=engine)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'engine',10004775,0,@Tid,'5.0'); # type=GtkThemingEngine *
# args (pos=1, type=cairo_t *, typeid=32487, name=cr)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cr',32487,1,@Tid,'5.0'); # type=cairo_t *
# args (pos=2, type=gdouble, typeid=11598, name=x)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'x',11598,2,@Tid,'5.0'); # type=gdouble
# args (pos=3, type=gdouble, typeid=11598, name=y)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'y',11598,3,@Tid,'5.0'); # type=gdouble
# args (pos=4, type=gdouble, typeid=11598, name=width)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'width',11598,4,@Tid,'5.0'); # type=gdouble
# args (pos=5, type=gdouble, typeid=11598, name=height)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'height',11598,5,@Tid,'5.0'); # type=gdouble
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'render_background',0,2,10004773,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkThemingEngine *, cairo_t *, gdouble, gdouble, gdouble, gdouble)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkThemingEngine *, typeid=10004775, name=engine)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'engine',10004775,0,@Tid,'5.0'); # type=GtkThemingEngine *
# args (pos=1, type=cairo_t *, typeid=32487, name=cr)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cr',32487,1,@Tid,'5.0'); # type=cairo_t *
# args (pos=2, type=gdouble, typeid=11598, name=x)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'x',11598,2,@Tid,'5.0'); # type=gdouble
# args (pos=3, type=gdouble, typeid=11598, name=y)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'y',11598,3,@Tid,'5.0'); # type=gdouble
# args (pos=4, type=gdouble, typeid=11598, name=width)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'width',11598,4,@Tid,'5.0'); # type=gdouble
# args (pos=5, type=gdouble, typeid=11598, name=height)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'height',11598,5,@Tid,'5.0'); # type=gdouble
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'render_frame',0,3,10004773,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkThemingEngine *, cairo_t *, gdouble, gdouble, gdouble, gdouble, GtkPositionType, gdouble, gdouble)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkThemingEngine *, typeid=10004775, name=engine)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'engine',10004775,0,@Tid,'5.0'); # type=GtkThemingEngine *
# args (pos=1, type=cairo_t *, typeid=32487, name=cr)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cr',32487,1,@Tid,'5.0'); # type=cairo_t *
# args (pos=2, type=gdouble, typeid=11598, name=x)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'x',11598,2,@Tid,'5.0'); # type=gdouble
# args (pos=3, type=gdouble, typeid=11598, name=y)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'y',11598,3,@Tid,'5.0'); # type=gdouble
# args (pos=4, type=gdouble, typeid=11598, name=width)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'width',11598,4,@Tid,'5.0'); # type=gdouble
# args (pos=5, type=gdouble, typeid=11598, name=height)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'height',11598,5,@Tid,'5.0'); # type=gdouble
# args (pos=6, type=GtkPositionType, typeid=10005615, name=gap_side)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'gap_side',10005615,6,@Tid,'5.0'); # type=GtkPositionType
# args (pos=7, type=gdouble, typeid=11598, name=xy0_gap)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'xy0_gap',11598,7,@Tid,'5.0'); # type=gdouble
# args (pos=8, type=gdouble, typeid=11598, name=xy1_gap)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'xy1_gap',11598,8,@Tid,'5.0'); # type=gdouble
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'render_frame_gap',0,4,10004773,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkThemingEngine *, cairo_t *, gdouble, gdouble, gdouble, gdouble, GtkPositionType)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkThemingEngine *, typeid=10004775, name=engine)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'engine',10004775,0,@Tid,'5.0'); # type=GtkThemingEngine *
# args (pos=1, type=cairo_t *, typeid=32487, name=cr)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cr',32487,1,@Tid,'5.0'); # type=cairo_t *
# args (pos=2, type=gdouble, typeid=11598, name=x)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'x',11598,2,@Tid,'5.0'); # type=gdouble
# args (pos=3, type=gdouble, typeid=11598, name=y)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'y',11598,3,@Tid,'5.0'); # type=gdouble
# args (pos=4, type=gdouble, typeid=11598, name=width)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'width',11598,4,@Tid,'5.0'); # type=gdouble
# args (pos=5, type=gdouble, typeid=11598, name=height)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'height',11598,5,@Tid,'5.0'); # type=gdouble
# args (pos=6, type=GtkPositionType, typeid=10005615, name=gap_side)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'gap_side',10005615,6,@Tid,'5.0'); # type=GtkPositionType
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'render_extension',0,5,10004773,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkThemingEngine *, cairo_t *, gdouble, gdouble, gdouble, gdouble)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkThemingEngine *, typeid=10004775, name=engine)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'engine',10004775,0,@Tid,'5.0'); # type=GtkThemingEngine *
# args (pos=1, type=cairo_t *, typeid=32487, name=cr)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cr',32487,1,@Tid,'5.0'); # type=cairo_t *
# args (pos=2, type=gdouble, typeid=11598, name=x)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'x',11598,2,@Tid,'5.0'); # type=gdouble
# args (pos=3, type=gdouble, typeid=11598, name=y)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'y',11598,3,@Tid,'5.0'); # type=gdouble
# args (pos=4, type=gdouble, typeid=11598, name=width)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'width',11598,4,@Tid,'5.0'); # type=gdouble
# args (pos=5, type=gdouble, typeid=11598, name=height)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'height',11598,5,@Tid,'5.0'); # type=gdouble
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'render_check',0,6,10004773,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkThemingEngine *, cairo_t *, gdouble, gdouble, gdouble, gdouble)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkThemingEngine *, typeid=10004775, name=engine)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'engine',10004775,0,@Tid,'5.0'); # type=GtkThemingEngine *
# args (pos=1, type=cairo_t *, typeid=32487, name=cr)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cr',32487,1,@Tid,'5.0'); # type=cairo_t *
# args (pos=2, type=gdouble, typeid=11598, name=x)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'x',11598,2,@Tid,'5.0'); # type=gdouble
# args (pos=3, type=gdouble, typeid=11598, name=y)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'y',11598,3,@Tid,'5.0'); # type=gdouble
# args (pos=4, type=gdouble, typeid=11598, name=width)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'width',11598,4,@Tid,'5.0'); # type=gdouble
# args (pos=5, type=gdouble, typeid=11598, name=height)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'height',11598,5,@Tid,'5.0'); # type=gdouble
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'render_option',0,7,10004773,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkThemingEngine *, cairo_t *, gdouble, gdouble, gdouble, gdouble)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkThemingEngine *, typeid=10004775, name=engine)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'engine',10004775,0,@Tid,'5.0'); # type=GtkThemingEngine *
# args (pos=1, type=cairo_t *, typeid=32487, name=cr)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cr',32487,1,@Tid,'5.0'); # type=cairo_t *
# args (pos=2, type=gdouble, typeid=11598, name=angle)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'angle',11598,2,@Tid,'5.0'); # type=gdouble
# args (pos=3, type=gdouble, typeid=11598, name=x)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'x',11598,3,@Tid,'5.0'); # type=gdouble
# args (pos=4, type=gdouble, typeid=11598, name=y)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'y',11598,4,@Tid,'5.0'); # type=gdouble
# args (pos=5, type=gdouble, typeid=11598, name=size)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'size',11598,5,@Tid,'5.0'); # type=gdouble
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'render_arrow',0,8,10004773,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkThemingEngine *, cairo_t *, gdouble, gdouble, gdouble, gdouble)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkThemingEngine *, typeid=10004775, name=engine)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'engine',10004775,0,@Tid,'5.0'); # type=GtkThemingEngine *
# args (pos=1, type=cairo_t *, typeid=32487, name=cr)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cr',32487,1,@Tid,'5.0'); # type=cairo_t *
# args (pos=2, type=gdouble, typeid=11598, name=x)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'x',11598,2,@Tid,'5.0'); # type=gdouble
# args (pos=3, type=gdouble, typeid=11598, name=y)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'y',11598,3,@Tid,'5.0'); # type=gdouble
# args (pos=4, type=gdouble, typeid=11598, name=width)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'width',11598,4,@Tid,'5.0'); # type=gdouble
# args (pos=5, type=gdouble, typeid=11598, name=height)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'height',11598,5,@Tid,'5.0'); # type=gdouble
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'render_expander',0,9,10004773,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkThemingEngine *, cairo_t *, gdouble, gdouble, gdouble, gdouble)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkThemingEngine *, typeid=10004775, name=engine)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'engine',10004775,0,@Tid,'5.0'); # type=GtkThemingEngine *
# args (pos=1, type=cairo_t *, typeid=32487, name=cr)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cr',32487,1,@Tid,'5.0'); # type=cairo_t *
# args (pos=2, type=gdouble, typeid=11598, name=x)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'x',11598,2,@Tid,'5.0'); # type=gdouble
# args (pos=3, type=gdouble, typeid=11598, name=y)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'y',11598,3,@Tid,'5.0'); # type=gdouble
# args (pos=4, type=gdouble, typeid=11598, name=width)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'width',11598,4,@Tid,'5.0'); # type=gdouble
# args (pos=5, type=gdouble, typeid=11598, name=height)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'height',11598,5,@Tid,'5.0'); # type=gdouble
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'render_focus',0,10,10004773,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkThemingEngine *, cairo_t *, gdouble, gdouble, PangoLayout *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkThemingEngine *, typeid=10004775, name=engine)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'engine',10004775,0,@Tid,'5.0'); # type=GtkThemingEngine *
# args (pos=1, type=cairo_t *, typeid=32487, name=cr)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cr',32487,1,@Tid,'5.0'); # type=cairo_t *
# args (pos=2, type=gdouble, typeid=11598, name=x)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'x',11598,2,@Tid,'5.0'); # type=gdouble
# args (pos=3, type=gdouble, typeid=11598, name=y)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'y',11598,3,@Tid,'5.0'); # type=gdouble
# args (pos=4, type=PangoLayout *, typeid=12355, name=layout)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'layout',12355,4,@Tid,'5.0'); # type=PangoLayout *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'render_layout',0,11,10004773,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkThemingEngine *, cairo_t *, gdouble, gdouble, gdouble, gdouble, GtkOrientation)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkThemingEngine *, typeid=10004775, name=engine)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'engine',10004775,0,@Tid,'5.0'); # type=GtkThemingEngine *
# args (pos=1, type=cairo_t *, typeid=32487, name=cr)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cr',32487,1,@Tid,'5.0'); # type=cairo_t *
# args (pos=2, type=gdouble, typeid=11598, name=x)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'x',11598,2,@Tid,'5.0'); # type=gdouble
# args (pos=3, type=gdouble, typeid=11598, name=y)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'y',11598,3,@Tid,'5.0'); # type=gdouble
# args (pos=4, type=gdouble, typeid=11598, name=width)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'width',11598,4,@Tid,'5.0'); # type=gdouble
# args (pos=5, type=gdouble, typeid=11598, name=height)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'height',11598,5,@Tid,'5.0'); # type=gdouble
# args (pos=6, type=GtkOrientation, typeid=10005603, name=orientation)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'orientation',10005603,6,@Tid,'5.0'); # type=GtkOrientation
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'render_slider',0,12,10004773,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkThemingEngine *, cairo_t *, gdouble, gdouble, gdouble, gdouble)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkThemingEngine *, typeid=10004775, name=engine)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'engine',10004775,0,@Tid,'5.0'); # type=GtkThemingEngine *
# args (pos=1, type=cairo_t *, typeid=32487, name=cr)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cr',32487,1,@Tid,'5.0'); # type=cairo_t *
# args (pos=2, type=gdouble, typeid=11598, name=x)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'x',11598,2,@Tid,'5.0'); # type=gdouble
# args (pos=3, type=gdouble, typeid=11598, name=y)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'y',11598,3,@Tid,'5.0'); # type=gdouble
# args (pos=4, type=gdouble, typeid=11598, name=width)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'width',11598,4,@Tid,'5.0'); # type=gdouble
# args (pos=5, type=gdouble, typeid=11598, name=height)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'height',11598,5,@Tid,'5.0'); # type=gdouble
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'render_handle',0,13,10004773,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkThemingEngine *, cairo_t *, gdouble, gdouble, gdouble, gdouble)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkThemingEngine *, typeid=10004775, name=engine)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'engine',10004775,0,@Tid,'5.0'); # type=GtkThemingEngine *
# args (pos=1, type=cairo_t *, typeid=32487, name=cr)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cr',32487,1,@Tid,'5.0'); # type=cairo_t *
# args (pos=2, type=gdouble, typeid=11598, name=x)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'x',11598,2,@Tid,'5.0'); # type=gdouble
# args (pos=3, type=gdouble, typeid=11598, name=y)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'y',11598,3,@Tid,'5.0'); # type=gdouble
# args (pos=4, type=gdouble, typeid=11598, name=width)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'width',11598,4,@Tid,'5.0'); # type=gdouble
# args (pos=5, type=gdouble, typeid=11598, name=height)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'height',11598,5,@Tid,'5.0'); # type=gdouble
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'render_activity',0,14,10004773,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GdkPixbuf * (*)(GtkThemingEngine *, const GtkIconSource *, GtkIconSize)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkThemingEngine *, typeid=10004775, name=engine)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'engine',10004775,0,@Tid,'5.0'); # type=GtkThemingEngine *
# args (pos=1, type=const GtkIconSource *, typeid=10005713, name=source)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'source',10005713,1,@Tid,'5.0'); # type=const GtkIconSource *
# args (pos=2, type=GtkIconSize, typeid=10005587, name=size)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'size',10005587,2,@Tid,'5.0'); # type=GtkIconSize
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'render_icon_pixbuf',0,15,10004773,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkThemingEngine *, cairo_t *, GdkPixbuf *, gdouble, gdouble)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkThemingEngine *, typeid=10004775, name=engine)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'engine',10004775,0,@Tid,'5.0'); # type=GtkThemingEngine *
# args (pos=1, type=cairo_t *, typeid=32487, name=cr)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cr',32487,1,@Tid,'5.0'); # type=cairo_t *
# args (pos=2, type=GdkPixbuf *, typeid=0, name=pixbuf)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'pixbuf',0,2,@Tid,'5.0'); # type=GdkPixbuf *
# args (pos=3, type=gdouble, typeid=11598, name=x)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'x',11598,3,@Tid,'5.0'); # type=gdouble
# args (pos=4, type=gdouble, typeid=11598, name=y)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'y',11598,4,@Tid,'5.0'); # type=gdouble
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'render_icon',0,16,10004773,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'padding',11404,17,10004773,'5.0'); # type=gpointer

# _GtkFontChooserIface (expect 7 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'base_iface',11997,0,10004791,'5.0'); # type=GTypeInterface
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'PangoFontFamily * (*)(GtkFontChooser *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkFontChooser *, typeid=10004794, name=fontchooser)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'fontchooser',10004794,0,@Tid,'5.0'); # type=GtkFontChooser *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_font_family',0,1,10004791,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'PangoFontFace * (*)(GtkFontChooser *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkFontChooser *, typeid=10004794, name=fontchooser)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'fontchooser',10004794,0,@Tid,'5.0'); # type=GtkFontChooser *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_font_face',0,2,10004791,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gint (*)(GtkFontChooser *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkFontChooser *, typeid=10004794, name=fontchooser)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'fontchooser',10004794,0,@Tid,'5.0'); # type=GtkFontChooser *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_font_size',0,3,10004791,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkFontChooser *, GtkFontFilterFunc, gpointer, GDestroyNotify)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkFontChooser *, typeid=10004794, name=fontchooser)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'fontchooser',10004794,0,@Tid,'5.0'); # type=GtkFontChooser *
# args (pos=1, type=GtkFontFilterFunc, typeid=10004782, name=filter)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'filter',10004782,1,@Tid,'5.0'); # type=GtkFontFilterFunc
# args (pos=2, type=gpointer, typeid=11404, name=user_data)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'user_data',11404,2,@Tid,'5.0'); # type=gpointer
# args (pos=3, type=GDestroyNotify, typeid=11439, name=destroy)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'destroy',11439,3,@Tid,'5.0'); # type=GDestroyNotify
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'set_filter_func',0,4,10004791,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkFontChooser *, const gchar *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkFontChooser *, typeid=10004794, name=chooser)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'chooser',10004794,0,@Tid,'5.0'); # type=GtkFontChooser *
# args (pos=1, type=const gchar *, typeid=11421, name=fontname)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'fontname',11421,1,@Tid,'5.0'); # type=const gchar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'font_activated',0,5,10004791,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'padding',11404,6,10004791,'5.0'); # type=gpointer

# _GtkAppChooserButtonClass (expect 3 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10005921,0,10004804,'5.0'); # type=GtkComboBoxClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkAppChooserButton *, const gchar *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkAppChooserButton *, typeid=10004805, name=self)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'self',10004805,0,@Tid,'5.0'); # type=GtkAppChooserButton *
# args (pos=1, type=const gchar *, typeid=11421, name=item_name)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'item_name',11421,1,@Tid,'5.0'); # type=const gchar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'custom_item_activated',0,1,10004804,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'padding',11404,2,10004804,'5.0'); # type=gpointer

# _GtkWidgetClass (expect 87 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10003273,0,10004837,'5.0'); # type=GInitiallyUnownedClass
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'activate_signal',11402,1,10004837,'5.0'); # type=guint
# fptr void (*)(GtkWidget *, guint, GParamSpec **) found, id=13432
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'dispatch_child_properties_changed',13432,2,10004837,'5.0'); # type=fptr
# fptr void (*)(GtkWidget *) found, id=13433
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'destroy',13433,3,10004837,'5.0'); # type=fptr
# fptr void (*)(GtkWidget *) found, id=13433
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'show',13433,4,10004837,'5.0'); # type=fptr
# fptr void (*)(GtkWidget *) found, id=13433
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'show_all',13433,5,10004837,'5.0'); # type=fptr
# fptr void (*)(GtkWidget *) found, id=13433
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'hide',13433,6,10004837,'5.0'); # type=fptr
# fptr void (*)(GtkWidget *) found, id=13433
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'map',13433,7,10004837,'5.0'); # type=fptr
# fptr void (*)(GtkWidget *) found, id=13433
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'unmap',13433,8,10004837,'5.0'); # type=fptr
# fptr void (*)(GtkWidget *) found, id=13433
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'realize',13433,9,10004837,'5.0'); # type=fptr
# fptr void (*)(GtkWidget *) found, id=13433
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'unrealize',13433,10,10004837,'5.0'); # type=fptr
# fptr void (*)(GtkWidget *, GtkAllocation *) found, id=13435
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'size_allocate',13435,11,10004837,'5.0'); # type=fptr
# fptr void (*)(GtkWidget *, GtkStateType) found, id=13436
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'state_changed',13436,12,10004837,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkWidget *, GtkStateFlags)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkWidget *, typeid=10004154, name=widget)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
# args (pos=1, type=GtkStateFlags, typeid=10005667, name=previous_state_flags)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'previous_state_flags',10005667,1,@Tid,'5.0'); # type=GtkStateFlags
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'state_flags_changed',0,13,10004837,'5.0'); # type=fptr
# fptr void (*)(GtkWidget *, GtkWidget *) found, id=13437
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_set',13437,14,10004837,'5.0'); # type=fptr
# fptr void (*)(GtkWidget *, GtkWidget *) found, id=13437
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'hierarchy_changed',13437,15,10004837,'5.0'); # type=fptr
# fptr void (*)(GtkWidget *, GtkStyle *) found, id=13438
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'style_set',13438,16,10004837,'5.0'); # type=fptr
# fptr void (*)(GtkWidget *, GtkTextDirection) found, id=13439
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'direction_changed',13439,17,10004837,'5.0'); # type=fptr
# fptr void (*)(GtkWidget *, gboolean) found, id=13440
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'grab_notify',13440,18,10004837,'5.0'); # type=fptr
# fptr void (*)(GtkWidget *, GParamSpec *) found, id=13441
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'child_notify',13441,19,10004837,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkWidget *, cairo_t *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkWidget *, typeid=10004154, name=widget)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
# args (pos=1, type=cairo_t *, typeid=32487, name=cr)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cr',32487,1,@Tid,'5.0'); # type=cairo_t *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'draw',0,20,10004837,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GtkSizeRequestMode (*)(GtkWidget *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkWidget *, typeid=10004154, name=widget)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_request_mode',0,21,10004837,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkWidget *, gint *, gint *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkWidget *, typeid=10004154, name=widget)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
# args (pos=1, type=gint *, typeid=11516, name=minimum_height)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'minimum_height',11516,1,@Tid,'5.0'); # type=gint *
# args (pos=2, type=gint *, typeid=11516, name=natural_height)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'natural_height',11516,2,@Tid,'5.0'); # type=gint *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_preferred_height',0,22,10004837,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkWidget *, gint, gint *, gint *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkWidget *, typeid=10004154, name=widget)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
# args (pos=1, type=gint, typeid=11400, name=height)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'height',11400,1,@Tid,'5.0'); # type=gint
# args (pos=2, type=gint *, typeid=11516, name=minimum_width)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'minimum_width',11516,2,@Tid,'5.0'); # type=gint *
# args (pos=3, type=gint *, typeid=11516, name=natural_width)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'natural_width',11516,3,@Tid,'5.0'); # type=gint *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_preferred_width_for_height',0,23,10004837,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkWidget *, gint *, gint *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkWidget *, typeid=10004154, name=widget)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
# args (pos=1, type=gint *, typeid=11516, name=minimum_width)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'minimum_width',11516,1,@Tid,'5.0'); # type=gint *
# args (pos=2, type=gint *, typeid=11516, name=natural_width)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'natural_width',11516,2,@Tid,'5.0'); # type=gint *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_preferred_width',0,24,10004837,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkWidget *, gint, gint *, gint *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkWidget *, typeid=10004154, name=widget)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
# args (pos=1, type=gint, typeid=11400, name=width)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'width',11400,1,@Tid,'5.0'); # type=gint
# args (pos=2, type=gint *, typeid=11516, name=minimum_height)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'minimum_height',11516,2,@Tid,'5.0'); # type=gint *
# args (pos=3, type=gint *, typeid=11516, name=natural_height)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'natural_height',11516,3,@Tid,'5.0'); # type=gint *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_preferred_height_for_width',0,25,10004837,'5.0'); # type=fptr
# fptr gboolean (*)(GtkWidget *, gboolean) found, id=13442
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'mnemonic_activate',13442,26,10004837,'5.0'); # type=fptr
# fptr void (*)(GtkWidget *) found, id=13433
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'grab_focus',13433,27,10004837,'5.0'); # type=fptr
# fptr gboolean (*)(GtkWidget *, GtkDirectionType) found, id=13445
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'focus',13445,28,10004837,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkWidget *, GtkDirectionType)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkWidget *, typeid=10004154, name=widget)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
# args (pos=1, type=GtkDirectionType, typeid=10005583, name=direction)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'direction',10005583,1,@Tid,'5.0'); # type=GtkDirectionType
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'move_focus',0,29,10004837,'5.0'); # type=fptr
# fptr gboolean (*)(GtkWidget *, GtkDirectionType) found, id=13445
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'keynav_failed',13445,30,10004837,'5.0'); # type=fptr
# fptr gboolean (*)(GtkWidget *, GdkEvent *) found, id=13446
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'event',13446,31,10004837,'5.0'); # type=fptr
# fptr gboolean (*)(GtkWidget *, GdkEventButton *) found, id=13448
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'button_press_event',13448,32,10004837,'5.0'); # type=fptr
# fptr gboolean (*)(GtkWidget *, GdkEventButton *) found, id=13448
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'button_release_event',13448,33,10004837,'5.0'); # type=fptr
# fptr gboolean (*)(GtkWidget *, GdkEventScroll *) found, id=13450
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'scroll_event',13450,34,10004837,'5.0'); # type=fptr
# fptr gboolean (*)(GtkWidget *, GdkEventMotion *) found, id=13452
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'motion_notify_event',13452,35,10004837,'5.0'); # type=fptr
# fptr gboolean (*)(GtkWidget *, GdkEventAny *) found, id=13454
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'delete_event',13454,36,10004837,'5.0'); # type=fptr
# fptr gboolean (*)(GtkWidget *, GdkEventAny *) found, id=13454
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'destroy_event',13454,37,10004837,'5.0'); # type=fptr
# fptr gboolean (*)(GtkWidget *, GdkEventKey *) found, id=13457
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'key_press_event',13457,38,10004837,'5.0'); # type=fptr
# fptr gboolean (*)(GtkWidget *, GdkEventKey *) found, id=13457
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'key_release_event',13457,39,10004837,'5.0'); # type=fptr
# fptr gboolean (*)(GtkWidget *, GdkEventCrossing *) found, id=13459
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'enter_notify_event',13459,40,10004837,'5.0'); # type=fptr
# fptr gboolean (*)(GtkWidget *, GdkEventCrossing *) found, id=13459
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'leave_notify_event',13459,41,10004837,'5.0'); # type=fptr
# fptr gboolean (*)(GtkWidget *, GdkEventConfigure *) found, id=13461
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'configure_event',13461,42,10004837,'5.0'); # type=fptr
# fptr gboolean (*)(GtkWidget *, GdkEventFocus *) found, id=13463
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'focus_in_event',13463,43,10004837,'5.0'); # type=fptr
# fptr gboolean (*)(GtkWidget *, GdkEventFocus *) found, id=13463
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'focus_out_event',13463,44,10004837,'5.0'); # type=fptr
# fptr gboolean (*)(GtkWidget *, GdkEventAny *) found, id=13454
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'map_event',13454,45,10004837,'5.0'); # type=fptr
# fptr gboolean (*)(GtkWidget *, GdkEventAny *) found, id=13454
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'unmap_event',13454,46,10004837,'5.0'); # type=fptr
# fptr gboolean (*)(GtkWidget *, GdkEventProperty *) found, id=13465
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'property_notify_event',13465,47,10004837,'5.0'); # type=fptr
# fptr gboolean (*)(GtkWidget *, GdkEventSelection *) found, id=13467
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'selection_clear_event',13467,48,10004837,'5.0'); # type=fptr
# fptr gboolean (*)(GtkWidget *, GdkEventSelection *) found, id=13467
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'selection_request_event',13467,49,10004837,'5.0'); # type=fptr
# fptr gboolean (*)(GtkWidget *, GdkEventSelection *) found, id=13467
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'selection_notify_event',13467,50,10004837,'5.0'); # type=fptr
# fptr gboolean (*)(GtkWidget *, GdkEventProximity *) found, id=13469
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'proximity_in_event',13469,51,10004837,'5.0'); # type=fptr
# fptr gboolean (*)(GtkWidget *, GdkEventProximity *) found, id=13469
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'proximity_out_event',13469,52,10004837,'5.0'); # type=fptr
# fptr gboolean (*)(GtkWidget *, GdkEventVisibility *) found, id=13471
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'visibility_notify_event',13471,53,10004837,'5.0'); # type=fptr
# fptr gboolean (*)(GtkWidget *, GdkEventWindowState *) found, id=13475
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'window_state_event',13475,54,10004837,'5.0'); # type=fptr
# fptr gboolean (*)(GtkWidget *, GdkEventExpose *) found, id=13456
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'damage_event',13456,55,10004837,'5.0'); # type=fptr
# fptr gboolean (*)(GtkWidget *, GdkEventGrabBroken *) found, id=40604
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'grab_broken_event',40604,56,10004837,'5.0'); # type=fptr
# fptr void (*)(GtkWidget *, GtkSelectionData *, guint, guint) found, id=13476
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'selection_get',13476,57,10004837,'5.0'); # type=fptr
# fptr void (*)(GtkWidget *, GtkSelectionData *, guint) found, id=13477
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'selection_received',13477,58,10004837,'5.0'); # type=fptr
# fptr void (*)(GtkWidget *, GdkDragContext *) found, id=13478
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'drag_begin',13478,59,10004837,'5.0'); # type=fptr
# fptr void (*)(GtkWidget *, GdkDragContext *) found, id=13478
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'drag_end',13478,60,10004837,'5.0'); # type=fptr
# fptr void (*)(GtkWidget *, GdkDragContext *, GtkSelectionData *, guint, guint) found, id=13479
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'drag_data_get',13479,61,10004837,'5.0'); # type=fptr
# fptr void (*)(GtkWidget *, GdkDragContext *) found, id=13478
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'drag_data_delete',13478,62,10004837,'5.0'); # type=fptr
# fptr void (*)(GtkWidget *, GdkDragContext *, guint) found, id=13480
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'drag_leave',13480,63,10004837,'5.0'); # type=fptr
# fptr gboolean (*)(GtkWidget *, GdkDragContext *, gint, gint, guint) found, id=13481
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'drag_motion',13481,64,10004837,'5.0'); # type=fptr
# fptr gboolean (*)(GtkWidget *, GdkDragContext *, gint, gint, guint) found, id=13481
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'drag_drop',13481,65,10004837,'5.0'); # type=fptr
# fptr void (*)(GtkWidget *, GdkDragContext *, gint, gint, GtkSelectionData *, guint, guint) found, id=13482
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'drag_data_received',13482,66,10004837,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkWidget *, GdkDragContext *, GtkDragResult)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkWidget *, typeid=10004154, name=widget)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
# args (pos=1, type=GdkDragContext *, typeid=10003932, name=context)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10003932,1,@Tid,'5.0'); # type=GdkDragContext *
# args (pos=2, type=GtkDragResult, typeid=10005661, name=result)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'result',10005661,2,@Tid,'5.0'); # type=GtkDragResult
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'drag_failed',0,67,10004837,'5.0'); # type=fptr
# fptr gboolean (*)(GtkWidget *) found, id=13483
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'popup_menu',13483,68,10004837,'5.0'); # type=fptr
# fptr gboolean (*)(GtkWidget *, GtkWidgetHelpType) found, id=13486
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'show_help',13486,69,10004837,'5.0'); # type=fptr
# fptr AtkObject * (*)(GtkWidget *) found, id=13487
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_accessible',13487,70,10004837,'5.0'); # type=fptr
# fptr void (*)(GtkWidget *, GdkScreen *) found, id=13488
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'screen_changed',13488,71,10004837,'5.0'); # type=fptr
# fptr gboolean (*)(GtkWidget *, guint) found, id=13489
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'can_activate_accel',13489,72,10004837,'5.0'); # type=fptr
# fptr void (*)(GtkWidget *) found, id=13433
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'composited_changed',13433,73,10004837,'5.0'); # type=fptr
# fptr gboolean (*)(GtkWidget *, gint, gint, gboolean, GtkTooltip *) found, id=40605
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'query_tooltip',40605,74,10004837,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkWidget *, gboolean *, gboolean *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkWidget *, typeid=10004154, name=widget)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
# args (pos=1, type=gboolean *, typeid=11763, name=hexpand_p)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'hexpand_p',11763,1,@Tid,'5.0'); # type=gboolean *
# args (pos=2, type=gboolean *, typeid=11763, name=vexpand_p)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'vexpand_p',11763,2,@Tid,'5.0'); # type=gboolean *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'compute_expand',0,75,10004837,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkWidget *, GtkOrientation, gint *, gint *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkWidget *, typeid=10004154, name=widget)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
# args (pos=1, type=GtkOrientation, typeid=10005603, name=orientation)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'orientation',10005603,1,@Tid,'5.0'); # type=GtkOrientation
# args (pos=2, type=gint *, typeid=11516, name=minimum_size)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'minimum_size',11516,2,@Tid,'5.0'); # type=gint *
# args (pos=3, type=gint *, typeid=11516, name=natural_size)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'natural_size',11516,3,@Tid,'5.0'); # type=gint *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'adjust_size_request',0,76,10004837,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkWidget *, GtkOrientation, gint *, gint *, gint *, gint *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkWidget *, typeid=10004154, name=widget)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
# args (pos=1, type=GtkOrientation, typeid=10005603, name=orientation)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'orientation',10005603,1,@Tid,'5.0'); # type=GtkOrientation
# args (pos=2, type=gint *, typeid=11516, name=minimum_size)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'minimum_size',11516,2,@Tid,'5.0'); # type=gint *
# args (pos=3, type=gint *, typeid=11516, name=natural_size)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'natural_size',11516,3,@Tid,'5.0'); # type=gint *
# args (pos=4, type=gint *, typeid=11516, name=allocated_pos)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'allocated_pos',11516,4,@Tid,'5.0'); # type=gint *
# args (pos=5, type=gint *, typeid=11516, name=allocated_size)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'allocated_size',11516,5,@Tid,'5.0'); # type=gint *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'adjust_size_allocation',0,77,10004837,'5.0'); # type=fptr
# fptr void (*)(GtkWidget *) found, id=13433
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'style_updated',13433,78,10004837,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkWidget *, GdkEventTouch *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkWidget *, typeid=10004154, name=widget)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
# args (pos=1, type=GdkEventTouch *, typeid=0, name=event)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'event',0,1,@Tid,'5.0'); # type=GdkEventTouch *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'touch_event',0,79,10004837,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'priv',10006293,80,10004837,'5.0'); # type=GtkWidgetClassPrivate *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,81,10004837,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,82,10004837,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,83,10004837,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved5',9926,84,10004837,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved6',9926,85,10004837,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved7',9926,86,10004837,'5.0'); # type=fptr

# _GtkEntryClass (expect 20 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10004828,0,10004886,'5.0'); # type=GtkWidgetClass
# fptr void (*)(GtkEntry *, GtkMenu *) found, id=14288
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'populate_popup',14288,1,10004886,'5.0'); # type=fptr
# fptr void (*)(GtkEntry *) found, id=14289
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'activate',14289,2,10004886,'5.0'); # type=fptr
# fptr void (*)(GtkEntry *, GtkMovementStep, gint, gboolean) found, id=14290
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'move_cursor',14290,3,10004886,'5.0'); # type=fptr
# fptr void (*)(GtkEntry *, const gchar *) found, id=14291
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'insert_at_cursor',14291,4,10004886,'5.0'); # type=fptr
# fptr void (*)(GtkEntry *, GtkDeleteType, gint) found, id=14292
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'delete_from_cursor',14292,5,10004886,'5.0'); # type=fptr
# fptr void (*)(GtkEntry *) found, id=14289
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'backspace',14289,6,10004886,'5.0'); # type=fptr
# fptr void (*)(GtkEntry *) found, id=14289
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cut_clipboard',14289,7,10004886,'5.0'); # type=fptr
# fptr void (*)(GtkEntry *) found, id=14289
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'copy_clipboard',14289,8,10004886,'5.0'); # type=fptr
# fptr void (*)(GtkEntry *) found, id=14289
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'paste_clipboard',14289,9,10004886,'5.0'); # type=fptr
# fptr void (*)(GtkEntry *) found, id=14289
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'toggle_overwrite',14289,10,10004886,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkEntry *, gint *, gint *, gint *, gint *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkEntry *, typeid=10004888, name=entry)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'entry',10004888,0,@Tid,'5.0'); # type=GtkEntry *
# args (pos=1, type=gint *, typeid=11516, name=x)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'x',11516,1,@Tid,'5.0'); # type=gint *
# args (pos=2, type=gint *, typeid=11516, name=y)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'y',11516,2,@Tid,'5.0'); # type=gint *
# args (pos=3, type=gint *, typeid=11516, name=width)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'width',11516,3,@Tid,'5.0'); # type=gint *
# args (pos=4, type=gint *, typeid=11516, name=height)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'height',11516,4,@Tid,'5.0'); # type=gint *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_text_area_size',0,11,10004886,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkEntry *, gint *, gint *, gint *, gint *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkEntry *, typeid=10004888, name=entry)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'entry',10004888,0,@Tid,'5.0'); # type=GtkEntry *
# args (pos=1, type=gint *, typeid=11516, name=x)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'x',11516,1,@Tid,'5.0'); # type=gint *
# args (pos=2, type=gint *, typeid=11516, name=y)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'y',11516,2,@Tid,'5.0'); # type=gint *
# args (pos=3, type=gint *, typeid=11516, name=width)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'width',11516,3,@Tid,'5.0'); # type=gint *
# args (pos=4, type=gint *, typeid=11516, name=height)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'height',11516,4,@Tid,'5.0'); # type=gint *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_frame_size',0,12,10004886,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,13,10004886,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,14,10004886,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,15,10004886,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,16,10004886,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved5',9926,17,10004886,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved6',9926,18,10004886,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved7',9926,19,10004886,'5.0'); # type=fptr

# _GtkColorChooserInterface (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'base_interface',11997,0,10004896,'5.0'); # type=GTypeInterface
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkColorChooser *, GdkRGBA *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkColorChooser *, typeid=10004898, name=chooser)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'chooser',10004898,0,@Tid,'5.0'); # type=GtkColorChooser *
# args (pos=1, type=GdkRGBA *, typeid=10003790, name=color)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'color',10003790,1,@Tid,'5.0'); # type=GdkRGBA *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_rgba',0,1,10004896,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkColorChooser *, const GdkRGBA *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkColorChooser *, typeid=10004898, name=chooser)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'chooser',10004898,0,@Tid,'5.0'); # type=GtkColorChooser *
# args (pos=1, type=const GdkRGBA *, typeid=10003792, name=color)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'color',10003792,1,@Tid,'5.0'); # type=const GdkRGBA *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'set_rgba',0,2,10004896,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkColorChooser *, GtkOrientation, gint, gint, GdkRGBA *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkColorChooser *, typeid=10004898, name=chooser)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'chooser',10004898,0,@Tid,'5.0'); # type=GtkColorChooser *
# args (pos=1, type=GtkOrientation, typeid=10005603, name=orientation)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'orientation',10005603,1,@Tid,'5.0'); # type=GtkOrientation
# args (pos=2, type=gint, typeid=11400, name=colors_per_line)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'colors_per_line',11400,2,@Tid,'5.0'); # type=gint
# args (pos=3, type=gint, typeid=11400, name=n_colors)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'n_colors',11400,3,@Tid,'5.0'); # type=gint
# args (pos=4, type=GdkRGBA *, typeid=10003790, name=colors)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'colors',10003790,4,@Tid,'5.0'); # type=GdkRGBA *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'add_palette',0,3,10004896,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkColorChooser *, const GdkRGBA *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkColorChooser *, typeid=10004898, name=chooser)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'chooser',10004898,0,@Tid,'5.0'); # type=GtkColorChooser *
# args (pos=1, type=const GdkRGBA *, typeid=10003792, name=color)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'color',10003792,1,@Tid,'5.0'); # type=const GdkRGBA *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'color_activated',0,4,10004896,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'padding',11404,5,10004896,'5.0'); # type=gpointer

# _GtkColorButtonClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10005564,0,10004936,'5.0'); # type=GtkButtonClass
# fptr void (*)(GtkColorButton *) found, id=14431
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'color_set',14431,1,10004936,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,2,10004936,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,3,10004936,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,4,10004936,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,5,10004936,'5.0'); # type=fptr

# _GtkUIManagerClass (expect 13 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',11867,0,10004948,'5.0'); # type=GObjectClass
# fptr void (*)(GtkUIManager *, GtkWidget *) found, id=14322
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'add_widget',14322,1,10004948,'5.0'); # type=fptr
# fptr void (*)(GtkUIManager *) found, id=14323
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'actions_changed',14323,2,10004948,'5.0'); # type=fptr
# fptr void (*)(GtkUIManager *, GtkAction *, GtkWidget *) found, id=14324
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'connect_proxy',14324,3,10004948,'5.0'); # type=fptr
# fptr void (*)(GtkUIManager *, GtkAction *, GtkWidget *) found, id=14324
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'disconnect_proxy',14324,4,10004948,'5.0'); # type=fptr
# fptr void (*)(GtkUIManager *, GtkAction *) found, id=14325
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'pre_activate',14325,5,10004948,'5.0'); # type=fptr
# fptr void (*)(GtkUIManager *, GtkAction *) found, id=14325
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'post_activate',14325,6,10004948,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GtkWidget * (*)(GtkUIManager *, const gchar *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkUIManager *, typeid=10004951, name=manager)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'manager',10004951,0,@Tid,'5.0'); # type=GtkUIManager *
# args (pos=1, type=const gchar *, typeid=11421, name=path)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'path',11421,1,@Tid,'5.0'); # type=const gchar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_widget',0,7,10004948,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GtkAction * (*)(GtkUIManager *, const gchar *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkUIManager *, typeid=10004951, name=manager)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'manager',10004951,0,@Tid,'5.0'); # type=GtkUIManager *
# args (pos=1, type=const gchar *, typeid=11421, name=path)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'path',11421,1,@Tid,'5.0'); # type=const gchar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_action',0,8,10004948,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,9,10004948,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,10,10004948,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,11,10004948,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,12,10004948,'5.0'); # type=fptr

# _GtkToggleToolButtonClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10004299,0,10004959,'5.0'); # type=GtkToolButtonClass
# fptr void (*)(GtkToggleToolButton *) found, id=14239
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'toggled',14239,1,10004959,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,2,10004959,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,3,10004959,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,4,10004959,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,5,10004959,'5.0'); # type=fptr

# _GtkCellRendererAccelClass (expect 8 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10005360,0,10004970,'5.0'); # type=GtkCellRendererTextClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellRendererAccel *, const gchar *, guint, GdkModifierType, guint)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkCellRendererAccel *, typeid=0, name=accel)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'accel',0,0,@Tid,'5.0'); # type=GtkCellRendererAccel *
# args (pos=1, type=const gchar *, typeid=11421, name=path_string)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'path_string',11421,1,@Tid,'5.0'); # type=const gchar *
# args (pos=2, type=guint, typeid=11402, name=accel_key)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'accel_key',11402,2,@Tid,'5.0'); # type=guint
# args (pos=3, type=GdkModifierType, typeid=10004038, name=accel_mods)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'accel_mods',10004038,3,@Tid,'5.0'); # type=GdkModifierType
# args (pos=4, type=guint, typeid=11402, name=hardware_keycode)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'hardware_keycode',11402,4,@Tid,'5.0'); # type=guint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'accel_edited',0,1,10004970,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellRendererAccel *, const gchar *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkCellRendererAccel *, typeid=0, name=accel)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'accel',0,0,@Tid,'5.0'); # type=GtkCellRendererAccel *
# args (pos=1, type=const gchar *, typeid=11421, name=path_string)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'path_string',11421,1,@Tid,'5.0'); # type=const gchar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'accel_cleared',0,2,10004970,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved0',9926,3,10004970,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,4,10004970,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,5,10004970,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,6,10004970,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,7,10004970,'5.0'); # type=fptr

# _GtkOverlayClass (expect 10 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10004268,0,10004978,'5.0'); # type=GtkBinClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkOverlay *, GtkWidget *, GtkAllocation *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkOverlay *, typeid=10004980, name=overlay)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'overlay',10004980,0,@Tid,'5.0'); # type=GtkOverlay *
# args (pos=1, type=GtkWidget *, typeid=10004154, name=widget)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,1,@Tid,'5.0'); # type=GtkWidget *
# args (pos=2, type=GtkAllocation *, typeid=10004845, name=allocation)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'allocation',10004845,2,@Tid,'5.0'); # type=GtkAllocation *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_child_position',0,1,10004978,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,2,10004978,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,3,10004978,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,4,10004978,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,5,10004978,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved5',9926,6,10004978,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved6',9926,7,10004978,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved7',9926,8,10004978,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved8',9926,9,10004978,'5.0'); # type=fptr

# _GtkTextViewClass (expect 19 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10006175,0,10004989,'5.0'); # type=GtkContainerClass
# fptr void (*)(GtkTextView *, GtkMenu *) found, id=14344
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'populate_popup',14344,1,10004989,'5.0'); # type=fptr
# fptr void (*)(GtkTextView *, GtkMovementStep, gint, gboolean) found, id=14345
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'move_cursor',14345,2,10004989,'5.0'); # type=fptr
# fptr void (*)(GtkTextView *) found, id=14347
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'set_anchor',14347,3,10004989,'5.0'); # type=fptr
# fptr void (*)(GtkTextView *, const gchar *) found, id=14348
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'insert_at_cursor',14348,4,10004989,'5.0'); # type=fptr
# fptr void (*)(GtkTextView *, GtkDeleteType, gint) found, id=14349
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'delete_from_cursor',14349,5,10004989,'5.0'); # type=fptr
# fptr void (*)(GtkTextView *) found, id=14347
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'backspace',14347,6,10004989,'5.0'); # type=fptr
# fptr void (*)(GtkTextView *) found, id=14347
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cut_clipboard',14347,7,10004989,'5.0'); # type=fptr
# fptr void (*)(GtkTextView *) found, id=14347
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'copy_clipboard',14347,8,10004989,'5.0'); # type=fptr
# fptr void (*)(GtkTextView *) found, id=14347
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'paste_clipboard',14347,9,10004989,'5.0'); # type=fptr
# fptr void (*)(GtkTextView *) found, id=14347
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'toggle_overwrite',14347,10,10004989,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,11,10004989,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,12,10004989,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,13,10004989,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,14,10004989,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved5',9926,15,10004989,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved6',9926,16,10004989,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved7',9926,17,10004989,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved8',9926,18,10004989,'5.0'); # type=fptr

# _GtkInfoBarClass (expect 7 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10004555,0,10004999,'5.0'); # type=GtkBoxClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkInfoBar *, gint)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkInfoBar *, typeid=10005001, name=info_bar)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'info_bar',10005001,0,@Tid,'5.0'); # type=GtkInfoBar *
# args (pos=1, type=gint, typeid=11400, name=response_id)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'response_id',11400,1,@Tid,'5.0'); # type=gint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'response',0,1,10004999,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkInfoBar *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkInfoBar *, typeid=10005001, name=info_bar)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'info_bar',10005001,0,@Tid,'5.0'); # type=GtkInfoBar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'close',0,2,10004999,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,3,10004999,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,4,10004999,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,5,10004999,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,6,10004999,'5.0'); # type=fptr

# _GtkTextTagTableClass (expect 8 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',11867,0,10005027,'5.0'); # type=GObjectClass
# fptr void (*)(GtkTextTagTable *, GtkTextTag *, gboolean) found, id=14371
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tag_changed',14371,1,10005027,'5.0'); # type=fptr
# fptr void (*)(GtkTextTagTable *, GtkTextTag *) found, id=14372
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tag_added',14372,2,10005027,'5.0'); # type=fptr
# fptr void (*)(GtkTextTagTable *, GtkTextTag *) found, id=14372
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tag_removed',14372,3,10005027,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,4,10005027,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,5,10005027,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,6,10005027,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,7,10005027,'5.0'); # type=fptr

# _GtkSwitchClass (expect 8 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10004828,0,10005047,'5.0'); # type=GtkWidgetClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkSwitch *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkSwitch *, typeid=10005049, name=sw)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'sw',10005049,0,@Tid,'5.0'); # type=GtkSwitch *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'activate',0,1,10005047,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_switch_padding_1',9926,2,10005047,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_switch_padding_2',9926,3,10005047,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_switch_padding_3',9926,4,10005047,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_switch_padding_4',9926,5,10005047,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_switch_padding_5',9926,6,10005047,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_switch_padding_6',9926,7,10005047,'5.0'); # type=fptr

# _GtkCellRendererClass (expect 17 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10003273,0,10005062,'5.0'); # type=GInitiallyUnownedClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GtkSizeRequestMode (*)(GtkCellRenderer *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkCellRenderer *, typeid=10004514, name=cell)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell',10004514,0,@Tid,'5.0'); # type=GtkCellRenderer *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_request_mode',0,1,10005062,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellRenderer *, GtkWidget *, gint *, gint *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkCellRenderer *, typeid=10004514, name=cell)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell',10004514,0,@Tid,'5.0'); # type=GtkCellRenderer *
# args (pos=1, type=GtkWidget *, typeid=10004154, name=widget)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,1,@Tid,'5.0'); # type=GtkWidget *
# args (pos=2, type=gint *, typeid=11516, name=minimum_size)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'minimum_size',11516,2,@Tid,'5.0'); # type=gint *
# args (pos=3, type=gint *, typeid=11516, name=natural_size)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'natural_size',11516,3,@Tid,'5.0'); # type=gint *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_preferred_width',0,2,10005062,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellRenderer *, GtkWidget *, gint, gint *, gint *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkCellRenderer *, typeid=10004514, name=cell)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell',10004514,0,@Tid,'5.0'); # type=GtkCellRenderer *
# args (pos=1, type=GtkWidget *, typeid=10004154, name=widget)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,1,@Tid,'5.0'); # type=GtkWidget *
# args (pos=2, type=gint, typeid=11400, name=width)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'width',11400,2,@Tid,'5.0'); # type=gint
# args (pos=3, type=gint *, typeid=11516, name=minimum_height)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'minimum_height',11516,3,@Tid,'5.0'); # type=gint *
# args (pos=4, type=gint *, typeid=11516, name=natural_height)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'natural_height',11516,4,@Tid,'5.0'); # type=gint *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_preferred_height_for_width',0,3,10005062,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellRenderer *, GtkWidget *, gint *, gint *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkCellRenderer *, typeid=10004514, name=cell)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell',10004514,0,@Tid,'5.0'); # type=GtkCellRenderer *
# args (pos=1, type=GtkWidget *, typeid=10004154, name=widget)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,1,@Tid,'5.0'); # type=GtkWidget *
# args (pos=2, type=gint *, typeid=11516, name=minimum_size)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'minimum_size',11516,2,@Tid,'5.0'); # type=gint *
# args (pos=3, type=gint *, typeid=11516, name=natural_size)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'natural_size',11516,3,@Tid,'5.0'); # type=gint *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_preferred_height',0,4,10005062,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellRenderer *, GtkWidget *, gint, gint *, gint *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkCellRenderer *, typeid=10004514, name=cell)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell',10004514,0,@Tid,'5.0'); # type=GtkCellRenderer *
# args (pos=1, type=GtkWidget *, typeid=10004154, name=widget)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,1,@Tid,'5.0'); # type=GtkWidget *
# args (pos=2, type=gint, typeid=11400, name=height)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'height',11400,2,@Tid,'5.0'); # type=gint
# args (pos=3, type=gint *, typeid=11516, name=minimum_width)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'minimum_width',11516,3,@Tid,'5.0'); # type=gint *
# args (pos=4, type=gint *, typeid=11516, name=natural_width)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'natural_width',11516,4,@Tid,'5.0'); # type=gint *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_preferred_width_for_height',0,5,10005062,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellRenderer *, GtkWidget *, GtkCellRendererState, const GdkRectangle *, GdkRectangle *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkCellRenderer *, typeid=10004514, name=cell)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell',10004514,0,@Tid,'5.0'); # type=GtkCellRenderer *
# args (pos=1, type=GtkWidget *, typeid=10004154, name=widget)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,1,@Tid,'5.0'); # type=GtkWidget *
# args (pos=2, type=GtkCellRendererState, typeid=10005051, name=flags)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'flags',10005051,2,@Tid,'5.0'); # type=GtkCellRendererState
# args (pos=3, type=const GdkRectangle *, typeid=39913, name=cell_area)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell_area',39913,3,@Tid,'5.0'); # type=const GdkRectangle *
# args (pos=4, type=GdkRectangle *, typeid=10003975, name=aligned_area)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'aligned_area',10003975,4,@Tid,'5.0'); # type=GdkRectangle *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_aligned_area',0,6,10005062,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellRenderer *, GtkWidget *, const GdkRectangle *, gint *, gint *, gint *, gint *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkCellRenderer *, typeid=10004514, name=cell)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell',10004514,0,@Tid,'5.0'); # type=GtkCellRenderer *
# args (pos=1, type=GtkWidget *, typeid=10004154, name=widget)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,1,@Tid,'5.0'); # type=GtkWidget *
# args (pos=2, type=const GdkRectangle *, typeid=39913, name=cell_area)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell_area',39913,2,@Tid,'5.0'); # type=const GdkRectangle *
# args (pos=3, type=gint *, typeid=11516, name=x_offset)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'x_offset',11516,3,@Tid,'5.0'); # type=gint *
# args (pos=4, type=gint *, typeid=11516, name=y_offset)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'y_offset',11516,4,@Tid,'5.0'); # type=gint *
# args (pos=5, type=gint *, typeid=11516, name=width)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'width',11516,5,@Tid,'5.0'); # type=gint *
# args (pos=6, type=gint *, typeid=11516, name=height)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'height',11516,6,@Tid,'5.0'); # type=gint *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_size',0,7,10005062,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellRenderer *, cairo_t *, GtkWidget *, const GdkRectangle *, const GdkRectangle *, GtkCellRendererState)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkCellRenderer *, typeid=10004514, name=cell)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell',10004514,0,@Tid,'5.0'); # type=GtkCellRenderer *
# args (pos=1, type=cairo_t *, typeid=32487, name=cr)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cr',32487,1,@Tid,'5.0'); # type=cairo_t *
# args (pos=2, type=GtkWidget *, typeid=10004154, name=widget)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,2,@Tid,'5.0'); # type=GtkWidget *
# args (pos=3, type=const GdkRectangle *, typeid=39913, name=background_area)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'background_area',39913,3,@Tid,'5.0'); # type=const GdkRectangle *
# args (pos=4, type=const GdkRectangle *, typeid=39913, name=cell_area)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell_area',39913,4,@Tid,'5.0'); # type=const GdkRectangle *
# args (pos=5, type=GtkCellRendererState, typeid=10005051, name=flags)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'flags',10005051,5,@Tid,'5.0'); # type=GtkCellRendererState
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'render',0,8,10005062,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkCellRenderer *, GdkEvent *, GtkWidget *, const gchar *, const GdkRectangle *, const GdkRectangle *, GtkCellRendererState)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkCellRenderer *, typeid=10004514, name=cell)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell',10004514,0,@Tid,'5.0'); # type=GtkCellRenderer *
# args (pos=1, type=GdkEvent *, typeid=10003822, name=event)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'event',10003822,1,@Tid,'5.0'); # type=GdkEvent *
# args (pos=2, type=GtkWidget *, typeid=10004154, name=widget)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,2,@Tid,'5.0'); # type=GtkWidget *
# args (pos=3, type=const gchar *, typeid=11421, name=path)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'path',11421,3,@Tid,'5.0'); # type=const gchar *
# args (pos=4, type=const GdkRectangle *, typeid=39913, name=background_area)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'background_area',39913,4,@Tid,'5.0'); # type=const GdkRectangle *
# args (pos=5, type=const GdkRectangle *, typeid=39913, name=cell_area)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell_area',39913,5,@Tid,'5.0'); # type=const GdkRectangle *
# args (pos=6, type=GtkCellRendererState, typeid=10005051, name=flags)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'flags',10005051,6,@Tid,'5.0'); # type=GtkCellRendererState
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'activate',0,9,10005062,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GtkCellEditable * (*)(GtkCellRenderer *, GdkEvent *, GtkWidget *, const gchar *, const GdkRectangle *, const GdkRectangle *, GtkCellRendererState)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkCellRenderer *, typeid=10004514, name=cell)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell',10004514,0,@Tid,'5.0'); # type=GtkCellRenderer *
# args (pos=1, type=GdkEvent *, typeid=10003822, name=event)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'event',10003822,1,@Tid,'5.0'); # type=GdkEvent *
# args (pos=2, type=GtkWidget *, typeid=10004154, name=widget)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,2,@Tid,'5.0'); # type=GtkWidget *
# args (pos=3, type=const gchar *, typeid=11421, name=path)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'path',11421,3,@Tid,'5.0'); # type=const gchar *
# args (pos=4, type=const GdkRectangle *, typeid=39913, name=background_area)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'background_area',39913,4,@Tid,'5.0'); # type=const GdkRectangle *
# args (pos=5, type=const GdkRectangle *, typeid=39913, name=cell_area)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell_area',39913,5,@Tid,'5.0'); # type=const GdkRectangle *
# args (pos=6, type=GtkCellRendererState, typeid=10005051, name=flags)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'flags',10005051,6,@Tid,'5.0'); # type=GtkCellRendererState
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'start_editing',0,10,10005062,'5.0'); # type=fptr
# fptr void (*)(GtkCellRenderer *) found, id=14104
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'editing_canceled',14104,11,10005062,'5.0'); # type=fptr
# fptr void (*)(GtkCellRenderer *, GtkCellEditable *, const gchar *) found, id=14105
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'editing_started',14105,12,10005062,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'priv',0,13,10005062,'5.0'); # type=GtkCellRendererClassPrivate *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,14,10005062,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,15,10005062,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,16,10005062,'5.0'); # type=fptr

# _GtkFrameClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10004268,0,10005092,'5.0'); # type=GtkBinClass
# fptr void (*)(GtkFrame *, GtkAllocation *) found, id=14383
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'compute_child_allocation',14383,1,10005092,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,2,10005092,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,3,10005092,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,4,10005092,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,5,10005092,'5.0'); # type=fptr

# _GtkAssistantClass (expect 10 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10005883,0,10005103,'5.0'); # type=GtkWindowClass
# fptr void (*)(GtkAssistant *, GtkWidget *) found, id=40133
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'prepare',40133,1,10005103,'5.0'); # type=fptr
# fptr void (*)(GtkAssistant *) found, id=40134
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'apply',40134,2,10005103,'5.0'); # type=fptr
# fptr void (*)(GtkAssistant *) found, id=40134
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'close',40134,3,10005103,'5.0'); # type=fptr
# fptr void (*)(GtkAssistant *) found, id=40134
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cancel',40134,4,10005103,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,5,10005103,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,6,10005103,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,7,10005103,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,8,10005103,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved5',9926,9,10005103,'5.0'); # type=fptr

# _GtkToolItemClass (expect 7 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10004268,0,10005119,'5.0'); # type=GtkBinClass
# fptr gboolean (*)(GtkToolItem *) found, id=13992
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'create_menu_proxy',13992,1,10005119,'5.0'); # type=fptr
# fptr void (*)(GtkToolItem *) found, id=13993
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'toolbar_reconfigured',13993,2,10005119,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,3,10005119,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,4,10005119,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,5,10005119,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,6,10005119,'5.0'); # type=fptr

# _GtkTextAppearance (expect 10 members, found 12 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'bg_color',10004011,0,10005123,'5.0'); # type=GdkColor
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'fg_color',10004011,1,10005123,'5.0'); # type=GdkColor
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'rise',11400,2,10005123,'5.0'); # type=gint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'4',0,3,10005123,'5.0'); # type=guint underline :
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'1',0,4,10005123,'5.0'); # type=guint strikethrough :
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'1',0,5,10005123,'5.0'); # type=guint draw_bg :
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'1',0,6,10005123,'5.0'); # type=guint inside_selection :
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'1',0,7,10005123,'5.0'); # type=guint is_text :
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'rgba',10003790,8,10005123,'5.0'); # type=GdkRGBA *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'padding',0,9,10005123,'5.0'); # type=#if (defined(__SIZEOF_INT__) && defined(__SIZEOF_POINTER__)) && (__SIZEOF_INT__ == __SIZEOF_POINTER__)
  
  guint

# _GtkPrintOperationPreviewIface (expect 14 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'g_iface',11997,0,10005164,'5.0'); # type=GTypeInterface
# fptr void (*)(GtkPrintOperationPreview *, GtkPrintContext *) found, id=40068
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'ready',40068,1,10005164,'5.0'); # type=fptr
# fptr void (*)(GtkPrintOperationPreview *, GtkPrintContext *, GtkPageSetup *) found, id=40069
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'got_page_size',40069,2,10005164,'5.0'); # type=fptr
# fptr void (*)(GtkPrintOperationPreview *, gint) found, id=40070
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'render_page',40070,3,10005164,'5.0'); # type=fptr
# fptr gboolean (*)(GtkPrintOperationPreview *, gint) found, id=40071
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'is_selected',40071,4,10005164,'5.0'); # type=fptr
# fptr void (*)(GtkPrintOperationPreview *) found, id=40072
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'end_preview',40072,5,10005164,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,6,10005164,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,7,10005164,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,8,10005164,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,9,10005164,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved5',9926,10,10005164,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved6',9926,11,10005164,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved7',9926,12,10005164,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved8',9926,13,10005164,'5.0'); # type=fptr

# _GtkToggleActionClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10005315,0,10005173,'5.0'); # type=GtkActionClass
# fptr void (*)(GtkToggleAction *) found, id=14027
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'toggled',14027,1,10005173,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,2,10005173,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,3,10005173,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,4,10005173,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,5,10005173,'5.0'); # type=fptr

# _GtkCssProviderClass (expect 5 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',11867,0,10005184,'5.0'); # type=GObjectClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCssProvider *, GtkCssSection *, const GError *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkCssProvider *, typeid=10005186, name=provider)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'provider',10005186,0,@Tid,'5.0'); # type=GtkCssProvider *
# args (pos=1, type=GtkCssSection *, typeid=10005237, name=section)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'section',10005237,1,@Tid,'5.0'); # type=GtkCssSection *
# args (pos=2, type=const GError *, typeid=11419, name=error)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'error',11419,2,@Tid,'5.0'); # type=const GError *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parsing_error',0,1,10005184,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,2,10005184,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,3,10005184,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,4,10005184,'5.0'); # type=fptr

# _GtkTreeModelFilterClass (expect 7 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',11867,0,10005197,'5.0'); # type=GObjectClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkTreeModelFilter *, GtkTreeModel *, GtkTreeIter *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkTreeModelFilter *, typeid=10005199, name=self)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'self',10005199,0,@Tid,'5.0'); # type=GtkTreeModelFilter *
# args (pos=1, type=GtkTreeModel *, typeid=10004486, name=child_model)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'child_model',10004486,1,@Tid,'5.0'); # type=GtkTreeModel *
# args (pos=2, type=GtkTreeIter *, typeid=10004490, name=iter)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'iter',10004490,2,@Tid,'5.0'); # type=GtkTreeIter *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'visible',0,1,10005197,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkTreeModelFilter *, GtkTreeModel *, GtkTreeIter *, GValue *, gint)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkTreeModelFilter *, typeid=10005199, name=self)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'self',10005199,0,@Tid,'5.0'); # type=GtkTreeModelFilter *
# args (pos=1, type=GtkTreeModel *, typeid=10004486, name=child_model)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'child_model',10004486,1,@Tid,'5.0'); # type=GtkTreeModel *
# args (pos=2, type=GtkTreeIter *, typeid=10004490, name=iter)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'iter',10004490,2,@Tid,'5.0'); # type=GtkTreeIter *
# args (pos=3, type=GValue *, typeid=11849, name=value)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'value',11849,3,@Tid,'5.0'); # type=GValue *
# args (pos=4, type=gint, typeid=11400, name=column)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'column',11400,4,@Tid,'5.0'); # type=gint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'modify',0,2,10005197,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,3,10005197,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,4,10005197,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,5,10005197,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,6,10005197,'5.0'); # type=fptr

# _GtkSocketClass (expect 7 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10006175,0,10005222,'5.0'); # type=GtkContainerClass
# fptr void (*)(GtkSocket *) found, id=14154
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'plug_added',14154,1,10005222,'5.0'); # type=fptr
# fptr gboolean (*)(GtkSocket *) found, id=14155
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'plug_removed',14155,2,10005222,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,3,10005222,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,4,10005222,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,5,10005222,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,6,10005222,'5.0'); # type=fptr

# _GtkMenuItemClass (expect 14 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10004268,0,10005261,'5.0'); # type=GtkBinClass
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'1',0,1,10005261,'5.0'); # type=guint hide_on_activate :
# fptr void (*)(GtkMenuItem *) found, id=14005
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'activate',14005,2,10005261,'5.0'); # type=fptr
# fptr void (*)(GtkMenuItem *) found, id=14005
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'activate_item',14005,3,10005261,'5.0'); # type=fptr
# fptr void (*)(GtkMenuItem *, gint *) found, id=14006
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'toggle_size_request',14006,4,10005261,'5.0'); # type=fptr
# fptr void (*)(GtkMenuItem *, gint) found, id=14007
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'toggle_size_allocate',14007,5,10005261,'5.0'); # type=fptr
# fptr void (*)(GtkMenuItem *, const gchar *) found, id=40608
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'set_label',40608,6,10005261,'5.0'); # type=fptr
# fptr const gchar * (*)(GtkMenuItem *) found, id=40609
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_label',40609,7,10005261,'5.0'); # type=fptr
# fptr void (*)(GtkMenuItem *) found, id=14005
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'select',14005,8,10005261,'5.0'); # type=fptr
# fptr void (*)(GtkMenuItem *) found, id=14005
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'deselect',14005,9,10005261,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,10,10005261,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,11,10005261,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,12,10005261,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,13,10005261,'5.0'); # type=fptr

# _GtkActionGroupClass (expect 7 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',11867,0,10005276,'5.0'); # type=GObjectClass
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'action_name',0,1,10005276,'5.0'); # type=GtkAction *(* get_action) (GtkActionGroup *action_group,
                             const gchar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'action_name',0,2,10005276,'5.0'); # type=GtkAction *(* get_action) (GtkActionGroup *action_group,
                             const gchar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,3,10005276,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,4,10005276,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,5,10005276,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,6,10005276,'5.0'); # type=fptr

# _GtkPanedClass (expect 11 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10006175,0,10005305,'5.0'); # type=GtkContainerClass
# fptr gboolean (*)(GtkPaned *, gboolean) found, id=13948
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cycle_child_focus',13948,1,10005305,'5.0'); # type=fptr
# fptr gboolean (*)(GtkPaned *) found, id=13949
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'toggle_handle_focus',13949,2,10005305,'5.0'); # type=fptr
# fptr gboolean (*)(GtkPaned *, GtkScrollType) found, id=13950
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'move_handle',13950,3,10005305,'5.0'); # type=fptr
# fptr gboolean (*)(GtkPaned *, gboolean) found, id=13948
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cycle_handle_focus',13948,4,10005305,'5.0'); # type=fptr
# fptr gboolean (*)(GtkPaned *) found, id=13949
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'accept_position',13949,5,10005305,'5.0'); # type=fptr
# fptr gboolean (*)(GtkPaned *) found, id=13949
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cancel_position',13949,6,10005305,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,7,10005305,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,8,10005305,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,9,10005305,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,10,10005305,'5.0'); # type=fptr

# _GtkEditableInterface (expect 11 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'base_iface',0,0,10005311,'5.0'); # type=GTypeInterface		  
# fptr void (*)(GtkEditable *, const gchar *, gint, gint *) found, id=13961
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'insert_text',13961,1,10005311,'5.0'); # type=fptr
# fptr void (*)(GtkEditable *, gint, gint) found, id=13962
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'delete_text',13962,2,10005311,'5.0'); # type=fptr
# fptr void (*)(GtkEditable *) found, id=13963
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'changed',13963,3,10005311,'5.0'); # type=fptr
# fptr void (*)(GtkEditable *, const gchar *, gint, gint *) found, id=13961
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'do_insert_text',13961,4,10005311,'5.0'); # type=fptr
# fptr void (*)(GtkEditable *, gint, gint) found, id=13962
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'do_delete_text',13962,5,10005311,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gchar* (*)(GtkEditable *, gint, gint)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkEditable *, typeid=10005313, name=editable)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'editable',10005313,0,@Tid,'5.0'); # type=GtkEditable *
# args (pos=1, type=gint, typeid=11400, name=start_pos)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'start_pos',11400,1,@Tid,'5.0'); # type=gint
# args (pos=2, type=gint, typeid=11400, name=end_pos)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'end_pos',11400,2,@Tid,'5.0'); # type=gint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_chars',0,6,10005311,'5.0'); # type=fptr
# fptr void (*)(GtkEditable *, gint, gint) found, id=13962
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'set_selection_bounds',13962,7,10005311,'5.0'); # type=fptr
# fptr gboolean (*)(GtkEditable *, gint *, gint *) found, id=13965
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_selection_bounds',13965,8,10005311,'5.0'); # type=fptr
# fptr void (*)(GtkEditable *, gint) found, id=13966
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'set_position',13966,9,10005311,'5.0'); # type=fptr
# fptr gint (*)(GtkEditable *) found, id=13967
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_position',13967,10,10005311,'5.0'); # type=fptr

# _GtkActionClass (expect 13 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',11867,0,10005320,'5.0'); # type=GObjectClass
# fptr void (*)(GtkAction *) found, id=14023
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'activate',14023,1,10005320,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'menu_item_type',11836,2,10005320,'5.0'); # type=GType     
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'toolbar_item_type',11836,3,10005320,'5.0'); # type=GType     
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'action',0,4,10005320,'5.0'); # type=GtkWidget *(* create_menu_item)   (GtkAction *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'action',0,5,10005320,'5.0'); # type=GtkWidget *(* create_tool_item)   (GtkAction *
# fptr void (*)(GtkAction *, GtkWidget *) found, id=14025
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'connect_proxy',14025,6,10005320,'5.0'); # type=fptr
# fptr void (*)(GtkAction *, GtkWidget *) found, id=14025
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'disconnect_proxy',14025,7,10005320,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'action',0,8,10005320,'5.0'); # type=GtkWidget *(* create_menu)        (GtkAction *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,9,10005320,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,10,10005320,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,11,10005320,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,12,10005320,'5.0'); # type=fptr

# _GtkScrolledWindowClass (expect 8 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10004268,0,10005328,'5.0'); # type=GtkBinClass
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'scrollbar_spacing',11400,1,10005328,'5.0'); # type=gint
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkScrolledWindow *, GtkScrollType, gboolean)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkScrolledWindow *, typeid=10005330, name=scrolled_window)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'scrolled_window',10005330,0,@Tid,'5.0'); # type=GtkScrolledWindow *
# args (pos=1, type=GtkScrollType, typeid=10005621, name=scroll)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'scroll',10005621,1,@Tid,'5.0'); # type=GtkScrollType
# args (pos=2, type=gboolean, typeid=11401, name=horizontal)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'horizontal',11401,2,@Tid,'5.0'); # type=gboolean
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'scroll_child',0,2,10005328,'5.0'); # type=fptr
# fptr void (*)(GtkScrolledWindow *, GtkDirectionType) found, id=14391
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'move_focus_out',14391,3,10005328,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,4,10005328,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,5,10005328,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,6,10005328,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,7,10005328,'5.0'); # type=fptr

# _GtkScaleClass (expect 8 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10004466,0,10005338,'5.0'); # type=GtkRangeClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gchar* (*)(GtkScale *, gdouble)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkScale *, typeid=10005340, name=scale)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'scale',10005340,0,@Tid,'5.0'); # type=GtkScale *
# args (pos=1, type=gdouble, typeid=11598, name=value)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'value',11598,1,@Tid,'5.0'); # type=gdouble
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'format_value',0,1,10005338,'5.0'); # type=fptr
# fptr void (*)(GtkScale *) found, id=13935
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'draw_value',13935,2,10005338,'5.0'); # type=fptr
# fptr void (*)(GtkScale *, gint *, gint *) found, id=13936
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_layout_offsets',13936,3,10005338,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,4,10005338,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,5,10005338,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,6,10005338,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,7,10005338,'5.0'); # type=fptr

# _GtkCellRendererTextClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10005057,0,10005363,'5.0'); # type=GtkCellRendererClass
# fptr void (*)(GtkCellRendererText *, const gchar *, const gchar *) found, id=14204
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'edited',14204,1,10005363,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,2,10005363,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,3,10005363,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,4,10005363,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,5,10005363,'5.0'); # type=fptr

# _GtkTextTagClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',11867,0,10005381,'5.0'); # type=GObjectClass
# fptr gboolean (*)(GtkTextTag *, GObject *, GdkEvent *, const GtkTextIter *) found, id=14500
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'event',14500,1,10005381,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,2,10005381,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,3,10005381,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,4,10005381,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,5,10005381,'5.0'); # type=fptr

# _GtkApplicationClass (expect 4 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10002772,0,10005391,'5.0'); # type=GApplicationClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkApplication *, GtkWindow *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkApplication *, typeid=10005393, name=application)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'application',10005393,0,@Tid,'5.0'); # type=GtkApplication *
# args (pos=1, type=GtkWindow *, typeid=10004264, name=window)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'window',10004264,1,@Tid,'5.0'); # type=GtkWindow *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'window_added',0,1,10005391,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkApplication *, GtkWindow *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkApplication *, typeid=10005393, name=application)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'application',10005393,0,@Tid,'5.0'); # type=GtkApplication *
# args (pos=1, type=GtkWindow *, typeid=10004264, name=window)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'window',10004264,1,@Tid,'5.0'); # type=GtkWindow *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'window_removed',0,2,10005391,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'padding',11404,3,10005391,'5.0'); # type=gpointer

# _GtkRadioMenuItemClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10005495,0,10005422,'5.0'); # type=GtkCheckMenuItemClass
# fptr void (*)(GtkRadioMenuItem *) found, id=14340
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'group_changed',14340,1,10005422,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,2,10005422,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,3,10005422,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,4,10005422,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,5,10005422,'5.0'); # type=fptr

# _GtkStyleProviderIface (expect 4 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'g_iface',11997,0,10005464,'5.0'); # type=GTypeInterface
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GtkStyleProperties * (*)(GtkStyleProvider *, GtkWidgetPath *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkStyleProvider *, typeid=10005466, name=provider)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'provider',10005466,0,@Tid,'5.0'); # type=GtkStyleProvider *
# args (pos=1, type=GtkWidgetPath *, typeid=10004859, name=path)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'path',10004859,1,@Tid,'5.0'); # type=GtkWidgetPath *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_style',0,1,10005464,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkStyleProvider *, GtkWidgetPath *, GtkStateFlags, GParamSpec *, GValue *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkStyleProvider *, typeid=10005466, name=provider)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'provider',10005466,0,@Tid,'5.0'); # type=GtkStyleProvider *
# args (pos=1, type=GtkWidgetPath *, typeid=10004859, name=path)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'path',10004859,1,@Tid,'5.0'); # type=GtkWidgetPath *
# args (pos=2, type=GtkStateFlags, typeid=10005667, name=state)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'state',10005667,2,@Tid,'5.0'); # type=GtkStateFlags
# args (pos=3, type=GParamSpec *, typeid=11854, name=pspec)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'pspec',11854,3,@Tid,'5.0'); # type=GParamSpec *
# args (pos=4, type=GValue *, typeid=11849, name=value)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'value',11849,4,@Tid,'5.0'); # type=GValue *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_style_property',0,2,10005464,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GtkIconFactory * (*)(GtkStyleProvider *, GtkWidgetPath *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkStyleProvider *, typeid=10005466, name=provider)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'provider',10005466,0,@Tid,'5.0'); # type=GtkStyleProvider *
# args (pos=1, type=GtkWidgetPath *, typeid=10004859, name=path)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'path',10004859,1,@Tid,'5.0'); # type=GtkWidgetPath *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_icon_factory',0,3,10005464,'5.0'); # type=fptr

# _GtkEntryCompletionClass (expect 9 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',11867,0,10005485,'5.0'); # type=GObjectClass
# fptr gboolean (*)(GtkEntryCompletion *, GtkTreeModel *, GtkTreeIter *) found, id=14307
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'match_selected',14307,1,10005485,'5.0'); # type=fptr
# fptr void (*)(GtkEntryCompletion *, gint) found, id=14308
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'action_activated',14308,2,10005485,'5.0'); # type=fptr
# fptr gboolean (*)(GtkEntryCompletion *, const gchar *) found, id=14309
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'insert_prefix',14309,3,10005485,'5.0'); # type=fptr
# fptr gboolean (*)(GtkEntryCompletion *, GtkTreeModel *, GtkTreeIter *) found, id=14307
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cursor_on_match',14307,4,10005485,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved0',9926,5,10005485,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,6,10005485,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,7,10005485,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,8,10005485,'5.0'); # type=fptr

# _GtkCellEditableIface (expect 4 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'g_iface',11997,0,10005490,'5.0'); # type=GTypeInterface
# fptr void (*)(GtkCellEditable *) found, id=14357
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'editing_done',14357,1,10005490,'5.0'); # type=fptr
# fptr void (*)(GtkCellEditable *) found, id=14357
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'remove_widget',14357,2,10005490,'5.0'); # type=fptr
# fptr void (*)(GtkCellEditable *, GdkEvent *) found, id=14358
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'start_editing',14358,3,10005490,'5.0'); # type=fptr

# _GtkCheckMenuItemClass (expect 7 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10005256,0,10005498,'5.0'); # type=GtkMenuItemClass
# fptr void (*)(GtkCheckMenuItem *) found, id=14009
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'toggled',14009,1,10005498,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCheckMenuItem *, cairo_t *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkCheckMenuItem *, typeid=10005500, name=check_menu_item)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'check_menu_item',10005500,0,@Tid,'5.0'); # type=GtkCheckMenuItem *
# args (pos=1, type=cairo_t *, typeid=32487, name=cr)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cr',32487,1,@Tid,'5.0'); # type=cairo_t *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'draw_indicator',0,2,10005498,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,3,10005498,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,4,10005498,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,5,10005498,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,6,10005498,'5.0'); # type=fptr

# _GtkFontButtonClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10005564,0,10005516,'5.0'); # type=GtkButtonClass
# fptr void (*)(GtkFontButton *) found, id=14424
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'font_set',14424,1,10005516,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,2,10005516,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,3,10005516,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,4,10005516,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,5,10005516,'5.0'); # type=fptr

# _GtkBuildableIface (expect 11 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'g_iface',11997,0,10005554,'5.0'); # type=GTypeInterface
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkBuildable *, const gchar *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkBuildable *, typeid=10005556, name=buildable)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'buildable',10005556,0,@Tid,'5.0'); # type=GtkBuildable *
# args (pos=1, type=const gchar *, typeid=11421, name=name)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'name',11421,1,@Tid,'5.0'); # type=const gchar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'set_name',0,1,10005554,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'const gchar * (*)(GtkBuildable *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkBuildable *, typeid=10005556, name=buildable)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'buildable',10005556,0,@Tid,'5.0'); # type=GtkBuildable *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_name',0,2,10005554,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkBuildable *, GtkBuilder *, GObject *, const gchar *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkBuildable *, typeid=10005556, name=buildable)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'buildable',10005556,0,@Tid,'5.0'); # type=GtkBuildable *
# args (pos=1, type=GtkBuilder *, typeid=10005557, name=builder)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'builder',10005557,1,@Tid,'5.0'); # type=GtkBuilder *
# args (pos=2, type=GObject *, typeid=11841, name=child)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'child',11841,2,@Tid,'5.0'); # type=GObject *
# args (pos=3, type=const gchar *, typeid=11421, name=type)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'type',11421,3,@Tid,'5.0'); # type=const gchar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'add_child',0,3,10005554,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkBuildable *, GtkBuilder *, const gchar *, const GValue *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkBuildable *, typeid=10005556, name=buildable)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'buildable',10005556,0,@Tid,'5.0'); # type=GtkBuildable *
# args (pos=1, type=GtkBuilder *, typeid=10005557, name=builder)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'builder',10005557,1,@Tid,'5.0'); # type=GtkBuilder *
# args (pos=2, type=const gchar *, typeid=11421, name=name)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'name',11421,2,@Tid,'5.0'); # type=const gchar *
# args (pos=3, type=const GValue *, typeid=11848, name=value)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'value',11848,3,@Tid,'5.0'); # type=const GValue *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'set_buildable_property',0,4,10005554,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GObject * (*)(GtkBuildable *, GtkBuilder *, const gchar *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkBuildable *, typeid=10005556, name=buildable)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'buildable',10005556,0,@Tid,'5.0'); # type=GtkBuildable *
# args (pos=1, type=GtkBuilder *, typeid=10005557, name=builder)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'builder',10005557,1,@Tid,'5.0'); # type=GtkBuilder *
# args (pos=2, type=const gchar *, typeid=11421, name=name)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'name',11421,2,@Tid,'5.0'); # type=const gchar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'construct_child',0,5,10005554,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkBuildable *, GtkBuilder *, GObject *, const gchar *, GMarkupParser *, gpointer *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkBuildable *, typeid=10005556, name=buildable)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'buildable',10005556,0,@Tid,'5.0'); # type=GtkBuildable *
# args (pos=1, type=GtkBuilder *, typeid=10005557, name=builder)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'builder',10005557,1,@Tid,'5.0'); # type=GtkBuilder *
# args (pos=2, type=GObject *, typeid=11841, name=child)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'child',11841,2,@Tid,'5.0'); # type=GObject *
# args (pos=3, type=const gchar *, typeid=11421, name=tagname)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tagname',11421,3,@Tid,'5.0'); # type=const gchar *
# args (pos=4, type=GMarkupParser *, typeid=10005558, name=parser)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parser',10005558,4,@Tid,'5.0'); # type=GMarkupParser *
# args (pos=5, type=gpointer *, typeid=11458, name=data)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'data',11458,5,@Tid,'5.0'); # type=gpointer *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'custom_tag_start',0,6,10005554,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkBuildable *, GtkBuilder *, GObject *, const gchar *, gpointer *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkBuildable *, typeid=10005556, name=buildable)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'buildable',10005556,0,@Tid,'5.0'); # type=GtkBuildable *
# args (pos=1, type=GtkBuilder *, typeid=10005557, name=builder)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'builder',10005557,1,@Tid,'5.0'); # type=GtkBuilder *
# args (pos=2, type=GObject *, typeid=11841, name=child)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'child',11841,2,@Tid,'5.0'); # type=GObject *
# args (pos=3, type=const gchar *, typeid=11421, name=tagname)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tagname',11421,3,@Tid,'5.0'); # type=const gchar *
# args (pos=4, type=gpointer *, typeid=11458, name=data)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'data',11458,4,@Tid,'5.0'); # type=gpointer *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'custom_tag_end',0,7,10005554,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkBuildable *, GtkBuilder *, GObject *, const gchar *, gpointer)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkBuildable *, typeid=10005556, name=buildable)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'buildable',10005556,0,@Tid,'5.0'); # type=GtkBuildable *
# args (pos=1, type=GtkBuilder *, typeid=10005557, name=builder)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'builder',10005557,1,@Tid,'5.0'); # type=GtkBuilder *
# args (pos=2, type=GObject *, typeid=11841, name=child)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'child',11841,2,@Tid,'5.0'); # type=GObject *
# args (pos=3, type=const gchar *, typeid=11421, name=tagname)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tagname',11421,3,@Tid,'5.0'); # type=const gchar *
# args (pos=4, type=gpointer, typeid=11404, name=data)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'data',11404,4,@Tid,'5.0'); # type=gpointer
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'custom_finished',0,8,10005554,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkBuildable *, GtkBuilder *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkBuildable *, typeid=10005556, name=buildable)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'buildable',10005556,0,@Tid,'5.0'); # type=GtkBuildable *
# args (pos=1, type=GtkBuilder *, typeid=10005557, name=builder)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'builder',10005557,1,@Tid,'5.0'); # type=GtkBuilder *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parser_finished',0,9,10005554,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GObject * (*)(GtkBuildable *, GtkBuilder *, const gchar *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkBuildable *, typeid=10005556, name=buildable)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'buildable',10005556,0,@Tid,'5.0'); # type=GtkBuildable *
# args (pos=1, type=GtkBuilder *, typeid=10005557, name=builder)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'builder',10005557,1,@Tid,'5.0'); # type=GtkBuilder *
# args (pos=2, type=const gchar *, typeid=11421, name=childname)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'childname',11421,2,@Tid,'5.0'); # type=const gchar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_internal_child',0,10,10005554,'5.0'); # type=fptr

# _GtkButtonClass (expect 11 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',0,0,10005567,'5.0'); # type=GtkBinClass       
# fptr void (*)(GtkButton *) found, id=14049
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'pressed',14049,1,10005567,'5.0'); # type=fptr
# fptr void (*)(GtkButton *) found, id=14049
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'released',14049,2,10005567,'5.0'); # type=fptr
# fptr void (*)(GtkButton *) found, id=14049
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'clicked',14049,3,10005567,'5.0'); # type=fptr
# fptr void (*)(GtkButton *) found, id=14049
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'enter',14049,4,10005567,'5.0'); # type=fptr
# fptr void (*)(GtkButton *) found, id=14049
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'leave',14049,5,10005567,'5.0'); # type=fptr
# fptr void (*)(GtkButton *) found, id=14049
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'activate',14049,6,10005567,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,7,10005567,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,8,10005567,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,9,10005567,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,10,10005567,'5.0'); # type=fptr

# _GtkAccelGroupClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',11867,0,10005695,'5.0'); # type=GObjectClass
# fptr void (*)(GtkAccelGroup *, guint, GdkModifierType, GClosure *) found, id=14044
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'accel_changed',14044,1,10005695,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,2,10005695,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,3,10005695,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,4,10005695,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,5,10005695,'5.0'); # type=fptr

# _GtkAppChooserWidgetClass (expect 5 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10004555,0,10005723,'5.0'); # type=GtkBoxClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkAppChooserWidget *, GAppInfo *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkAppChooserWidget *, typeid=10005724, name=self)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'self',10005724,0,@Tid,'5.0'); # type=GtkAppChooserWidget *
# args (pos=1, type=GAppInfo *, typeid=10002988, name=app_info)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'app_info',10002988,1,@Tid,'5.0'); # type=GAppInfo *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'application_selected',0,1,10005723,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkAppChooserWidget *, GAppInfo *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkAppChooserWidget *, typeid=10005724, name=self)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'self',10005724,0,@Tid,'5.0'); # type=GtkAppChooserWidget *
# args (pos=1, type=GAppInfo *, typeid=10002988, name=app_info)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'app_info',10002988,1,@Tid,'5.0'); # type=GAppInfo *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'application_activated',0,2,10005723,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkAppChooserWidget *, GtkMenu *, GAppInfo *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkAppChooserWidget *, typeid=10005724, name=self)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'self',10005724,0,@Tid,'5.0'); # type=GtkAppChooserWidget *
# args (pos=1, type=GtkMenu *, typeid=10004548, name=menu)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'menu',10004548,1,@Tid,'5.0'); # type=GtkMenu *
# args (pos=2, type=GAppInfo *, typeid=10002988, name=app_info)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'app_info',10002988,2,@Tid,'5.0'); # type=GAppInfo *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'populate_popup',0,3,10005723,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'padding',11404,4,10005723,'5.0'); # type=gpointer

# _GtkCellAreaClass (expect 29 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10003273,0,10005746,'5.0'); # type=GInitiallyUnownedClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellArea *, GtkCellRenderer *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkCellArea *, typeid=10004520, name=area)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'area',10004520,0,@Tid,'5.0'); # type=GtkCellArea *
# args (pos=1, type=GtkCellRenderer *, typeid=10004514, name=renderer)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'renderer',10004514,1,@Tid,'5.0'); # type=GtkCellRenderer *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'add',0,1,10005746,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellArea *, GtkCellRenderer *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkCellArea *, typeid=10004520, name=area)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'area',10004520,0,@Tid,'5.0'); # type=GtkCellArea *
# args (pos=1, type=GtkCellRenderer *, typeid=10004514, name=renderer)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'renderer',10004514,1,@Tid,'5.0'); # type=GtkCellRenderer *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'remove',0,2,10005746,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellArea *, GtkCellCallback, gpointer)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkCellArea *, typeid=10004520, name=area)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'area',10004520,0,@Tid,'5.0'); # type=GtkCellArea *
# args (pos=1, type=GtkCellCallback, typeid=10005740, name=callback)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'callback',10005740,1,@Tid,'5.0'); # type=GtkCellCallback
# args (pos=2, type=gpointer, typeid=11404, name=callback_data)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'callback_data',11404,2,@Tid,'5.0'); # type=gpointer
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'foreach',0,3,10005746,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellArea *, GtkCellAreaContext *, GtkWidget *, const GdkRectangle *, const GdkRectangle *, GtkCellAllocCallback, gpointer)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkCellArea *, typeid=10004520, name=area)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'area',10004520,0,@Tid,'5.0'); # type=GtkCellArea *
# args (pos=1, type=GtkCellAreaContext *, typeid=10005248, name=context)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10005248,1,@Tid,'5.0'); # type=GtkCellAreaContext *
# args (pos=2, type=GtkWidget *, typeid=10004154, name=widget)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,2,@Tid,'5.0'); # type=GtkWidget *
# args (pos=3, type=const GdkRectangle *, typeid=39913, name=cell_area)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell_area',39913,3,@Tid,'5.0'); # type=const GdkRectangle *
# args (pos=4, type=const GdkRectangle *, typeid=39913, name=background_area)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'background_area',39913,4,@Tid,'5.0'); # type=const GdkRectangle *
# args (pos=5, type=GtkCellAllocCallback, typeid=10005742, name=callback)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'callback',10005742,5,@Tid,'5.0'); # type=GtkCellAllocCallback
# args (pos=6, type=gpointer, typeid=11404, name=callback_data)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'callback_data',11404,6,@Tid,'5.0'); # type=gpointer
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'foreach_alloc',0,4,10005746,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gint (*)(GtkCellArea *, GtkCellAreaContext *, GtkWidget *, GdkEvent *, const GdkRectangle *, GtkCellRendererState)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkCellArea *, typeid=10004520, name=area)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'area',10004520,0,@Tid,'5.0'); # type=GtkCellArea *
# args (pos=1, type=GtkCellAreaContext *, typeid=10005248, name=context)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10005248,1,@Tid,'5.0'); # type=GtkCellAreaContext *
# args (pos=2, type=GtkWidget *, typeid=10004154, name=widget)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,2,@Tid,'5.0'); # type=GtkWidget *
# args (pos=3, type=GdkEvent *, typeid=10003822, name=event)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'event',10003822,3,@Tid,'5.0'); # type=GdkEvent *
# args (pos=4, type=const GdkRectangle *, typeid=39913, name=cell_area)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell_area',39913,4,@Tid,'5.0'); # type=const GdkRectangle *
# args (pos=5, type=GtkCellRendererState, typeid=10005051, name=flags)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'flags',10005051,5,@Tid,'5.0'); # type=GtkCellRendererState
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'event',0,5,10005746,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellArea *, GtkCellAreaContext *, GtkWidget *, cairo_t *, const GdkRectangle *, const GdkRectangle *, GtkCellRendererState, gboolean)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkCellArea *, typeid=10004520, name=area)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'area',10004520,0,@Tid,'5.0'); # type=GtkCellArea *
# args (pos=1, type=GtkCellAreaContext *, typeid=10005248, name=context)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10005248,1,@Tid,'5.0'); # type=GtkCellAreaContext *
# args (pos=2, type=GtkWidget *, typeid=10004154, name=widget)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,2,@Tid,'5.0'); # type=GtkWidget *
# args (pos=3, type=cairo_t *, typeid=32487, name=cr)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cr',32487,3,@Tid,'5.0'); # type=cairo_t *
# args (pos=4, type=const GdkRectangle *, typeid=39913, name=background_area)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'background_area',39913,4,@Tid,'5.0'); # type=const GdkRectangle *
# args (pos=5, type=const GdkRectangle *, typeid=39913, name=cell_area)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell_area',39913,5,@Tid,'5.0'); # type=const GdkRectangle *
# args (pos=6, type=GtkCellRendererState, typeid=10005051, name=flags)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'flags',10005051,6,@Tid,'5.0'); # type=GtkCellRendererState
# args (pos=7, type=gboolean, typeid=11401, name=paint_focus)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'paint_focus',11401,7,@Tid,'5.0'); # type=gboolean
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'render',0,6,10005746,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellArea *, GtkTreeModel *, GtkTreeIter *, gboolean, gboolean)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkCellArea *, typeid=10004520, name=area)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'area',10004520,0,@Tid,'5.0'); # type=GtkCellArea *
# args (pos=1, type=GtkTreeModel *, typeid=10004486, name=tree_model)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tree_model',10004486,1,@Tid,'5.0'); # type=GtkTreeModel *
# args (pos=2, type=GtkTreeIter *, typeid=10004490, name=iter)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'iter',10004490,2,@Tid,'5.0'); # type=GtkTreeIter *
# args (pos=3, type=gboolean, typeid=11401, name=is_expander)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'is_expander',11401,3,@Tid,'5.0'); # type=gboolean
# args (pos=4, type=gboolean, typeid=11401, name=is_expanded)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'is_expanded',11401,4,@Tid,'5.0'); # type=gboolean
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'apply_attributes',0,7,10005746,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'area',0,8,10005746,'5.0'); # type=GtkCellAreaContext *(* create_context)                 (GtkCellArea *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',0,9,10005746,'5.0'); # type=GtkCellAreaContext *(* copy_context)                   (GtkCellArea             *area,
                                                          GtkCellAreaContext *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',0,10,10005746,'5.0'); # type=GtkCellAreaContext *(* copy_context)                   (GtkCellArea             *area,
                                                          GtkCellAreaContext *
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GtkSizeRequestMode (*)(GtkCellArea *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkCellArea *, typeid=10004520, name=area)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'area',10004520,0,@Tid,'5.0'); # type=GtkCellArea *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_request_mode',0,11,10005746,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellArea *, GtkCellAreaContext *, GtkWidget *, gint *, gint *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkCellArea *, typeid=10004520, name=area)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'area',10004520,0,@Tid,'5.0'); # type=GtkCellArea *
# args (pos=1, type=GtkCellAreaContext *, typeid=10005248, name=context)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10005248,1,@Tid,'5.0'); # type=GtkCellAreaContext *
# args (pos=2, type=GtkWidget *, typeid=10004154, name=widget)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,2,@Tid,'5.0'); # type=GtkWidget *
# args (pos=3, type=gint *, typeid=11516, name=minimum_width)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'minimum_width',11516,3,@Tid,'5.0'); # type=gint *
# args (pos=4, type=gint *, typeid=11516, name=natural_width)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'natural_width',11516,4,@Tid,'5.0'); # type=gint *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_preferred_width',0,12,10005746,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellArea *, GtkCellAreaContext *, GtkWidget *, gint, gint *, gint *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkCellArea *, typeid=10004520, name=area)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'area',10004520,0,@Tid,'5.0'); # type=GtkCellArea *
# args (pos=1, type=GtkCellAreaContext *, typeid=10005248, name=context)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10005248,1,@Tid,'5.0'); # type=GtkCellAreaContext *
# args (pos=2, type=GtkWidget *, typeid=10004154, name=widget)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,2,@Tid,'5.0'); # type=GtkWidget *
# args (pos=3, type=gint, typeid=11400, name=width)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'width',11400,3,@Tid,'5.0'); # type=gint
# args (pos=4, type=gint *, typeid=11516, name=minimum_height)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'minimum_height',11516,4,@Tid,'5.0'); # type=gint *
# args (pos=5, type=gint *, typeid=11516, name=natural_height)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'natural_height',11516,5,@Tid,'5.0'); # type=gint *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_preferred_height_for_width',0,13,10005746,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellArea *, GtkCellAreaContext *, GtkWidget *, gint *, gint *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkCellArea *, typeid=10004520, name=area)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'area',10004520,0,@Tid,'5.0'); # type=GtkCellArea *
# args (pos=1, type=GtkCellAreaContext *, typeid=10005248, name=context)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10005248,1,@Tid,'5.0'); # type=GtkCellAreaContext *
# args (pos=2, type=GtkWidget *, typeid=10004154, name=widget)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,2,@Tid,'5.0'); # type=GtkWidget *
# args (pos=3, type=gint *, typeid=11516, name=minimum_height)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'minimum_height',11516,3,@Tid,'5.0'); # type=gint *
# args (pos=4, type=gint *, typeid=11516, name=natural_height)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'natural_height',11516,4,@Tid,'5.0'); # type=gint *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_preferred_height',0,14,10005746,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellArea *, GtkCellAreaContext *, GtkWidget *, gint, gint *, gint *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkCellArea *, typeid=10004520, name=area)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'area',10004520,0,@Tid,'5.0'); # type=GtkCellArea *
# args (pos=1, type=GtkCellAreaContext *, typeid=10005248, name=context)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10005248,1,@Tid,'5.0'); # type=GtkCellAreaContext *
# args (pos=2, type=GtkWidget *, typeid=10004154, name=widget)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,2,@Tid,'5.0'); # type=GtkWidget *
# args (pos=3, type=gint, typeid=11400, name=height)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'height',11400,3,@Tid,'5.0'); # type=gint
# args (pos=4, type=gint *, typeid=11516, name=minimum_width)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'minimum_width',11516,4,@Tid,'5.0'); # type=gint *
# args (pos=5, type=gint *, typeid=11516, name=natural_width)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'natural_width',11516,5,@Tid,'5.0'); # type=gint *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_preferred_width_for_height',0,15,10005746,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellArea *, GtkCellRenderer *, guint, const GValue *, GParamSpec *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkCellArea *, typeid=10004520, name=area)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'area',10004520,0,@Tid,'5.0'); # type=GtkCellArea *
# args (pos=1, type=GtkCellRenderer *, typeid=10004514, name=renderer)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'renderer',10004514,1,@Tid,'5.0'); # type=GtkCellRenderer *
# args (pos=2, type=guint, typeid=11402, name=property_id)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'property_id',11402,2,@Tid,'5.0'); # type=guint
# args (pos=3, type=const GValue *, typeid=11848, name=value)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'value',11848,3,@Tid,'5.0'); # type=const GValue *
# args (pos=4, type=GParamSpec *, typeid=11854, name=pspec)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'pspec',11854,4,@Tid,'5.0'); # type=GParamSpec *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'set_cell_property',0,16,10005746,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellArea *, GtkCellRenderer *, guint, GValue *, GParamSpec *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkCellArea *, typeid=10004520, name=area)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'area',10004520,0,@Tid,'5.0'); # type=GtkCellArea *
# args (pos=1, type=GtkCellRenderer *, typeid=10004514, name=renderer)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'renderer',10004514,1,@Tid,'5.0'); # type=GtkCellRenderer *
# args (pos=2, type=guint, typeid=11402, name=property_id)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'property_id',11402,2,@Tid,'5.0'); # type=guint
# args (pos=3, type=GValue *, typeid=11849, name=value)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'value',11849,3,@Tid,'5.0'); # type=GValue *
# args (pos=4, type=GParamSpec *, typeid=11854, name=pspec)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'pspec',11854,4,@Tid,'5.0'); # type=GParamSpec *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_cell_property',0,17,10005746,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkCellArea *, GtkDirectionType)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkCellArea *, typeid=10004520, name=area)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'area',10004520,0,@Tid,'5.0'); # type=GtkCellArea *
# args (pos=1, type=GtkDirectionType, typeid=10005583, name=direction)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'direction',10005583,1,@Tid,'5.0'); # type=GtkDirectionType
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'focus',0,18,10005746,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkCellArea *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkCellArea *, typeid=10004520, name=area)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'area',10004520,0,@Tid,'5.0'); # type=GtkCellArea *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'is_activatable',0,19,10005746,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkCellArea *, GtkCellAreaContext *, GtkWidget *, const GdkRectangle *, GtkCellRendererState, gboolean)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkCellArea *, typeid=10004520, name=area)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'area',10004520,0,@Tid,'5.0'); # type=GtkCellArea *
# args (pos=1, type=GtkCellAreaContext *, typeid=10005248, name=context)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10005248,1,@Tid,'5.0'); # type=GtkCellAreaContext *
# args (pos=2, type=GtkWidget *, typeid=10004154, name=widget)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,2,@Tid,'5.0'); # type=GtkWidget *
# args (pos=3, type=const GdkRectangle *, typeid=39913, name=cell_area)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell_area',39913,3,@Tid,'5.0'); # type=const GdkRectangle *
# args (pos=4, type=GtkCellRendererState, typeid=10005051, name=flags)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'flags',10005051,4,@Tid,'5.0'); # type=GtkCellRendererState
# args (pos=5, type=gboolean, typeid=11401, name=edit_only)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'edit_only',11401,5,@Tid,'5.0'); # type=gboolean
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'activate',0,20,10005746,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,21,10005746,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,22,10005746,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,23,10005746,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,24,10005746,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved5',9926,25,10005746,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved6',9926,26,10005746,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved7',9926,27,10005746,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved8',9926,28,10005746,'5.0'); # type=fptr

# _GtkCellAreaContextClass (expect 11 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',11867,0,10005755,'5.0'); # type=GObjectClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellAreaContext *, gint, gint)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkCellAreaContext *, typeid=10005248, name=context)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10005248,0,@Tid,'5.0'); # type=GtkCellAreaContext *
# args (pos=1, type=gint, typeid=11400, name=width)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'width',11400,1,@Tid,'5.0'); # type=gint
# args (pos=2, type=gint, typeid=11400, name=height)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'height',11400,2,@Tid,'5.0'); # type=gint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'allocate',0,1,10005755,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellAreaContext *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkCellAreaContext *, typeid=10005248, name=context)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10005248,0,@Tid,'5.0'); # type=GtkCellAreaContext *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'reset',0,2,10005755,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellAreaContext *, gint, gint *, gint *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkCellAreaContext *, typeid=10005248, name=context)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10005248,0,@Tid,'5.0'); # type=GtkCellAreaContext *
# args (pos=1, type=gint, typeid=11400, name=width)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'width',11400,1,@Tid,'5.0'); # type=gint
# args (pos=2, type=gint *, typeid=11516, name=minimum_height)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'minimum_height',11516,2,@Tid,'5.0'); # type=gint *
# args (pos=3, type=gint *, typeid=11516, name=natural_height)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'natural_height',11516,3,@Tid,'5.0'); # type=gint *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_preferred_height_for_width',0,3,10005755,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellAreaContext *, gint, gint *, gint *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkCellAreaContext *, typeid=10005248, name=context)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10005248,0,@Tid,'5.0'); # type=GtkCellAreaContext *
# args (pos=1, type=gint, typeid=11400, name=height)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'height',11400,1,@Tid,'5.0'); # type=gint
# args (pos=2, type=gint *, typeid=11516, name=minimum_width)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'minimum_width',11516,2,@Tid,'5.0'); # type=gint *
# args (pos=3, type=gint *, typeid=11516, name=natural_width)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'natural_width',11516,3,@Tid,'5.0'); # type=gint *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_preferred_width_for_height',0,4,10005755,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,5,10005755,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,6,10005755,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,7,10005755,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,8,10005755,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved5',9926,9,10005755,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved6',9926,10,10005755,'5.0'); # type=fptr

# _GtkPrintOperationClass (expect 20 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',11867,0,10005769,'5.0'); # type=GObjectClass
# fptr void (*)(GtkPrintOperation *, GtkPrintOperationResult) found, id=40089
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'done',40089,1,10005769,'5.0'); # type=fptr
# fptr void (*)(GtkPrintOperation *, GtkPrintContext *) found, id=40090
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'begin_print',40090,2,10005769,'5.0'); # type=fptr
# fptr gboolean (*)(GtkPrintOperation *, GtkPrintContext *) found, id=40091
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'paginate',40091,3,10005769,'5.0'); # type=fptr
# fptr void (*)(GtkPrintOperation *, GtkPrintContext *, gint, GtkPageSetup *) found, id=40092
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'request_page_setup',40092,4,10005769,'5.0'); # type=fptr
# fptr void (*)(GtkPrintOperation *, GtkPrintContext *, gint) found, id=40093
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'draw_page',40093,5,10005769,'5.0'); # type=fptr
# fptr void (*)(GtkPrintOperation *, GtkPrintContext *) found, id=40090
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'end_print',40090,6,10005769,'5.0'); # type=fptr
# fptr void (*)(GtkPrintOperation *) found, id=40094
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'status_changed',40094,7,10005769,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'operation',0,8,10005769,'5.0'); # type=GtkWidget *(*create_custom_widget) (GtkPrintOperation *
# fptr void (*)(GtkPrintOperation *, GtkWidget *) found, id=40096
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'custom_widget_apply',40096,9,10005769,'5.0'); # type=fptr
# fptr gboolean (*)(GtkPrintOperation *, GtkPrintOperationPreview *, GtkPrintContext *, GtkWindow *) found, id=40097
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'preview',40097,10,10005769,'5.0'); # type=fptr
# fptr void (*)(GtkPrintOperation *, GtkWidget *, GtkPageSetup *, GtkPrintSettings *) found, id=40099
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'update_custom_widget',40099,11,10005769,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,12,10005769,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,13,10005769,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,14,10005769,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,15,10005769,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved5',9926,16,10005769,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved6',9926,17,10005769,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved7',9926,18,10005769,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved8',9926,19,10005769,'5.0'); # type=fptr

# _GtkTreeViewClass (expect 24 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10006175,0,10005807,'5.0'); # type=GtkContainerClass
# fptr void (*)(GtkTreeView *, GtkTreePath *, GtkTreeViewColumn *) found, id=14475
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'row_activated',14475,1,10005807,'5.0'); # type=fptr
# fptr gboolean (*)(GtkTreeView *, GtkTreeIter *, GtkTreePath *) found, id=14476
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'test_expand_row',14476,2,10005807,'5.0'); # type=fptr
# fptr gboolean (*)(GtkTreeView *, GtkTreeIter *, GtkTreePath *) found, id=14476
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'test_collapse_row',14476,3,10005807,'5.0'); # type=fptr
# fptr void (*)(GtkTreeView *, GtkTreeIter *, GtkTreePath *) found, id=14477
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'row_expanded',14477,4,10005807,'5.0'); # type=fptr
# fptr void (*)(GtkTreeView *, GtkTreeIter *, GtkTreePath *) found, id=14477
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'row_collapsed',14477,5,10005807,'5.0'); # type=fptr
# fptr void (*)(GtkTreeView *) found, id=14478
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'columns_changed',14478,6,10005807,'5.0'); # type=fptr
# fptr void (*)(GtkTreeView *) found, id=14478
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cursor_changed',14478,7,10005807,'5.0'); # type=fptr
# fptr gboolean (*)(GtkTreeView *, GtkMovementStep, gint) found, id=14479
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'move_cursor',14479,8,10005807,'5.0'); # type=fptr
# fptr gboolean (*)(GtkTreeView *) found, id=14480
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'select_all',14480,9,10005807,'5.0'); # type=fptr
# fptr gboolean (*)(GtkTreeView *) found, id=14480
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'unselect_all',14480,10,10005807,'5.0'); # type=fptr
# fptr gboolean (*)(GtkTreeView *, gboolean) found, id=14481
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'select_cursor_row',14481,11,10005807,'5.0'); # type=fptr
# fptr gboolean (*)(GtkTreeView *) found, id=14480
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'toggle_cursor_row',14480,12,10005807,'5.0'); # type=fptr
# fptr gboolean (*)(GtkTreeView *, gboolean, gboolean, gboolean) found, id=14482
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'expand_collapse_cursor_row',14482,13,10005807,'5.0'); # type=fptr
# fptr gboolean (*)(GtkTreeView *) found, id=14480
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'select_cursor_parent',14480,14,10005807,'5.0'); # type=fptr
# fptr gboolean (*)(GtkTreeView *) found, id=14480
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'start_interactive_search',14480,15,10005807,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,16,10005807,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,17,10005807,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,18,10005807,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,19,10005807,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved5',9926,20,10005807,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved6',9926,21,10005807,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved7',9926,22,10005807,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved8',9926,23,10005807,'5.0'); # type=fptr

# _GtkCellRendererToggleClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10005057,0,10005839,'5.0'); # type=GtkCellRendererClass
# fptr void (*)(GtkCellRendererToggle *, const gchar *) found, id=14254
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'toggled',14254,1,10005839,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,2,10005839,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,3,10005839,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,4,10005839,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,5,10005839,'5.0'); # type=fptr

# _GtkAboutDialogClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10004590,0,10005850,'5.0'); # type=GtkDialogClass
# fptr gboolean (*)(GtkAboutDialog *, const gchar *) found, id=40581
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'activate_link',40581,1,10005850,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,2,10005850,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,3,10005850,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,4,10005850,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,5,10005850,'5.0'); # type=fptr

# _GtkTreeModelIface (expect 22 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'g_iface',11997,0,10005869,'5.0'); # type=GTypeInterface
# fptr void (*)(GtkTreeModel *, GtkTreePath *, GtkTreeIter *) found, id=14185
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'row_changed',14185,1,10005869,'5.0'); # type=fptr
# fptr void (*)(GtkTreeModel *, GtkTreePath *, GtkTreeIter *) found, id=14185
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'row_inserted',14185,2,10005869,'5.0'); # type=fptr
# fptr void (*)(GtkTreeModel *, GtkTreePath *, GtkTreeIter *) found, id=14185
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'row_has_child_toggled',14185,3,10005869,'5.0'); # type=fptr
# fptr void (*)(GtkTreeModel *, GtkTreePath *) found, id=14186
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'row_deleted',14186,4,10005869,'5.0'); # type=fptr
# fptr void (*)(GtkTreeModel *, GtkTreePath *, GtkTreeIter *, gint *) found, id=14187
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'rows_reordered',14187,5,10005869,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GtkTreeModelFlags (*)(GtkTreeModel *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkTreeModel *, typeid=10004486, name=tree_model)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tree_model',10004486,0,@Tid,'5.0'); # type=GtkTreeModel *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_flags',0,6,10005869,'5.0'); # type=fptr
# fptr gint (*)(GtkTreeModel *) found, id=14189
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_n_columns',14189,7,10005869,'5.0'); # type=fptr
# fptr GType (*)(GtkTreeModel *, gint) found, id=14190
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_column_type',14190,8,10005869,'5.0'); # type=fptr
# fptr gboolean (*)(GtkTreeModel *, GtkTreeIter *, GtkTreePath *) found, id=14191
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_iter',14191,9,10005869,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'iter',0,10,10005869,'5.0'); # type=GtkTreePath *(* get_path)        (GtkTreeModel *tree_model,
				    GtkTreeIter *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'iter',0,11,10005869,'5.0'); # type=GtkTreePath *(* get_path)        (GtkTreeModel *tree_model,
				    GtkTreeIter *
# fptr void (*)(GtkTreeModel *, GtkTreeIter *, gint, GValue *) found, id=14193
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_value',14193,12,10005869,'5.0'); # type=fptr
# fptr gboolean (*)(GtkTreeModel *, GtkTreeIter *) found, id=14194
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'iter_next',14194,13,10005869,'5.0'); # type=fptr
# fptr gboolean (*)(GtkTreeModel *, GtkTreeIter *) found, id=14194
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'iter_previous',14194,14,10005869,'5.0'); # type=fptr
# fptr gboolean (*)(GtkTreeModel *, GtkTreeIter *, GtkTreeIter *) found, id=14195
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'iter_children',14195,15,10005869,'5.0'); # type=fptr
# fptr gboolean (*)(GtkTreeModel *, GtkTreeIter *) found, id=14194
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'iter_has_child',14194,16,10005869,'5.0'); # type=fptr
# fptr gint (*)(GtkTreeModel *, GtkTreeIter *) found, id=14196
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'iter_n_children',14196,17,10005869,'5.0'); # type=fptr
# fptr gboolean (*)(GtkTreeModel *, GtkTreeIter *, GtkTreeIter *, gint) found, id=14197
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'iter_nth_child',14197,18,10005869,'5.0'); # type=fptr
# fptr gboolean (*)(GtkTreeModel *, GtkTreeIter *, GtkTreeIter *) found, id=14195
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'iter_parent',14195,19,10005869,'5.0'); # type=fptr
# fptr void (*)(GtkTreeModel *, GtkTreeIter *) found, id=14198
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'ref_node',14198,20,10005869,'5.0'); # type=fptr
# fptr void (*)(GtkTreeModel *, GtkTreeIter *) found, id=14198
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'unref_node',14198,21,10005869,'5.0'); # type=fptr

# _GtkCheckButtonClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10004330,0,10005878,'5.0'); # type=GtkToggleButtonClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCheckButton *, cairo_t *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkCheckButton *, typeid=10005880, name=check_button)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'check_button',10005880,0,@Tid,'5.0'); # type=GtkCheckButton *
# args (pos=1, type=cairo_t *, typeid=32487, name=cr)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cr',32487,1,@Tid,'5.0'); # type=cairo_t *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'draw_indicator',0,1,10005878,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,2,10005878,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,3,10005878,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,4,10005878,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,5,10005878,'5.0'); # type=fptr

# _GtkLevelBarClass (expect 3 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10004828,0,10005918,'5.0'); # type=GtkWidgetClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkLevelBar *, const gchar *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkLevelBar *, typeid=10005919, name=self)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'self',10005919,0,@Tid,'5.0'); # type=GtkLevelBar *
# args (pos=1, type=const gchar *, typeid=11421, name=name)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'name',11421,1,@Tid,'5.0'); # type=const gchar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'offset_changed',0,1,10005918,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'padding',11404,2,10005918,'5.0'); # type=gpointer

# _GtkComboBoxClass (expect 7 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10004268,0,10005926,'5.0'); # type=GtkBinClass
# fptr void (*)(GtkComboBox *) found, id=14376
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'changed',14376,1,10005926,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'path',0,2,10005926,'5.0'); # type=gchar   *(* format_entry_text) (GtkComboBox *combo_box,
				  const gchar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'path',0,3,10005926,'5.0'); # type=gchar   *(* format_entry_text) (GtkComboBox *combo_box,
				  const gchar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,4,10005926,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,5,10005926,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,6,10005926,'5.0'); # type=fptr

# _GtkBuilderClass (expect 10 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',11867,0,10005973,'5.0'); # type=GObjectClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GType (*)(GtkBuilder *, const char *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkBuilder *, typeid=10005557, name=builder)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'builder',10005557,0,@Tid,'5.0'); # type=GtkBuilder *
# args (pos=1, type=const char *, typeid=10295, name=type_name)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'type_name',10295,1,@Tid,'5.0'); # type=const char *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_type_from_name',0,1,10005973,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,2,10005973,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,3,10005973,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,4,10005973,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,5,10005973,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved5',9926,6,10005973,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved6',9926,7,10005973,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved7',9926,8,10005973,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved8',9926,9,10005973,'5.0'); # type=fptr

# _GtkTextBufferClass (expect 18 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',11867,0,10005985,'5.0'); # type=GObjectClass
# fptr void (*)(GtkTextBuffer *, GtkTextIter *, const gchar *, gint) found, id=14142
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'insert_text',14142,1,10005985,'5.0'); # type=fptr
# fptr void (*)(GtkTextBuffer *, GtkTextIter *, GdkPixbuf *) found, id=14143
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'insert_pixbuf',14143,2,10005985,'5.0'); # type=fptr
# fptr void (*)(GtkTextBuffer *, GtkTextIter *, GtkTextChildAnchor *) found, id=14144
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'insert_child_anchor',14144,3,10005985,'5.0'); # type=fptr
# fptr void (*)(GtkTextBuffer *, GtkTextIter *, GtkTextIter *) found, id=14145
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'delete_range',14145,4,10005985,'5.0'); # type=fptr
# fptr void (*)(GtkTextBuffer *) found, id=14146
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'changed',14146,5,10005985,'5.0'); # type=fptr
# fptr void (*)(GtkTextBuffer *) found, id=14146
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'modified_changed',14146,6,10005985,'5.0'); # type=fptr
# fptr void (*)(GtkTextBuffer *, const GtkTextIter *, GtkTextMark *) found, id=14147
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'mark_set',14147,7,10005985,'5.0'); # type=fptr
# fptr void (*)(GtkTextBuffer *, GtkTextMark *) found, id=14148
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'mark_deleted',14148,8,10005985,'5.0'); # type=fptr
# fptr void (*)(GtkTextBuffer *, GtkTextTag *, const GtkTextIter *, const GtkTextIter *) found, id=14149
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'apply_tag',14149,9,10005985,'5.0'); # type=fptr
# fptr void (*)(GtkTextBuffer *, GtkTextTag *, const GtkTextIter *, const GtkTextIter *) found, id=14149
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'remove_tag',14149,10,10005985,'5.0'); # type=fptr
# fptr void (*)(GtkTextBuffer *) found, id=14146
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'begin_user_action',14146,11,10005985,'5.0'); # type=fptr
# fptr void (*)(GtkTextBuffer *) found, id=14146
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'end_user_action',14146,12,10005985,'5.0'); # type=fptr
# fptr void (*)(GtkTextBuffer *, GtkClipboard *) found, id=40589
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'paste_done',40589,13,10005985,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,14,10005985,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,15,10005985,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,16,10005985,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,17,10005985,'5.0'); # type=fptr

# _GtkIconThemeClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',11867,0,10005998,'5.0'); # type=GObjectClass
# fptr void (*)(GtkIconTheme *) found, id=14158
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'changed',14158,1,10005998,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,2,10005998,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,3,10005998,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,4,10005998,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,5,10005998,'5.0'); # type=fptr

# _GtkBindingArg (expect 4 members, found 2 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'arg_type',11836,0,10006016,'5.0'); # type=GType     
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'long_data',0,1,10006016,'5.0'); # type=union {
    glong   
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'double_data',11598,2,10006016,'5.0'); # type=gdouble 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'string_data',11415,3,10006016,'5.0'); # type=gchar *

# _GtkCellLayoutIface (expect 10 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'g_iface',11997,0,10006030,'5.0'); # type=GTypeInterface
# fptr void (*)(GtkCellLayout *, GtkCellRenderer *, gboolean) found, id=14122
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'pack_start',14122,1,10006030,'5.0'); # type=fptr
# fptr void (*)(GtkCellLayout *, GtkCellRenderer *, gboolean) found, id=14122
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'pack_end',14122,2,10006030,'5.0'); # type=fptr
# fptr void (*)(GtkCellLayout *) found, id=14123
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'clear',14123,3,10006030,'5.0'); # type=fptr
# fptr void (*)(GtkCellLayout *, GtkCellRenderer *, const gchar *, gint) found, id=14124
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'add_attribute',14124,4,10006030,'5.0'); # type=fptr
# fptr void (*)(GtkCellLayout *, GtkCellRenderer *, GtkCellLayoutDataFunc, gpointer, GDestroyNotify) found, id=14125
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'set_cell_data_func',14125,5,10006030,'5.0'); # type=fptr
# fptr void (*)(GtkCellLayout *, GtkCellRenderer *) found, id=14126
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'clear_attributes',14126,6,10006030,'5.0'); # type=fptr
# fptr void (*)(GtkCellLayout *, GtkCellRenderer *, gint) found, id=14127
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'reorder',14127,7,10006030,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GList* (*)(GtkCellLayout *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkCellLayout *, typeid=10006028, name=cell_layout)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell_layout',10006028,0,@Tid,'5.0'); # type=GtkCellLayout *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_cells',0,8,10006030,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell_layout',0,9,10006030,'5.0'); # type=GtkCellArea *(* get_area)   (GtkCellLayout *

# _GtkToolbarClass (expect 8 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10006175,0,10006040,'5.0'); # type=GtkContainerClass
# fptr void (*)(GtkToolbar *, GtkOrientation) found, id=14361
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'orientation_changed',14361,1,10006040,'5.0'); # type=fptr
# fptr void (*)(GtkToolbar *, GtkToolbarStyle) found, id=14362
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'style_changed',14362,2,10006040,'5.0'); # type=fptr
# fptr gboolean (*)(GtkToolbar *, gint, gint, gint) found, id=14363
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'popup_context_menu',14363,3,10006040,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,4,10006040,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,5,10006040,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,6,10006040,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,7,10006040,'5.0'); # type=fptr

# _GtkMenuToolButtonClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10004299,0,10006049,'5.0'); # type=GtkToolButtonClass
# fptr void (*)(GtkMenuToolButton *) found, id=14111
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'show_menu',14111,1,10006049,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,2,10006049,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,3,10006049,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,4,10006049,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,5,10006049,'5.0'); # type=fptr

# _GtkStatusbarClass (expect 8 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10004555,0,10006066,'5.0'); # type=GtkBoxClass
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'reserved',11404,1,10006066,'5.0'); # type=gpointer
# fptr void (*)(GtkStatusbar *, guint, const gchar *) found, id=14440
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'text_pushed',14440,2,10006066,'5.0'); # type=fptr
# fptr void (*)(GtkStatusbar *, guint, const gchar *) found, id=14440
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'text_popped',14440,3,10006066,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,4,10006066,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,5,10006066,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,6,10006066,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,7,10006066,'5.0'); # type=fptr

# _GtkExpanderClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',0,0,10006084,'5.0'); # type=GtkBinClass   
# fptr void (*)(GtkExpander *) found, id=14409
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'activate',14409,1,10006084,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,2,10006084,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,3,10006084,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,4,10006084,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,5,10006084,'5.0'); # type=fptr

# _GtkStyleContextClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',11867,0,10006100,'5.0'); # type=GObjectClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkStyleContext *)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkStyleContext *, typeid=10004858, name=context)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10004858,0,@Tid,'5.0'); # type=GtkStyleContext *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'changed',0,1,10006100,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,2,10006100,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,3,10006100,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,4,10006100,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,5,10006100,'5.0'); # type=fptr

# _GtkLabelClass (expect 13 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10004248,0,10006129,'5.0'); # type=GtkMiscClass
# fptr void (*)(GtkLabel *, GtkMovementStep, gint, gboolean) found, id=14073
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'move_cursor',14073,1,10006129,'5.0'); # type=fptr
# fptr void (*)(GtkLabel *) found, id=14074
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'copy_clipboard',14074,2,10006129,'5.0'); # type=fptr
# fptr void (*)(GtkLabel *, GtkMenu *) found, id=14075
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'populate_popup',14075,3,10006129,'5.0'); # type=fptr
# fptr gboolean (*)(GtkLabel *, const gchar *) found, id=40596
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'activate_link',40596,4,10006129,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,5,10006129,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,6,10006129,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,7,10006129,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,8,10006129,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved5',9926,9,10006129,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved6',9926,10,10006129,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved7',9926,11,10006129,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved8',9926,12,10006129,'5.0'); # type=fptr

# _GtkTreeSortableIface (expect 7 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'g_iface',11997,0,10006142,'5.0'); # type=GTypeInterface
# fptr void (*)(GtkTreeSortable *) found, id=14276
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'sort_column_changed',14276,1,10006142,'5.0'); # type=fptr
# fptr gboolean (*)(GtkTreeSortable *, gint *, GtkSortType *) found, id=14277
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'get_sort_column_id',14277,2,10006142,'5.0'); # type=fptr
# fptr void (*)(GtkTreeSortable *, gint, GtkSortType) found, id=14278
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'set_sort_column_id',14278,3,10006142,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkTreeSortable *, gint, GtkTreeIterCompareFunc, gpointer, GDestroyNotify)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkTreeSortable *, typeid=10006144, name=sortable)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'sortable',10006144,0,@Tid,'5.0'); # type=GtkTreeSortable *
# args (pos=1, type=gint, typeid=11400, name=sort_column_id)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'sort_column_id',11400,1,@Tid,'5.0'); # type=gint
# args (pos=2, type=GtkTreeIterCompareFunc, typeid=10006140, name=sort_func)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'sort_func',10006140,2,@Tid,'5.0'); # type=GtkTreeIterCompareFunc
# args (pos=3, type=gpointer, typeid=11404, name=user_data)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'user_data',11404,3,@Tid,'5.0'); # type=gpointer
# args (pos=4, type=GDestroyNotify, typeid=11439, name=destroy)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'destroy',11439,4,@Tid,'5.0'); # type=GDestroyNotify
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'set_sort_func',0,4,10006142,'5.0'); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkTreeSortable *, GtkTreeIterCompareFunc, gpointer, GDestroyNotify)','FuncPtr',0,'');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'5.0',0);
# args (pos=0, type=GtkTreeSortable *, typeid=10006144, name=sortable)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'sortable',10006144,0,@Tid,'5.0'); # type=GtkTreeSortable *
# args (pos=1, type=GtkTreeIterCompareFunc, typeid=10006140, name=sort_func)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'sort_func',10006140,1,@Tid,'5.0'); # type=GtkTreeIterCompareFunc
# args (pos=2, type=gpointer, typeid=11404, name=user_data)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'user_data',11404,2,@Tid,'5.0'); # type=gpointer
# args (pos=3, type=GDestroyNotify, typeid=11439, name=destroy)
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'destroy',11439,3,@Tid,'5.0'); # type=GDestroyNotify
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'set_default_sort_func',0,5,10006142,'5.0'); # type=fptr
# fptr gboolean (*)(GtkTreeSortable *) found, id=14281
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'has_default_sort_func',14281,6,10006142,'5.0'); # type=fptr

# _GtkFileChooserButtonClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10004555,0,10006152,'5.0'); # type=GtkBoxClass
# fptr void (*)(GtkFileChooserButton *) found, id=40590
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'file_set',40590,1,10006152,'5.0'); # type=fptr
#OOPS! what happened? void|(*__gtk_reserved1)
#OOPS! what happened? void|(*__gtk_reserved2)
#OOPS! what happened? void|(*__gtk_reserved3)
#OOPS! what happened? void|(*__gtk_reserved4)

# _GtkIconViewClass (expect 13 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent_class',10006175,0,10006195,'5.0'); # type=GtkContainerClass
# fptr void (*)(GtkIconView *, GtkTreePath *) found, id=14504
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'item_activated',14504,1,10006195,'5.0'); # type=fptr
# fptr void (*)(GtkIconView *) found, id=14505
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'selection_changed',14505,2,10006195,'5.0'); # type=fptr
# fptr void (*)(GtkIconView *) found, id=14505
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'select_all',14505,3,10006195,'5.0'); # type=fptr
# fptr void (*)(GtkIconView *) found, id=14505
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'unselect_all',14505,4,10006195,'5.0'); # type=fptr
# fptr void (*)(GtkIconView *) found, id=14505
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'select_cursor_item',14505,5,10006195,'5.0'); # type=fptr
# fptr void (*)(GtkIconView *) found, id=14505
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'toggle_cursor_item',14505,6,10006195,'5.0'); # type=fptr
# fptr gboolean (*)(GtkIconView *, GtkMovementStep, gint) found, id=14506
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'move_cursor',14506,7,10006195,'5.0'); # type=fptr
# fptr gboolean (*)(GtkIconView *) found, id=14507
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'activate_cursor_item',14507,8,10006195,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved1',9926,9,10006195,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved2',9926,10,10006195,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved3',9926,11,10006195,'5.0'); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'_gtk_reserved4',9926,12,10006195,'5.0'); # type=fptr

# Structs detected to not have problems (total 267):
# _GdkKeymapKey
# _GdkEventAny
# _GdkEventExpose
# _GdkEventVisibility
# _GdkEventMotion
# _GdkEventButton
# _GdkEventTouch
# _GdkEventScroll
# _GdkEventKey
# _GdkEventCrossing
# _GdkEventFocus
# _GdkEventConfigure
# _GdkEventProperty
# _GdkEventSelection
# _GdkEventOwnerChange
# _GdkEventProximity
# _GdkEventSetting
# _GdkEventWindowState
# _GdkEventGrabBroken
# _GdkEventDND
# _GdkWindowAttr
# _GdkGeometry
# _GdkPoint
# _GtkSettings
# _GtkSettingsClass
# _GtkSettingsValue
# _GtkScaleButton
# _GtkComboBoxText
# _GtkComboBoxTextClass
# _GtkToolItemGroup
# _GtkToolItemGroupClass
# _GtkAdjustment
# _GtkTextChildAnchorClass
# _GtkTextBuffer
# _GtkSearchEntry
# _GtkSearchEntryClass
# _GtkPageRange
# _GtkEventBox
# _GtkEventBoxClass
# _GtkMisc
# _GtkMiscClass
# _GtkColorChooserDialog
# _GtkColorChooserDialogClass
# _GtkBin
# _GtkBinClass
# _GtkSpinButton
# _GtkToolButton
# _GtkIMContext
# _GtkToggleButton
# _GtkMenuShell
# _GtkFileChooserDialog
# _GtkFileChooserDialogClass
# _GtkRecentData
# _GtkRecentManager
# _GtkFileChooserWidget
# _GtkFileChooserWidgetClass
# _GtkIMContextSimple
# _GtkIMContextSimpleClass
# _GtkRadioButton
# _GtkSeparatorMenuItem
# _GtkSeparatorMenuItemClass
# _GtkLinkButton
# _GtkRequisition
# _GtkStyleContext
# _GtkWidget
# _GtkWindow
# _GtkRange
# _GtkTextMarkClass
# _GtkTreeSelection
# _GtkSeparator
# _GtkSeparatorClass
# _GtkTreeViewColumn
# _GtkTreeModelSort
# _GtkTreeModelSortClass
# _GtkViewport
# _GtkViewportClass
# _GtkStatusIcon
# _GtkBox
# _GtkBoxClass
# _GtkCalendar
# _GtkCellRendererProgress
# _GtkCellRendererProgressClass
# _GtkDialog
# _GtkDialogClass
# _GtkListStore
# _GtkListStoreClass
# _GtkScrollableInterface
# _GtkRadioAction
# _GtkRecentChooserWidget
# _GtkRecentChooserWidgetClass
# _GtkPlug
# _GtkNotebook
# _GtkLockButton
# _GtkLockButtonClass
# _GtkLayout
# _GtkLayoutClass
# _GtkGrid
# _GtkGridClass
# _GtkEntryBuffer
# _GtkRequestedSize
# _GtkFileFilterInfo
# _GtkThemingEngine
# _GtkAppChooserButton
# _GtkCellRendererSpinner
# _GtkCellRendererSpinnerClass
# _GtkMountOperation
# _GtkMountOperationClass
# _GtkWidgetAuxInfo
# _GtkTreeStore
# _GtkTreeStoreClass
# _GtkStockItem
# _GtkEntry
# _GtkAccelLabel
# _GtkAccelLabelClass
# _GtkMenuButton
# _GtkMenuButtonClass
# _GtkAppChooserDialog
# _GtkAppChooserDialogClass
# _GtkColorButton
# _GtkUIManager
# _GtkToggleToolButton
# _GtkCellRendererAccel
# _GtkOverlay
# _GtkTextView
# _GtkInfoBar
# _GtkRecentAction
# _GtkRecentActionClass
# _GtkNumerableIcon
# _GtkNumerableIconClass
# _GtkTextTagTable
# _GtkRecentFilterInfo
# _GtkSwitch
# _GtkCellRenderer
# _GtkMenuBar
# _GtkMenuBarClass
# _GtkFrame
# _GtkAssistant
# _GtkToolItem
# _GtkTextAttributes
# _GtkCellRendererSpin
# _GtkCellRendererSpinClass
# _GtkIMMulticontext
# _GtkIMMulticontextClass
# _GtkCellAreaBox
# _GtkCellAreaBoxClass
# _GtkFontChooserDialog
# _GtkFontChooserDialogClass
# _GtkToggleAction
# _GtkCssProvider
# _GtkTreeModelFilter
# _GtkSizeGroup
# _GtkSizeGroupClass
# _GtkScrollbar
# _GtkScrollbarClass
# _GtkSocket
# _GtkOffscreenWindow
# _GtkOffscreenWindowClass
# _GtkCellView
# _GtkCellViewClass
# _GtkMenuItem
# _GtkIMContextInfo
# _GtkActionGroup
# _GtkActionEntry
# _GtkToggleActionEntry
# _GtkRadioActionEntry
# _GtkPaned
# _GtkAction
# _GtkScrolledWindow
# _GtkScale
# _GtkImage
# _GtkImageClass
# _GtkCellRendererText
# _GtkRadioToolButton
# _GtkRadioToolButtonClass
# _GtkTextTag
# _GtkApplication
# _GtkAccessible
# _GtkAccessibleClass
# _GtkMessageDialog
# _GtkMessageDialogClass
# _GtkRadioMenuItem
# _GtkStyleProperties
# _GtkStylePropertiesClass
# _GtkArrow
# _GtkArrowClass
# _GtkVolumeButton
# _GtkVolumeButtonClass
# _GtkApplicationWindow
# _GtkApplicationWindowClass
# _GtkEntryCompletion
# _GtkCheckMenuItem
# _GtkFontChooserWidget
# _GtkFontChooserWidgetClass
# _GtkFontButton
# _GtkImageMenuItem
# _GtkImageMenuItemClass
# _GtkDrawingArea
# _GtkDrawingAreaClass
# _GtkFixed
# _GtkFixedClass
# _GtkFixedChild
# _GtkButton
# _GtkAccelGroup
# _GtkAccelKey
# _GtkAccelGroupEntry
# _GtkIconFactory
# _GtkIconFactoryClass
# _GtkAppChooserWidget
# _GtkButtonBox
# _GtkButtonBoxClass
# _GtkCellAreaContext
# _GtkCellArea
# _GtkPrintOperation
# _GtkCellRendererPixbuf
# _GtkCellRendererPixbufClass
# _GtkAlignment
# _GtkAlignmentClass
# _GtkTreeView
# _GtkOrientableIface
# _GtkCellRendererToggle
# _GtkAboutDialog
# _GtkTreeIter
# _GtkCheckButton
# _GtkWindowClass
# _GtkWindowGroupClass
# _GtkMenu
# _GtkMenuClass
# _GtkLevelBar
# _GtkComboBox
# _GtkSpinner
# _GtkSpinnerClass
# _GtkToolPalette
# _GtkToolPaletteClass
# _GtkRecentChooserDialog
# _GtkRecentChooserDialogClass
# _GtkCellRendererCombo
# _GtkCellRendererComboClass
# _GtkBuilder
# _GtkIconTheme
# _GtkBindingSet
# _GtkBindingEntry
# _GtkBindingSignal
# _GtkToolbar
# _GtkMenuToolButton
# _GtkColorChooserWidget
# _GtkColorChooserWidgetClass
# _GtkStatusbar
# _GtkInvisible
# _GtkInvisibleClass
# _GtkExpander
# _GtkRecentChooserMenu
# _GtkRecentChooserMenuClass
# _GtkSeparatorToolItem
# _GtkSeparatorToolItemClass
# _GtkAspectFrame
# _GtkAspectFrameClass
# _GtkLabel
# _GtkFileChooserButton
# _GtkProgressBar
# _GtkProgressBarClass
# _GtkContainer
# _GtkContainerClass
# _GtkIconView
# _GtkPageSetupUnixDialog
# _GtkPageSetupUnixDialogClass
# _GtkPrinter
# _GtkPrinterClass
