# Structs detected to have problems (total 95):

# _GtkScaleButtonClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10005564,0,10004152,'5.0',0); # type=GtkButtonClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkScaleButton *, gdouble)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'button',10004156,0,@Tid,'5.0'); # type=GtkScaleButton *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'value',11598,1,@Tid,'5.0'); # type=gdouble
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkScaleButton *, gdouble)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'value_changed',@Fptr,1,10004152,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,2,10004152,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,3,10004152,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,4,10004152,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,5,10004152,'5.0',0); # type=fptr

# _GtkAdjustmentClass (expect 7 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10003273,0,10004182,'5.0',0); # type=GInitiallyUnownedClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkAdjustment *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'adjustment',10004157,0,@Tid,'5.0'); # type=GtkAdjustment *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkAdjustment *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'changed',@Fptr,1,10004182,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkAdjustment *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkAdjustment *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'value_changed',@Fptr,2,10004182,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,3,10004182,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,4,10004182,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,5,10004182,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,6,10004182,'5.0',0); # type=fptr

# _GtkActivatableIface (expect 3 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'g_iface',11997,0,10004241,'5.0',0); # type=GTypeInterface
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkActivatable *, GtkAction *, const gchar *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'activatable',10004243,0,@Tid,'5.0'); # type=GtkActivatable *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'action',10004244,1,@Tid,'5.0'); # type=GtkAction *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'property_name',11421,2,@Tid,'5.0'); # type=const gchar *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkActivatable *, GtkAction *, const gchar *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'update',@Fptr,1,10004241,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkActivatable *, GtkAction *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'activatable',10004243,0,@Tid,'5.0'); # type=GtkActivatable *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'action',10004244,1,@Tid,'5.0'); # type=GtkAction *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkActivatable *, GtkAction *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'sync_action_properties',@Fptr,2,10004241,'5.0',0); # type=fptr

# _GtkSpinButtonClass (expect 10 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10004883,0,10004293,'5.0',0); # type=GtkEntryClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gint (*)(GtkSpinButton *, gdouble *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11400);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'spin_button',10004295,0,@Tid,'5.0'); # type=GtkSpinButton *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'new_value',12765,1,@Tid,'5.0'); # type=gdouble *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gint (*)(GtkSpinButton *, gdouble *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'input',@Fptr,1,10004293,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gint (*)(GtkSpinButton *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11400);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'spin_button',10004295,0,@Tid,'5.0'); # type=GtkSpinButton *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gint (*)(GtkSpinButton *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'output',@Fptr,2,10004293,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkSpinButton *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'spin_button',10004295,0,@Tid,'5.0'); # type=GtkSpinButton *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkSpinButton *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'value_changed',@Fptr,3,10004293,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkSpinButton *, GtkScrollType)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'spin_button',10004295,0,@Tid,'5.0'); # type=GtkSpinButton *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'scroll',10005621,1,@Tid,'5.0'); # type=GtkScrollType
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkSpinButton *, GtkScrollType)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'change_value',@Fptr,4,10004293,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkSpinButton *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkSpinButton *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'wrapped',@Fptr,5,10004293,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,6,10004293,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,7,10004293,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,8,10004293,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,9,10004293,'5.0',0); # type=fptr

# _GtkToolButtonClass (expect 7 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10005114,0,10004304,'5.0',0); # type=GtkToolItemClass
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'button_type',11836,1,10004304,'5.0',0); # type=GType
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkToolButton *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tool_item',10004306,0,@Tid,'5.0'); # type=GtkToolButton *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkToolButton *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'clicked',@Fptr,2,10004304,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,3,10004304,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,4,10004304,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,5,10004304,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,6,10004304,'5.0',0); # type=fptr

# _GtkIMContextClass (expect 23 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',11867,0,10004311,'5.0',0); # type=GObjectClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkIMContext *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10004313,0,@Tid,'5.0'); # type=GtkIMContext *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkIMContext *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'preedit_start',@Fptr,1,10004311,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkIMContext *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkIMContext *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'preedit_end',@Fptr,2,10004311,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkIMContext *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkIMContext *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'preedit_changed',@Fptr,3,10004311,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkIMContext *, const gchar *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10004313,0,@Tid,'5.0'); # type=GtkIMContext *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'str',11421,1,@Tid,'5.0'); # type=const gchar *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkIMContext *, const gchar *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'commit',@Fptr,4,10004311,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkIMContext *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10004313,0,@Tid,'5.0'); # type=GtkIMContext *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkIMContext *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'retrieve_surrounding',@Fptr,5,10004311,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkIMContext *, gint, gint)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10004313,0,@Tid,'5.0'); # type=GtkIMContext *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'offset',11400,1,@Tid,'5.0'); # type=gint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'n_chars',11400,2,@Tid,'5.0'); # type=gint
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkIMContext *, gint, gint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'delete_surrounding',@Fptr,6,10004311,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkIMContext *, GdkWindow *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10004313,0,@Tid,'5.0'); # type=GtkIMContext *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'window',10003900,1,@Tid,'5.0'); # type=GdkWindow *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkIMContext *, GdkWindow *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'set_client_window',@Fptr,7,10004311,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkIMContext *, gchar **, PangoAttrList **, gint *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10004313,0,@Tid,'5.0'); # type=GtkIMContext *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'str',11485,1,@Tid,'5.0'); # type=gchar **
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'attrs',12501,2,@Tid,'5.0'); # type=PangoAttrList **
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cursor_pos',11516,3,@Tid,'5.0'); # type=gint *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkIMContext *, gchar **, PangoAttrList **, gint *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_preedit_string',@Fptr,8,10004311,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkIMContext *, GdkEventKey *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10004313,0,@Tid,'5.0'); # type=GtkIMContext *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'event',0,1,@Tid,'5.0'); # type=GdkEventKey *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkIMContext *, GdkEventKey *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'filter_keypress',@Fptr,9,10004311,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkIMContext *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkIMContext *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'focus_in',@Fptr,10,10004311,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkIMContext *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkIMContext *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'focus_out',@Fptr,11,10004311,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkIMContext *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkIMContext *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'reset',@Fptr,12,10004311,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkIMContext *, GdkRectangle *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10004313,0,@Tid,'5.0'); # type=GtkIMContext *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'area',10003975,1,@Tid,'5.0'); # type=GdkRectangle *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkIMContext *, GdkRectangle *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'set_cursor_location',@Fptr,13,10004311,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkIMContext *, gboolean)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10004313,0,@Tid,'5.0'); # type=GtkIMContext *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'use_preedit',11401,1,@Tid,'5.0'); # type=gboolean
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkIMContext *, gboolean)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'set_use_preedit',@Fptr,14,10004311,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkIMContext *, const gchar *, gint, gint)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10004313,0,@Tid,'5.0'); # type=GtkIMContext *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'text',11421,1,@Tid,'5.0'); # type=const gchar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'len',11400,2,@Tid,'5.0'); # type=gint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cursor_index',11400,3,@Tid,'5.0'); # type=gint
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkIMContext *, const gchar *, gint, gint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'set_surrounding',@Fptr,15,10004311,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkIMContext *, gchar **, gint *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10004313,0,@Tid,'5.0'); # type=GtkIMContext *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'text',11485,1,@Tid,'5.0'); # type=gchar **
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cursor_index',11516,2,@Tid,'5.0'); # type=gint *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkIMContext *, gchar **, gint *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_surrounding',@Fptr,16,10004311,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,17,10004311,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,18,10004311,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,19,10004311,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,20,10004311,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved5',@Fptr,21,10004311,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved6',@Fptr,22,10004311,'5.0',0); # type=fptr

# _GtkToolShellIface (expect 10 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'g_iface',11997,0,10004323,'5.0',0); # type=GTypeInterface
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GtkIconSize (*)(GtkToolShell *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',10005587);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'shell',10004325,0,@Tid,'5.0'); # type=GtkToolShell *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='GtkIconSize (*)(GtkToolShell *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_icon_size',@Fptr,1,10004323,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GtkOrientation (*)(GtkToolShell *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',10005603);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'shell',10004325,0,@Tid,'5.0'); # type=GtkToolShell *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='GtkOrientation (*)(GtkToolShell *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_orientation',@Fptr,2,10004323,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GtkToolbarStyle (*)(GtkToolShell *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',10005629);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'shell',10004325,0,@Tid,'5.0'); # type=GtkToolShell *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='GtkToolbarStyle (*)(GtkToolShell *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_style',@Fptr,3,10004323,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GtkReliefStyle (*)(GtkToolShell *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',10005617);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'shell',10004325,0,@Tid,'5.0'); # type=GtkToolShell *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='GtkReliefStyle (*)(GtkToolShell *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_relief_style',@Fptr,4,10004323,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkToolShell *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'shell',10004325,0,@Tid,'5.0'); # type=GtkToolShell *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkToolShell *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'rebuild_menu',@Fptr,5,10004323,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: GtkOrientation (*)(GtkToolShell *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='GtkOrientation (*)(GtkToolShell *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_text_orientation',@Fptr,6,10004323,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gfloat (*)(GtkToolShell *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11843);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'shell',10004325,0,@Tid,'5.0'); # type=GtkToolShell *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gfloat (*)(GtkToolShell *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_text_alignment',@Fptr,7,10004323,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'PangoEllipsizeMode (*)(GtkToolShell *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',12478);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'shell',10004325,0,@Tid,'5.0'); # type=GtkToolShell *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='PangoEllipsizeMode (*)(GtkToolShell *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_ellipsize_mode',@Fptr,8,10004323,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GtkSizeGroup * (*)(GtkToolShell *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',10004326);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'shell',10004325,0,@Tid,'5.0'); # type=GtkToolShell *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='GtkSizeGroup * (*)(GtkToolShell *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_text_size_group',@Fptr,9,10004323,'5.0',0); # type=fptr

# _GtkToggleButtonClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10005564,0,10004333,'5.0',0); # type=GtkButtonClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkToggleButton *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'toggle_button',10004335,0,@Tid,'5.0'); # type=GtkToggleButton *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkToggleButton *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'toggled',@Fptr,1,10004333,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,2,10004333,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,3,10004333,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,4,10004333,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,5,10004333,'5.0',0); # type=fptr

# _GtkMenuShellClass (expect 15 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10006175,0,10004342,'5.0',0); # type=GtkContainerClass
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'submenu_placement',11402,1,10004342,'5.0',1); # type=guint
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkMenuShell *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'menu_shell',10004344,0,@Tid,'5.0'); # type=GtkMenuShell *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkMenuShell *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'deactivate',@Fptr,2,10004342,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkMenuShell *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkMenuShell *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'selection_done',@Fptr,3,10004342,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkMenuShell *, GtkMenuDirectionType)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'menu_shell',10004344,0,@Tid,'5.0'); # type=GtkMenuShell *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'direction',10005595,1,@Tid,'5.0'); # type=GtkMenuDirectionType
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkMenuShell *, GtkMenuDirectionType)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'move_current',@Fptr,4,10004342,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkMenuShell *, gboolean)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'menu_shell',10004344,0,@Tid,'5.0'); # type=GtkMenuShell *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'force_hide',11401,1,@Tid,'5.0'); # type=gboolean
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkMenuShell *, gboolean)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'activate_current',@Fptr,5,10004342,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkMenuShell *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkMenuShell *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'cancel',@Fptr,6,10004342,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkMenuShell *, GtkWidget *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'menu_shell',10004344,0,@Tid,'5.0'); # type=GtkMenuShell *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'menu_item',10004154,1,@Tid,'5.0'); # type=GtkWidget *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkMenuShell *, GtkWidget *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'select_item',@Fptr,7,10004342,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkMenuShell *, GtkWidget *, gint)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'menu_shell',10004344,0,@Tid,'5.0'); # type=GtkMenuShell *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'child',10004154,1,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'position',11400,2,@Tid,'5.0'); # type=gint
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkMenuShell *, GtkWidget *, gint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'insert',@Fptr,8,10004342,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gint (*)(GtkMenuShell *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11400);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'menu_shell',10004344,0,@Tid,'5.0'); # type=GtkMenuShell *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gint (*)(GtkMenuShell *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_popup_delay',@Fptr,9,10004342,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkMenuShell *, gint)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'menu_shell',10004344,0,@Tid,'5.0'); # type=GtkMenuShell *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'distance',11400,1,@Tid,'5.0'); # type=gint
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkMenuShell *, gint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'move_selected',@Fptr,10,10004342,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,11,10004342,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,12,10004342,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,13,10004342,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,14,10004342,'5.0',0); # type=fptr

# _GtkRecentManagerClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',11867,0,10004365,'5.0',0); # type=GObjectClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkRecentManager *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'manager',10004369,0,@Tid,'5.0'); # type=GtkRecentManager *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkRecentManager *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'changed',@Fptr,1,10004365,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_recent1',@Fptr,2,10004365,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_recent2',@Fptr,3,10004365,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_recent3',@Fptr,4,10004365,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_recent4',@Fptr,5,10004365,'5.0',0); # type=fptr

# _GtkRadioButtonClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10005875,0,10004402,'5.0',0); # type=GtkCheckButtonClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkRadioButton *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'radio_button',10004404,0,@Tid,'5.0'); # type=GtkRadioButton *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkRadioButton *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'group_changed',@Fptr,1,10004402,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,2,10004402,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,3,10004402,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,4,10004402,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,5,10004402,'5.0',0); # type=fptr

# _GtkLinkButtonClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10005564,0,10004432,'5.0',0); # type=GtkButtonClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkLinkButton *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'button',10004434,0,@Tid,'5.0'); # type=GtkLinkButton *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkLinkButton *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'activate_link',@Fptr,1,10004432,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_padding1',@Fptr,2,10004432,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_padding2',@Fptr,3,10004432,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_padding3',@Fptr,4,10004432,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_padding4',@Fptr,5,10004432,'5.0',0); # type=fptr

# _GtkRcStyle (expect 15 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_instance',11840,0,10004442,'5.0',0); # type=GObject
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'name',11415,1,10004442,'5.0',0); # type=gchar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'bg_pixmap_name',11415,2,10004442,'5.0',0); # type=gchar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'font_desc',12451,3,10004442,'5.0',0); # type=PangoFontDescription *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'color_flags',10006389,4,10004442,'5.0',0); # type=GtkRcFlags
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'fg',10004011,5,10004442,'5.0',0); # type=GdkColor
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'bg',10004011,6,10004442,'5.0',0); # type=GdkColor
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'text',10004011,7,10004442,'5.0',0); # type=GdkColor
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'base',10004011,8,10004442,'5.0',0); # type=GdkColor
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'xthickness',11400,9,10004442,'5.0',0); # type=gint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'ythickness',11400,10,10004442,'5.0',0); # type=gint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'rc_properties',11646,11,10004442,'5.0',0); # type=GArray *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'rc_style_lists',11452,12,10004442,'5.0',0); # type=GSList *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'icon_factories',11452,13,10004442,'5.0',0); # type=GSList *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'engine_specified',11402,14,10004442,'5.0',1); # type=guint

# _GtkRangeClass (expect 12 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10004828,0,10004469,'5.0',0); # type=GtkWidgetClass
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'slider_detail',11415,1,10004469,'5.0',0); # type=gchar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'stepper_detail',11415,2,10004469,'5.0',0); # type=gchar *
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkRange *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'range',10004471,0,@Tid,'5.0'); # type=GtkRange *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkRange *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'value_changed',@Fptr,3,10004469,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkRange *, gdouble)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'range',10004471,0,@Tid,'5.0'); # type=GtkRange *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'new_value',11598,1,@Tid,'5.0'); # type=gdouble
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkRange *, gdouble)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'adjust_bounds',@Fptr,4,10004469,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkRange *, GtkScrollType)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'range',10004471,0,@Tid,'5.0'); # type=GtkRange *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'scroll',10005621,1,@Tid,'5.0'); # type=GtkScrollType
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkRange *, GtkScrollType)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'move_slider',@Fptr,5,10004469,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkRange *, GtkBorder *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'range',10004471,0,@Tid,'5.0'); # type=GtkRange *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'border_',10004255,1,@Tid,'5.0'); # type=GtkBorder *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkRange *, GtkBorder *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_range_border',@Fptr,6,10004469,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkRange *, GtkScrollType, gdouble)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'range',10004471,0,@Tid,'5.0'); # type=GtkRange *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'scroll',10005621,1,@Tid,'5.0'); # type=GtkScrollType
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'new_value',11598,2,@Tid,'5.0'); # type=gdouble
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkRange *, GtkScrollType, gdouble)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'change_value',@Fptr,7,10004469,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,8,10004469,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,9,10004469,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,10,10004469,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,11,10004469,'5.0',0); # type=fptr

# _GtkTreeSelectionClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',11867,0,10004494,'5.0',0); # type=GObjectClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkTreeSelection *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'selection',10004485,0,@Tid,'5.0'); # type=GtkTreeSelection *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTreeSelection *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'changed',@Fptr,1,10004494,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,2,10004494,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,3,10004494,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,4,10004494,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,5,10004494,'5.0',0); # type=fptr

# _GtkTreeViewColumnClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10003273,0,10004518,'5.0',0); # type=GInitiallyUnownedClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkTreeViewColumn *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tree_column',10004513,0,@Tid,'5.0'); # type=GtkTreeViewColumn *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTreeViewColumn *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'clicked',@Fptr,1,10004518,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,2,10004518,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,3,10004518,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,4,10004518,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,5,10004518,'5.0',0); # type=fptr

# _GtkStatusIconClass (expect 12 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',11867,0,10004545,'5.0',0); # type=GObjectClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkStatusIcon *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'status_icon',10004547,0,@Tid,'5.0'); # type=GtkStatusIcon *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkStatusIcon *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'activate',@Fptr,1,10004545,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkStatusIcon *, guint, guint32)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'status_icon',10004547,0,@Tid,'5.0'); # type=GtkStatusIcon *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'button',11402,1,@Tid,'5.0'); # type=guint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'activate_time',11412,2,@Tid,'5.0'); # type=guint32
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkStatusIcon *, guint, guint32)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'popup_menu',@Fptr,2,10004545,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkStatusIcon *, gint)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'status_icon',10004547,0,@Tid,'5.0'); # type=GtkStatusIcon *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'size',11400,1,@Tid,'5.0'); # type=gint
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkStatusIcon *, gint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'size_changed',@Fptr,3,10004545,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkStatusIcon *, GdkEventButton *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'status_icon',10004547,0,@Tid,'5.0'); # type=GtkStatusIcon *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'event',0,1,@Tid,'5.0'); # type=GdkEventButton *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkStatusIcon *, GdkEventButton *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'button_press_event',@Fptr,4,10004545,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: gboolean (*)(GtkStatusIcon *, GdkEventButton *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkStatusIcon *, GdkEventButton *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'button_release_event',@Fptr,5,10004545,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkStatusIcon *, GdkEventScroll *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'status_icon',10004547,0,@Tid,'5.0'); # type=GtkStatusIcon *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'event',0,1,@Tid,'5.0'); # type=GdkEventScroll *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkStatusIcon *, GdkEventScroll *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'scroll_event',@Fptr,6,10004545,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkStatusIcon *, gint, gint, gboolean, GtkTooltip *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'status_icon',10004547,0,@Tid,'5.0'); # type=GtkStatusIcon *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'x',11400,1,@Tid,'5.0'); # type=gint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'y',11400,2,@Tid,'5.0'); # type=gint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'keyboard_mode',11401,3,@Tid,'5.0'); # type=gboolean
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tooltip',10005822,4,@Tid,'5.0'); # type=GtkTooltip *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkStatusIcon *, gint, gint, gboolean, GtkTooltip *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'query_tooltip',@Fptr,7,10004545,'5.0',0); # type=fptr
#OOPS! what happened? void|(*__gtk_reserved1)
#OOPS! what happened? void|(*__gtk_reserved2)
#OOPS! what happened? void|(*__gtk_reserved3)
#OOPS! what happened? void|(*__gtk_reserved4)

# _GtkCalendarClass (expect 12 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10004828,0,10004573,'5.0',0); # type=GtkWidgetClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCalendar *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'calendar',10004569,0,@Tid,'5.0'); # type=GtkCalendar *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCalendar *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'month_changed',@Fptr,1,10004573,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkCalendar *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCalendar *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'day_selected',@Fptr,2,10004573,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkCalendar *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCalendar *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'day_selected_double_click',@Fptr,3,10004573,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkCalendar *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCalendar *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'prev_month',@Fptr,4,10004573,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkCalendar *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCalendar *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'next_month',@Fptr,5,10004573,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkCalendar *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCalendar *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'prev_year',@Fptr,6,10004573,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkCalendar *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCalendar *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'next_year',@Fptr,7,10004573,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,8,10004573,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,9,10004573,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,10,10004573,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,11,10004573,'5.0',0); # type=fptr

# _GtkActionableInterface (expect 5 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'g_iface',11997,0,10004599,'5.0',0); # type=GTypeInterface
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'const gchar * (*)(GtkActionable *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11421);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'actionable',10004601,0,@Tid,'5.0'); # type=GtkActionable *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='const gchar * (*)(GtkActionable *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_action_name',@Fptr,1,10004599,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkActionable *, const gchar *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'actionable',10004601,0,@Tid,'5.0'); # type=GtkActionable *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'action_name',11421,1,@Tid,'5.0'); # type=const gchar *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkActionable *, const gchar *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'set_action_name',@Fptr,2,10004599,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GVariant * (*)(GtkActionable *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',41081);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'actionable',10004601,0,@Tid,'5.0'); # type=GtkActionable *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='GVariant * (*)(GtkActionable *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_action_target_value',@Fptr,3,10004599,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkActionable *, GVariant *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'actionable',10004601,0,@Tid,'5.0'); # type=GtkActionable *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'target_value',41081,1,@Tid,'5.0'); # type=GVariant *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkActionable *, GVariant *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'set_action_target_value',@Fptr,4,10004599,'5.0',0); # type=fptr

# _GtkRecentChooserIface (expect 15 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'base_iface',11997,0,10004623,'5.0',0); # type=GTypeInterface
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkRecentChooser *, const gchar *, GError **)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'chooser',10004625,0,@Tid,'5.0'); # type=GtkRecentChooser *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'uri',11421,1,@Tid,'5.0'); # type=const gchar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'error',11481,2,@Tid,'5.0'); # type=GError **
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkRecentChooser *, const gchar *, GError **)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'set_current_uri',@Fptr,1,10004623,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gchar * (*)(GtkRecentChooser *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11415);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'chooser',10004625,0,@Tid,'5.0'); # type=GtkRecentChooser *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gchar * (*)(GtkRecentChooser *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_current_uri',@Fptr,2,10004623,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: gboolean (*)(GtkRecentChooser *, const gchar *, GError **)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkRecentChooser *, const gchar *, GError **)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'select_uri',@Fptr,3,10004623,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkRecentChooser *, const gchar *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'chooser',10004625,0,@Tid,'5.0'); # type=GtkRecentChooser *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'uri',11421,1,@Tid,'5.0'); # type=const gchar *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkRecentChooser *, const gchar *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'unselect_uri',@Fptr,4,10004623,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkRecentChooser *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'chooser',10004625,0,@Tid,'5.0'); # type=GtkRecentChooser *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkRecentChooser *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'select_all',@Fptr,5,10004623,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkRecentChooser *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkRecentChooser *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'unselect_all',@Fptr,6,10004623,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GList * (*)(GtkRecentChooser *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11430);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'chooser',10004625,0,@Tid,'5.0'); # type=GtkRecentChooser *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='GList * (*)(GtkRecentChooser *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_items',@Fptr,7,10004623,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GtkRecentManager * (*)(GtkRecentChooser *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',10004369);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'chooser',10004625,0,@Tid,'5.0'); # type=GtkRecentChooser *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='GtkRecentManager * (*)(GtkRecentChooser *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_recent_manager',@Fptr,8,10004623,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkRecentChooser *, GtkRecentFilter *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'chooser',10004625,0,@Tid,'5.0'); # type=GtkRecentChooser *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'filter',10004626,1,@Tid,'5.0'); # type=GtkRecentFilter *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkRecentChooser *, GtkRecentFilter *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'add_filter',@Fptr,9,10004623,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkRecentChooser *, GtkRecentFilter *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkRecentChooser *, GtkRecentFilter *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'remove_filter',@Fptr,10,10004623,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GSList * (*)(GtkRecentChooser *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11452);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'chooser',10004625,0,@Tid,'5.0'); # type=GtkRecentChooser *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='GSList * (*)(GtkRecentChooser *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'list_filters',@Fptr,11,10004623,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkRecentChooser *, GtkRecentSortFunc, gpointer, GDestroyNotify)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'chooser',10004625,0,@Tid,'5.0'); # type=GtkRecentChooser *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'sort_func',10004616,1,@Tid,'5.0'); # type=GtkRecentSortFunc
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'sort_data',11404,2,@Tid,'5.0'); # type=gpointer
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'data_destroy',11439,3,@Tid,'5.0'); # type=GDestroyNotify
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkRecentChooser *, GtkRecentSortFunc, gpointer, GDestroyNotify)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'set_sort_func',@Fptr,12,10004623,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkRecentChooser *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkRecentChooser *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'item_activated',@Fptr,13,10004623,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkRecentChooser *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkRecentChooser *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'selection_changed',@Fptr,14,10004623,'5.0',0); # type=fptr

# _GtkRadioActionClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10005170,0,10004639,'5.0',0); # type=GtkToggleActionClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkRadioAction *, GtkRadioAction *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'action',10004641,0,@Tid,'5.0'); # type=GtkRadioAction *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'current',10004641,1,@Tid,'5.0'); # type=GtkRadioAction *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkRadioAction *, GtkRadioAction *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'changed',@Fptr,1,10004639,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,2,10004639,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,3,10004639,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,4,10004639,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,5,10004639,'5.0',0); # type=fptr

# _GtkPlugClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10005883,0,10004656,'5.0',0); # type=GtkWindowClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkPlug *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'plug',10004658,0,@Tid,'5.0'); # type=GtkPlug *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkPlug *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'embedded',@Fptr,1,10004656,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,2,10004656,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,3,10004656,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,4,10004656,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,5,10004656,'5.0',0); # type=fptr

# _GtkNotebookClass (expect 20 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10006175,0,10004698,'5.0',0); # type=GtkContainerClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkNotebook *, GtkWidget *, guint)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'notebook',10004700,0,@Tid,'5.0'); # type=GtkNotebook *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'page',10004154,1,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'page_num',11402,2,@Tid,'5.0'); # type=guint
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkNotebook *, GtkWidget *, guint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'switch_page',@Fptr,1,10004698,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkNotebook *, gboolean)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'notebook',10004700,0,@Tid,'5.0'); # type=GtkNotebook *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'move_focus',11401,1,@Tid,'5.0'); # type=gboolean
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkNotebook *, gboolean)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'select_page',@Fptr,2,10004698,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkNotebook *, GtkNotebookTab)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'notebook',10004700,0,@Tid,'5.0'); # type=GtkNotebook *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'type',10004691,1,@Tid,'5.0'); # type=GtkNotebookTab
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkNotebook *, GtkNotebookTab)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'focus_tab',@Fptr,3,10004698,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkNotebook *, gint)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'notebook',10004700,0,@Tid,'5.0'); # type=GtkNotebook *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'offset',11400,1,@Tid,'5.0'); # type=gint
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkNotebook *, gint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'change_current_page',@Fptr,4,10004698,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkNotebook *, GtkDirectionType)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'notebook',10004700,0,@Tid,'5.0'); # type=GtkNotebook *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'direction',10005583,1,@Tid,'5.0'); # type=GtkDirectionType
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkNotebook *, GtkDirectionType)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'move_focus_out',@Fptr,5,10004698,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkNotebook *, GtkDirectionType, gboolean)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'notebook',10004700,0,@Tid,'5.0'); # type=GtkNotebook *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'direction',10005583,1,@Tid,'5.0'); # type=GtkDirectionType
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'move_to_last',11401,2,@Tid,'5.0'); # type=gboolean
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkNotebook *, GtkDirectionType, gboolean)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'reorder_tab',@Fptr,6,10004698,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gint (*)(GtkNotebook *, GtkWidget *, GtkWidget *, GtkWidget *, gint)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11400);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'notebook',10004700,0,@Tid,'5.0'); # type=GtkNotebook *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'child',10004154,1,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tab_label',10004154,2,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'menu_label',10004154,3,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'position',11400,4,@Tid,'5.0'); # type=gint
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gint (*)(GtkNotebook *, GtkWidget *, GtkWidget *, GtkWidget *, gint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'insert_page',@Fptr,7,10004698,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GtkNotebook * (*)(GtkNotebook *, GtkWidget *, gint, gint)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',10004700);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'notebook',10004700,0,@Tid,'5.0'); # type=GtkNotebook *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'page',10004154,1,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'x',11400,2,@Tid,'5.0'); # type=gint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'y',11400,3,@Tid,'5.0'); # type=gint
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='GtkNotebook * (*)(GtkNotebook *, GtkWidget *, gint, gint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'create_window',@Fptr,8,10004698,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkNotebook *, GtkWidget *, guint)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkNotebook *, GtkWidget *, guint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'page_reordered',@Fptr,9,10004698,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkNotebook *, GtkWidget *, guint)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkNotebook *, GtkWidget *, guint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'page_removed',@Fptr,10,10004698,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkNotebook *, GtkWidget *, guint)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkNotebook *, GtkWidget *, guint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'page_added',@Fptr,11,10004698,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,12,10004698,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,13,10004698,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,14,10004698,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,15,10004698,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved5',@Fptr,16,10004698,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved6',@Fptr,17,10004698,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved7',@Fptr,18,10004698,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved8',@Fptr,19,10004698,'5.0',0); # type=fptr

# _GtkTreeDragSourceIface (expect 4 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'g_iface',11997,0,10004714,'5.0',0); # type=GTypeInterface
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkTreeDragSource *, GtkTreePath *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'drag_source',10004716,0,@Tid,'5.0'); # type=GtkTreeDragSource *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'path',10004487,1,@Tid,'5.0'); # type=GtkTreePath *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkTreeDragSource *, GtkTreePath *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'row_draggable',@Fptr,1,10004714,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkTreeDragSource *, GtkTreePath *, GtkSelectionData *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'drag_source',10004716,0,@Tid,'5.0'); # type=GtkTreeDragSource *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'path',10004487,1,@Tid,'5.0'); # type=GtkTreePath *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'selection_data',10004664,2,@Tid,'5.0'); # type=GtkSelectionData *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkTreeDragSource *, GtkTreePath *, GtkSelectionData *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'drag_data_get',@Fptr,2,10004714,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: gboolean (*)(GtkTreeDragSource *, GtkTreePath *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkTreeDragSource *, GtkTreePath *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'drag_data_delete',@Fptr,3,10004714,'5.0',0); # type=fptr

# _GtkTreeDragDestIface (expect 3 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'g_iface',11997,0,10004720,'5.0',0); # type=GTypeInterface
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkTreeDragDest *, GtkTreePath *, GtkSelectionData *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'drag_dest',10004722,0,@Tid,'5.0'); # type=GtkTreeDragDest *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'dest',10004487,1,@Tid,'5.0'); # type=GtkTreePath *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'selection_data',10004664,2,@Tid,'5.0'); # type=GtkSelectionData *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkTreeDragDest *, GtkTreePath *, GtkSelectionData *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'drag_data_received',@Fptr,1,10004720,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: gboolean (*)(GtkTreeDragDest *, GtkTreePath *, GtkSelectionData *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkTreeDragDest *, GtkTreePath *, GtkSelectionData *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'row_drop_possible',@Fptr,2,10004720,'5.0',0); # type=fptr

# _GtkEntryBufferClass (expect 15 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',11867,0,10004748,'5.0',0); # type=GObjectClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkEntryBuffer *, guint, const gchar *, guint)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'buffer',10004750,0,@Tid,'5.0'); # type=GtkEntryBuffer *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'position',11402,1,@Tid,'5.0'); # type=guint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'chars',11421,2,@Tid,'5.0'); # type=const gchar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'n_chars',11402,3,@Tid,'5.0'); # type=guint
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkEntryBuffer *, guint, const gchar *, guint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'inserted_text',@Fptr,1,10004748,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkEntryBuffer *, guint, guint)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'buffer',10004750,0,@Tid,'5.0'); # type=GtkEntryBuffer *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'position',11402,1,@Tid,'5.0'); # type=guint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'n_chars',11402,2,@Tid,'5.0'); # type=guint
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkEntryBuffer *, guint, guint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'deleted_text',@Fptr,2,10004748,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'const gchar* (*)(GtkEntryBuffer *, gsize *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',0);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'buffer',10004750,0,@Tid,'5.0'); # type=GtkEntryBuffer *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'n_bytes',11480,1,@Tid,'5.0'); # type=gsize *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='const gchar* (*)(GtkEntryBuffer *, gsize *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_text',@Fptr,3,10004748,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'guint (*)(GtkEntryBuffer *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11402);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'buffer',10004750,0,@Tid,'5.0'); # type=GtkEntryBuffer *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='guint (*)(GtkEntryBuffer *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_length',@Fptr,4,10004748,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'guint (*)(GtkEntryBuffer *, guint, const gchar *, guint)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11402);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'buffer',10004750,0,@Tid,'5.0'); # type=GtkEntryBuffer *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'position',11402,1,@Tid,'5.0'); # type=guint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'chars',11421,2,@Tid,'5.0'); # type=const gchar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'n_chars',11402,3,@Tid,'5.0'); # type=guint
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='guint (*)(GtkEntryBuffer *, guint, const gchar *, guint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'insert_text',@Fptr,5,10004748,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'guint (*)(GtkEntryBuffer *, guint, guint)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11402);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'buffer',10004750,0,@Tid,'5.0'); # type=GtkEntryBuffer *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'position',11402,1,@Tid,'5.0'); # type=guint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'n_chars',11402,2,@Tid,'5.0'); # type=guint
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='guint (*)(GtkEntryBuffer *, guint, guint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'delete_text',@Fptr,6,10004748,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,7,10004748,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,8,10004748,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,9,10004748,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,10,10004748,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved5',@Fptr,11,10004748,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved6',@Fptr,12,10004748,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved7',@Fptr,13,10004748,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved8',@Fptr,14,10004748,'5.0',0); # type=fptr

# _GtkThemingEngineClass (expect 18 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',11867,0,10004773,'5.0',0); # type=GObjectClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkThemingEngine *, cairo_t *, gdouble, gdouble, gdouble, gdouble)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'engine',10004775,0,@Tid,'5.0'); # type=GtkThemingEngine *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cr',32487,1,@Tid,'5.0'); # type=cairo_t *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'x0',11598,2,@Tid,'5.0'); # type=gdouble
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'y0',11598,3,@Tid,'5.0'); # type=gdouble
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'x1',11598,4,@Tid,'5.0'); # type=gdouble
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'y1',11598,5,@Tid,'5.0'); # type=gdouble
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkThemingEngine *, cairo_t *, gdouble, gdouble, gdouble, gdouble)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'render_line',@Fptr,1,10004773,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkThemingEngine *, cairo_t *, gdouble, gdouble, gdouble, gdouble)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkThemingEngine *, cairo_t *, gdouble, gdouble, gdouble, gdouble)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'render_background',@Fptr,2,10004773,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkThemingEngine *, cairo_t *, gdouble, gdouble, gdouble, gdouble)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkThemingEngine *, cairo_t *, gdouble, gdouble, gdouble, gdouble)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'render_frame',@Fptr,3,10004773,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkThemingEngine *, cairo_t *, gdouble, gdouble, gdouble, gdouble, GtkPositionType, gdouble, gdouble)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'engine',10004775,0,@Tid,'5.0'); # type=GtkThemingEngine *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cr',32487,1,@Tid,'5.0'); # type=cairo_t *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'x',11598,2,@Tid,'5.0'); # type=gdouble
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'y',11598,3,@Tid,'5.0'); # type=gdouble
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'width',11598,4,@Tid,'5.0'); # type=gdouble
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'height',11598,5,@Tid,'5.0'); # type=gdouble
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'gap_side',10005615,6,@Tid,'5.0'); # type=GtkPositionType
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'xy0_gap',11598,7,@Tid,'5.0'); # type=gdouble
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'xy1_gap',11598,8,@Tid,'5.0'); # type=gdouble
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkThemingEngine *, cairo_t *, gdouble, gdouble, gdouble, gdouble, GtkPositionType, gdouble, gdouble)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'render_frame_gap',@Fptr,4,10004773,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkThemingEngine *, cairo_t *, gdouble, gdouble, gdouble, gdouble, GtkPositionType)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'engine',10004775,0,@Tid,'5.0'); # type=GtkThemingEngine *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cr',32487,1,@Tid,'5.0'); # type=cairo_t *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'x',11598,2,@Tid,'5.0'); # type=gdouble
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'y',11598,3,@Tid,'5.0'); # type=gdouble
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'width',11598,4,@Tid,'5.0'); # type=gdouble
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'height',11598,5,@Tid,'5.0'); # type=gdouble
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'gap_side',10005615,6,@Tid,'5.0'); # type=GtkPositionType
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkThemingEngine *, cairo_t *, gdouble, gdouble, gdouble, gdouble, GtkPositionType)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'render_extension',@Fptr,5,10004773,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkThemingEngine *, cairo_t *, gdouble, gdouble, gdouble, gdouble)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkThemingEngine *, cairo_t *, gdouble, gdouble, gdouble, gdouble)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'render_check',@Fptr,6,10004773,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkThemingEngine *, cairo_t *, gdouble, gdouble, gdouble, gdouble)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkThemingEngine *, cairo_t *, gdouble, gdouble, gdouble, gdouble)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'render_option',@Fptr,7,10004773,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkThemingEngine *, cairo_t *, gdouble, gdouble, gdouble, gdouble)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkThemingEngine *, cairo_t *, gdouble, gdouble, gdouble, gdouble)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'render_arrow',@Fptr,8,10004773,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkThemingEngine *, cairo_t *, gdouble, gdouble, gdouble, gdouble)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkThemingEngine *, cairo_t *, gdouble, gdouble, gdouble, gdouble)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'render_expander',@Fptr,9,10004773,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkThemingEngine *, cairo_t *, gdouble, gdouble, gdouble, gdouble)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkThemingEngine *, cairo_t *, gdouble, gdouble, gdouble, gdouble)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'render_focus',@Fptr,10,10004773,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkThemingEngine *, cairo_t *, gdouble, gdouble, PangoLayout *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'engine',10004775,0,@Tid,'5.0'); # type=GtkThemingEngine *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cr',32487,1,@Tid,'5.0'); # type=cairo_t *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'x',11598,2,@Tid,'5.0'); # type=gdouble
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'y',11598,3,@Tid,'5.0'); # type=gdouble
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'layout',12355,4,@Tid,'5.0'); # type=PangoLayout *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkThemingEngine *, cairo_t *, gdouble, gdouble, PangoLayout *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'render_layout',@Fptr,11,10004773,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkThemingEngine *, cairo_t *, gdouble, gdouble, gdouble, gdouble, GtkOrientation)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'engine',10004775,0,@Tid,'5.0'); # type=GtkThemingEngine *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cr',32487,1,@Tid,'5.0'); # type=cairo_t *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'x',11598,2,@Tid,'5.0'); # type=gdouble
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'y',11598,3,@Tid,'5.0'); # type=gdouble
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'width',11598,4,@Tid,'5.0'); # type=gdouble
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'height',11598,5,@Tid,'5.0'); # type=gdouble
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'orientation',10005603,6,@Tid,'5.0'); # type=GtkOrientation
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkThemingEngine *, cairo_t *, gdouble, gdouble, gdouble, gdouble, GtkOrientation)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'render_slider',@Fptr,12,10004773,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkThemingEngine *, cairo_t *, gdouble, gdouble, gdouble, gdouble)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkThemingEngine *, cairo_t *, gdouble, gdouble, gdouble, gdouble)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'render_handle',@Fptr,13,10004773,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkThemingEngine *, cairo_t *, gdouble, gdouble, gdouble, gdouble)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkThemingEngine *, cairo_t *, gdouble, gdouble, gdouble, gdouble)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'render_activity',@Fptr,14,10004773,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GdkPixbuf * (*)(GtkThemingEngine *, const GtkIconSource *, GtkIconSize)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',0);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'engine',10004775,0,@Tid,'5.0'); # type=GtkThemingEngine *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'source',10005713,1,@Tid,'5.0'); # type=const GtkIconSource *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'size',10005587,2,@Tid,'5.0'); # type=GtkIconSize
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='GdkPixbuf * (*)(GtkThemingEngine *, const GtkIconSource *, GtkIconSize)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'render_icon_pixbuf',@Fptr,15,10004773,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkThemingEngine *, cairo_t *, GdkPixbuf *, gdouble, gdouble)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'engine',10004775,0,@Tid,'5.0'); # type=GtkThemingEngine *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cr',32487,1,@Tid,'5.0'); # type=cairo_t *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'pixbuf',0,2,@Tid,'5.0'); # type=GdkPixbuf *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'x',11598,3,@Tid,'5.0'); # type=gdouble
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'y',11598,4,@Tid,'5.0'); # type=gdouble
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkThemingEngine *, cairo_t *, GdkPixbuf *, gdouble, gdouble)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'render_icon',@Fptr,16,10004773,'5.0',0); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'padding',11404,17,10004773,'5.0',0); # type=gpointer

# _GtkFontChooserIface (expect 7 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'base_iface',11997,0,10004791,'5.0',0); # type=GTypeInterface
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'PangoFontFamily * (*)(GtkFontChooser *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',12450);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'fontchooser',10004794,0,@Tid,'5.0'); # type=GtkFontChooser *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='PangoFontFamily * (*)(GtkFontChooser *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_font_family',@Fptr,1,10004791,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'PangoFontFace * (*)(GtkFontChooser *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',12350);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'fontchooser',10004794,0,@Tid,'5.0'); # type=GtkFontChooser *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='PangoFontFace * (*)(GtkFontChooser *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_font_face',@Fptr,2,10004791,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gint (*)(GtkFontChooser *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11400);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'fontchooser',10004794,0,@Tid,'5.0'); # type=GtkFontChooser *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gint (*)(GtkFontChooser *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_font_size',@Fptr,3,10004791,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkFontChooser *, GtkFontFilterFunc, gpointer, GDestroyNotify)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'fontchooser',10004794,0,@Tid,'5.0'); # type=GtkFontChooser *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'filter',10004782,1,@Tid,'5.0'); # type=GtkFontFilterFunc
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'user_data',11404,2,@Tid,'5.0'); # type=gpointer
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'destroy',11439,3,@Tid,'5.0'); # type=GDestroyNotify
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkFontChooser *, GtkFontFilterFunc, gpointer, GDestroyNotify)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'set_filter_func',@Fptr,4,10004791,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkFontChooser *, const gchar *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'chooser',10004794,0,@Tid,'5.0'); # type=GtkFontChooser *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'fontname',11421,1,@Tid,'5.0'); # type=const gchar *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkFontChooser *, const gchar *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'font_activated',@Fptr,5,10004791,'5.0',0); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'padding',11404,6,10004791,'5.0',0); # type=gpointer

# _GtkAppChooserButtonClass (expect 3 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10005921,0,10004804,'5.0',0); # type=GtkComboBoxClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkAppChooserButton *, const gchar *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'self',10004805,0,@Tid,'5.0'); # type=GtkAppChooserButton *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'item_name',11421,1,@Tid,'5.0'); # type=const gchar *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkAppChooserButton *, const gchar *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'custom_item_activated',@Fptr,1,10004804,'5.0',0); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'padding',11404,2,10004804,'5.0',0); # type=gpointer

# _GtkWidgetClass (expect 87 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10003273,0,10004837,'5.0',0); # type=GInitiallyUnownedClass
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'activate_signal',11402,1,10004837,'5.0',0); # type=guint
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkWidget *, guint, GParamSpec **)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'n_pspecs',11402,1,@Tid,'5.0'); # type=guint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'pspecs',11863,2,@Tid,'5.0'); # type=GParamSpec **
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkWidget *, guint, GParamSpec **)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'dispatch_child_properties_changed',@Fptr,2,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkWidget *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkWidget *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'destroy',@Fptr,3,10004837,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkWidget *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkWidget *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'show',@Fptr,4,10004837,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkWidget *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkWidget *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'show_all',@Fptr,5,10004837,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkWidget *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkWidget *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'hide',@Fptr,6,10004837,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkWidget *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkWidget *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'map',@Fptr,7,10004837,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkWidget *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkWidget *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'unmap',@Fptr,8,10004837,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkWidget *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkWidget *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'realize',@Fptr,9,10004837,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkWidget *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkWidget *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'unrealize',@Fptr,10,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkWidget *, GtkAllocation *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'allocation',10004845,1,@Tid,'5.0'); # type=GtkAllocation *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkWidget *, GtkAllocation *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'size_allocate',@Fptr,11,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkWidget *, GtkStateType)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'previous_state',10005627,1,@Tid,'5.0'); # type=GtkStateType
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkWidget *, GtkStateType)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'state_changed',@Fptr,12,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkWidget *, GtkStateFlags)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'previous_state_flags',10005667,1,@Tid,'5.0'); # type=GtkStateFlags
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkWidget *, GtkStateFlags)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'state_flags_changed',@Fptr,13,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkWidget *, GtkWidget *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'previous_parent',10004154,1,@Tid,'5.0'); # type=GtkWidget *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkWidget *, GtkWidget *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_set',@Fptr,14,10004837,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkWidget *, GtkWidget *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkWidget *, GtkWidget *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'hierarchy_changed',@Fptr,15,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkWidget *, GtkStyle *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'previous_style',10005711,1,@Tid,'5.0'); # type=GtkStyle *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkWidget *, GtkStyle *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'style_set',@Fptr,16,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkWidget *, GtkTextDirection)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'previous_direction',10005591,1,@Tid,'5.0'); # type=GtkTextDirection
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkWidget *, GtkTextDirection)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'direction_changed',@Fptr,17,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkWidget *, gboolean)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'was_grabbed',11401,1,@Tid,'5.0'); # type=gboolean
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkWidget *, gboolean)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'grab_notify',@Fptr,18,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkWidget *, GParamSpec *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'child_property',11854,1,@Tid,'5.0'); # type=GParamSpec *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkWidget *, GParamSpec *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'child_notify',@Fptr,19,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkWidget *, cairo_t *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cr',32487,1,@Tid,'5.0'); # type=cairo_t *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkWidget *, cairo_t *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'draw',@Fptr,20,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GtkSizeRequestMode (*)(GtkWidget *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',10005663);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='GtkSizeRequestMode (*)(GtkWidget *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_request_mode',@Fptr,21,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkWidget *, gint *, gint *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'minimum_height',11516,1,@Tid,'5.0'); # type=gint *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'natural_height',11516,2,@Tid,'5.0'); # type=gint *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkWidget *, gint *, gint *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_preferred_height',@Fptr,22,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkWidget *, gint, gint *, gint *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'height',11400,1,@Tid,'5.0'); # type=gint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'minimum_width',11516,2,@Tid,'5.0'); # type=gint *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'natural_width',11516,3,@Tid,'5.0'); # type=gint *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkWidget *, gint, gint *, gint *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_preferred_width_for_height',@Fptr,23,10004837,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkWidget *, gint *, gint *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkWidget *, gint *, gint *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_preferred_width',@Fptr,24,10004837,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkWidget *, gint, gint *, gint *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkWidget *, gint, gint *, gint *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_preferred_height_for_width',@Fptr,25,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkWidget *, gboolean)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'group_cycling',11401,1,@Tid,'5.0'); # type=gboolean
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkWidget *, gboolean)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'mnemonic_activate',@Fptr,26,10004837,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkWidget *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkWidget *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'grab_focus',@Fptr,27,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkWidget *, GtkDirectionType)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'direction',10005583,1,@Tid,'5.0'); # type=GtkDirectionType
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkWidget *, GtkDirectionType)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'focus',@Fptr,28,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkWidget *, GtkDirectionType)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'direction',10005583,1,@Tid,'5.0'); # type=GtkDirectionType
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkWidget *, GtkDirectionType)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'move_focus',@Fptr,29,10004837,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: gboolean (*)(GtkWidget *, GtkDirectionType)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkWidget *, GtkDirectionType)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'keynav_failed',@Fptr,30,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkWidget *, GdkEvent *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'event',10003822,1,@Tid,'5.0'); # type=GdkEvent *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkWidget *, GdkEvent *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'event',@Fptr,31,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkWidget *, GdkEventButton *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'event',0,1,@Tid,'5.0'); # type=GdkEventButton *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkWidget *, GdkEventButton *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'button_press_event',@Fptr,32,10004837,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: gboolean (*)(GtkWidget *, GdkEventButton *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkWidget *, GdkEventButton *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'button_release_event',@Fptr,33,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkWidget *, GdkEventScroll *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'event',0,1,@Tid,'5.0'); # type=GdkEventScroll *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkWidget *, GdkEventScroll *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'scroll_event',@Fptr,34,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkWidget *, GdkEventMotion *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'event',0,1,@Tid,'5.0'); # type=GdkEventMotion *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkWidget *, GdkEventMotion *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'motion_notify_event',@Fptr,35,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkWidget *, GdkEventAny *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'event',0,1,@Tid,'5.0'); # type=GdkEventAny *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkWidget *, GdkEventAny *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'delete_event',@Fptr,36,10004837,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: gboolean (*)(GtkWidget *, GdkEventAny *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkWidget *, GdkEventAny *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'destroy_event',@Fptr,37,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkWidget *, GdkEventKey *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'event',0,1,@Tid,'5.0'); # type=GdkEventKey *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkWidget *, GdkEventKey *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'key_press_event',@Fptr,38,10004837,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: gboolean (*)(GtkWidget *, GdkEventKey *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkWidget *, GdkEventKey *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'key_release_event',@Fptr,39,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkWidget *, GdkEventCrossing *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'event',0,1,@Tid,'5.0'); # type=GdkEventCrossing *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkWidget *, GdkEventCrossing *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'enter_notify_event',@Fptr,40,10004837,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: gboolean (*)(GtkWidget *, GdkEventCrossing *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkWidget *, GdkEventCrossing *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'leave_notify_event',@Fptr,41,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkWidget *, GdkEventConfigure *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'event',0,1,@Tid,'5.0'); # type=GdkEventConfigure *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkWidget *, GdkEventConfigure *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'configure_event',@Fptr,42,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkWidget *, GdkEventFocus *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'event',0,1,@Tid,'5.0'); # type=GdkEventFocus *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkWidget *, GdkEventFocus *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'focus_in_event',@Fptr,43,10004837,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: gboolean (*)(GtkWidget *, GdkEventFocus *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkWidget *, GdkEventFocus *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'focus_out_event',@Fptr,44,10004837,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: gboolean (*)(GtkWidget *, GdkEventAny *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkWidget *, GdkEventAny *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'map_event',@Fptr,45,10004837,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: gboolean (*)(GtkWidget *, GdkEventAny *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkWidget *, GdkEventAny *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'unmap_event',@Fptr,46,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkWidget *, GdkEventProperty *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'event',0,1,@Tid,'5.0'); # type=GdkEventProperty *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkWidget *, GdkEventProperty *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'property_notify_event',@Fptr,47,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkWidget *, GdkEventSelection *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'event',0,1,@Tid,'5.0'); # type=GdkEventSelection *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkWidget *, GdkEventSelection *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'selection_clear_event',@Fptr,48,10004837,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: gboolean (*)(GtkWidget *, GdkEventSelection *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkWidget *, GdkEventSelection *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'selection_request_event',@Fptr,49,10004837,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: gboolean (*)(GtkWidget *, GdkEventSelection *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkWidget *, GdkEventSelection *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'selection_notify_event',@Fptr,50,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkWidget *, GdkEventProximity *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'event',0,1,@Tid,'5.0'); # type=GdkEventProximity *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkWidget *, GdkEventProximity *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'proximity_in_event',@Fptr,51,10004837,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: gboolean (*)(GtkWidget *, GdkEventProximity *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkWidget *, GdkEventProximity *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'proximity_out_event',@Fptr,52,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkWidget *, GdkEventVisibility *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'event',0,1,@Tid,'5.0'); # type=GdkEventVisibility *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkWidget *, GdkEventVisibility *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'visibility_notify_event',@Fptr,53,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkWidget *, GdkEventWindowState *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'event',0,1,@Tid,'5.0'); # type=GdkEventWindowState *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkWidget *, GdkEventWindowState *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'window_state_event',@Fptr,54,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkWidget *, GdkEventExpose *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'event',0,1,@Tid,'5.0'); # type=GdkEventExpose *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkWidget *, GdkEventExpose *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'damage_event',@Fptr,55,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkWidget *, GdkEventGrabBroken *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'event',0,1,@Tid,'5.0'); # type=GdkEventGrabBroken *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkWidget *, GdkEventGrabBroken *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'grab_broken_event',@Fptr,56,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkWidget *, GtkSelectionData *, guint, guint)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'selection_data',10004664,1,@Tid,'5.0'); # type=GtkSelectionData *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'info',11402,2,@Tid,'5.0'); # type=guint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'time_',11402,3,@Tid,'5.0'); # type=guint
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkWidget *, GtkSelectionData *, guint, guint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'selection_get',@Fptr,57,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkWidget *, GtkSelectionData *, guint)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'selection_data',10004664,1,@Tid,'5.0'); # type=GtkSelectionData *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'time_',11402,2,@Tid,'5.0'); # type=guint
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkWidget *, GtkSelectionData *, guint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'selection_received',@Fptr,58,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkWidget *, GdkDragContext *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10003932,1,@Tid,'5.0'); # type=GdkDragContext *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkWidget *, GdkDragContext *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'drag_begin',@Fptr,59,10004837,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkWidget *, GdkDragContext *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkWidget *, GdkDragContext *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'drag_end',@Fptr,60,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkWidget *, GdkDragContext *, GtkSelectionData *, guint, guint)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10003932,1,@Tid,'5.0'); # type=GdkDragContext *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'selection_data',10004664,2,@Tid,'5.0'); # type=GtkSelectionData *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'info',11402,3,@Tid,'5.0'); # type=guint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'time_',11402,4,@Tid,'5.0'); # type=guint
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkWidget *, GdkDragContext *, GtkSelectionData *, guint, guint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'drag_data_get',@Fptr,61,10004837,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkWidget *, GdkDragContext *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkWidget *, GdkDragContext *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'drag_data_delete',@Fptr,62,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkWidget *, GdkDragContext *, guint)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10003932,1,@Tid,'5.0'); # type=GdkDragContext *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'time_',11402,2,@Tid,'5.0'); # type=guint
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkWidget *, GdkDragContext *, guint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'drag_leave',@Fptr,63,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkWidget *, GdkDragContext *, gint, gint, guint)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10003932,1,@Tid,'5.0'); # type=GdkDragContext *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'x',11400,2,@Tid,'5.0'); # type=gint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'y',11400,3,@Tid,'5.0'); # type=gint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'time_',11402,4,@Tid,'5.0'); # type=guint
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkWidget *, GdkDragContext *, gint, gint, guint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'drag_motion',@Fptr,64,10004837,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: gboolean (*)(GtkWidget *, GdkDragContext *, gint, gint, guint)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkWidget *, GdkDragContext *, gint, gint, guint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'drag_drop',@Fptr,65,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkWidget *, GdkDragContext *, gint, gint, GtkSelectionData *, guint, guint)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10003932,1,@Tid,'5.0'); # type=GdkDragContext *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'x',11400,2,@Tid,'5.0'); # type=gint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'y',11400,3,@Tid,'5.0'); # type=gint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'selection_data',10004664,4,@Tid,'5.0'); # type=GtkSelectionData *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'info',11402,5,@Tid,'5.0'); # type=guint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'time_',11402,6,@Tid,'5.0'); # type=guint
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkWidget *, GdkDragContext *, gint, gint, GtkSelectionData *, guint, guint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'drag_data_received',@Fptr,66,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkWidget *, GdkDragContext *, GtkDragResult)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10003932,1,@Tid,'5.0'); # type=GdkDragContext *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'result',10005661,2,@Tid,'5.0'); # type=GtkDragResult
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkWidget *, GdkDragContext *, GtkDragResult)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'drag_failed',@Fptr,67,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkWidget *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkWidget *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'popup_menu',@Fptr,68,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkWidget *, GtkWidgetHelpType)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'help_type',10004825,1,@Tid,'5.0'); # type=GtkWidgetHelpType
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkWidget *, GtkWidgetHelpType)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'show_help',@Fptr,69,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'AtkObject * (*)(GtkWidget *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',12080);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='AtkObject * (*)(GtkWidget *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_accessible',@Fptr,70,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkWidget *, GdkScreen *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'previous_screen',10003771,1,@Tid,'5.0'); # type=GdkScreen *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkWidget *, GdkScreen *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'screen_changed',@Fptr,71,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkWidget *, guint)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'signal_id',11402,1,@Tid,'5.0'); # type=guint
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkWidget *, guint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'can_activate_accel',@Fptr,72,10004837,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkWidget *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkWidget *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'composited_changed',@Fptr,73,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkWidget *, gint, gint, gboolean, GtkTooltip *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'x',11400,1,@Tid,'5.0'); # type=gint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'y',11400,2,@Tid,'5.0'); # type=gint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'keyboard_tooltip',11401,3,@Tid,'5.0'); # type=gboolean
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tooltip',10005822,4,@Tid,'5.0'); # type=GtkTooltip *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkWidget *, gint, gint, gboolean, GtkTooltip *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'query_tooltip',@Fptr,74,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkWidget *, gboolean *, gboolean *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'hexpand_p',11763,1,@Tid,'5.0'); # type=gboolean *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'vexpand_p',11763,2,@Tid,'5.0'); # type=gboolean *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkWidget *, gboolean *, gboolean *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'compute_expand',@Fptr,75,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkWidget *, GtkOrientation, gint *, gint *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'orientation',10005603,1,@Tid,'5.0'); # type=GtkOrientation
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'minimum_size',11516,2,@Tid,'5.0'); # type=gint *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'natural_size',11516,3,@Tid,'5.0'); # type=gint *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkWidget *, GtkOrientation, gint *, gint *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'adjust_size_request',@Fptr,76,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkWidget *, GtkOrientation, gint *, gint *, gint *, gint *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'orientation',10005603,1,@Tid,'5.0'); # type=GtkOrientation
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'minimum_size',11516,2,@Tid,'5.0'); # type=gint *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'natural_size',11516,3,@Tid,'5.0'); # type=gint *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'allocated_pos',11516,4,@Tid,'5.0'); # type=gint *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'allocated_size',11516,5,@Tid,'5.0'); # type=gint *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkWidget *, GtkOrientation, gint *, gint *, gint *, gint *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'adjust_size_allocation',@Fptr,77,10004837,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkWidget *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkWidget *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'style_updated',@Fptr,78,10004837,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkWidget *, GdkEventTouch *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,0,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'event',0,1,@Tid,'5.0'); # type=GdkEventTouch *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkWidget *, GdkEventTouch *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'touch_event',@Fptr,79,10004837,'5.0',0); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'priv',10006293,80,10004837,'5.0',0); # type=GtkWidgetClassPrivate *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,81,10004837,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,82,10004837,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,83,10004837,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved5',@Fptr,84,10004837,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved6',@Fptr,85,10004837,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved7',@Fptr,86,10004837,'5.0',0); # type=fptr

# _GtkEntryClass (expect 20 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10004828,0,10004886,'5.0',0); # type=GtkWidgetClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkEntry *, GtkMenu *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'entry',10004888,0,@Tid,'5.0'); # type=GtkEntry *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'menu',10004548,1,@Tid,'5.0'); # type=GtkMenu *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkEntry *, GtkMenu *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'populate_popup',@Fptr,1,10004886,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkEntry *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'entry',10004888,0,@Tid,'5.0'); # type=GtkEntry *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkEntry *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'activate',@Fptr,2,10004886,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkEntry *, GtkMovementStep, gint, gboolean)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'entry',10004888,0,@Tid,'5.0'); # type=GtkEntry *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'step',10005599,1,@Tid,'5.0'); # type=GtkMovementStep
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'count',11400,2,@Tid,'5.0'); # type=gint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'extend_selection',11401,3,@Tid,'5.0'); # type=gboolean
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkEntry *, GtkMovementStep, gint, gboolean)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'move_cursor',@Fptr,3,10004886,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkEntry *, const gchar *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'entry',10004888,0,@Tid,'5.0'); # type=GtkEntry *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'str',11421,1,@Tid,'5.0'); # type=const gchar *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkEntry *, const gchar *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'insert_at_cursor',@Fptr,4,10004886,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkEntry *, GtkDeleteType, gint)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'entry',10004888,0,@Tid,'5.0'); # type=GtkEntry *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'type',10005581,1,@Tid,'5.0'); # type=GtkDeleteType
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'count',11400,2,@Tid,'5.0'); # type=gint
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkEntry *, GtkDeleteType, gint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'delete_from_cursor',@Fptr,5,10004886,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkEntry *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkEntry *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'backspace',@Fptr,6,10004886,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkEntry *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkEntry *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'cut_clipboard',@Fptr,7,10004886,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkEntry *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkEntry *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'copy_clipboard',@Fptr,8,10004886,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkEntry *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkEntry *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'paste_clipboard',@Fptr,9,10004886,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkEntry *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkEntry *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'toggle_overwrite',@Fptr,10,10004886,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkEntry *, gint *, gint *, gint *, gint *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'entry',10004888,0,@Tid,'5.0'); # type=GtkEntry *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'x',11516,1,@Tid,'5.0'); # type=gint *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'y',11516,2,@Tid,'5.0'); # type=gint *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'width',11516,3,@Tid,'5.0'); # type=gint *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'height',11516,4,@Tid,'5.0'); # type=gint *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkEntry *, gint *, gint *, gint *, gint *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_text_area_size',@Fptr,11,10004886,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkEntry *, gint *, gint *, gint *, gint *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkEntry *, gint *, gint *, gint *, gint *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_frame_size',@Fptr,12,10004886,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,13,10004886,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,14,10004886,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,15,10004886,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,16,10004886,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved5',@Fptr,17,10004886,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved6',@Fptr,18,10004886,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved7',@Fptr,19,10004886,'5.0',0); # type=fptr

# _GtkColorChooserInterface (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'base_interface',11997,0,10004896,'5.0',0); # type=GTypeInterface
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkColorChooser *, GdkRGBA *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'chooser',10004898,0,@Tid,'5.0'); # type=GtkColorChooser *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'color',10003790,1,@Tid,'5.0'); # type=GdkRGBA *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkColorChooser *, GdkRGBA *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_rgba',@Fptr,1,10004896,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkColorChooser *, const GdkRGBA *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'chooser',10004898,0,@Tid,'5.0'); # type=GtkColorChooser *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'color',10003792,1,@Tid,'5.0'); # type=const GdkRGBA *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkColorChooser *, const GdkRGBA *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'set_rgba',@Fptr,2,10004896,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkColorChooser *, GtkOrientation, gint, gint, GdkRGBA *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'chooser',10004898,0,@Tid,'5.0'); # type=GtkColorChooser *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'orientation',10005603,1,@Tid,'5.0'); # type=GtkOrientation
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'colors_per_line',11400,2,@Tid,'5.0'); # type=gint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'n_colors',11400,3,@Tid,'5.0'); # type=gint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'colors',10003790,4,@Tid,'5.0'); # type=GdkRGBA *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkColorChooser *, GtkOrientation, gint, gint, GdkRGBA *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'add_palette',@Fptr,3,10004896,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkColorChooser *, const GdkRGBA *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkColorChooser *, const GdkRGBA *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'color_activated',@Fptr,4,10004896,'5.0',0); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'padding',11404,5,10004896,'5.0',0); # type=gpointer

# _GtkColorButtonClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10005564,0,10004936,'5.0',0); # type=GtkButtonClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkColorButton *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cp',10004937,0,@Tid,'5.0'); # type=GtkColorButton *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkColorButton *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'color_set',@Fptr,1,10004936,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,2,10004936,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,3,10004936,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,4,10004936,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,5,10004936,'5.0',0); # type=fptr

# _GtkUIManagerClass (expect 13 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',11867,0,10004948,'5.0',0); # type=GObjectClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkUIManager *, GtkWidget *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'manager',10004951,0,@Tid,'5.0'); # type=GtkUIManager *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,1,@Tid,'5.0'); # type=GtkWidget *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkUIManager *, GtkWidget *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'add_widget',@Fptr,1,10004948,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkUIManager *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'manager',10004951,0,@Tid,'5.0'); # type=GtkUIManager *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkUIManager *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'actions_changed',@Fptr,2,10004948,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkUIManager *, GtkAction *, GtkWidget *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'manager',10004951,0,@Tid,'5.0'); # type=GtkUIManager *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'action',10004244,1,@Tid,'5.0'); # type=GtkAction *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'proxy',10004154,2,@Tid,'5.0'); # type=GtkWidget *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkUIManager *, GtkAction *, GtkWidget *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'connect_proxy',@Fptr,3,10004948,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkUIManager *, GtkAction *, GtkWidget *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkUIManager *, GtkAction *, GtkWidget *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'disconnect_proxy',@Fptr,4,10004948,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkUIManager *, GtkAction *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'manager',10004951,0,@Tid,'5.0'); # type=GtkUIManager *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'action',10004244,1,@Tid,'5.0'); # type=GtkAction *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkUIManager *, GtkAction *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'pre_activate',@Fptr,5,10004948,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkUIManager *, GtkAction *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkUIManager *, GtkAction *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'post_activate',@Fptr,6,10004948,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GtkWidget * (*)(GtkUIManager *, const gchar *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',10004154);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'manager',10004951,0,@Tid,'5.0'); # type=GtkUIManager *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'path',11421,1,@Tid,'5.0'); # type=const gchar *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='GtkWidget * (*)(GtkUIManager *, const gchar *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_widget',@Fptr,7,10004948,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GtkAction * (*)(GtkUIManager *, const gchar *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',10004244);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'manager',10004951,0,@Tid,'5.0'); # type=GtkUIManager *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'path',11421,1,@Tid,'5.0'); # type=const gchar *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='GtkAction * (*)(GtkUIManager *, const gchar *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_action',@Fptr,8,10004948,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,9,10004948,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,10,10004948,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,11,10004948,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,12,10004948,'5.0',0); # type=fptr

# _GtkToggleToolButtonClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10004299,0,10004959,'5.0',0); # type=GtkToolButtonClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkToggleToolButton *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'button',10004961,0,@Tid,'5.0'); # type=GtkToggleToolButton *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkToggleToolButton *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'toggled',@Fptr,1,10004959,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,2,10004959,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,3,10004959,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,4,10004959,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,5,10004959,'5.0',0); # type=fptr

# _GtkCellRendererAccelClass (expect 8 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10005360,0,10004970,'5.0',0); # type=GtkCellRendererTextClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellRendererAccel *, const gchar *, guint, GdkModifierType, guint)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'accel',0,0,@Tid,'5.0'); # type=GtkCellRendererAccel *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'path_string',11421,1,@Tid,'5.0'); # type=const gchar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'accel_key',11402,2,@Tid,'5.0'); # type=guint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'accel_mods',10004038,3,@Tid,'5.0'); # type=GdkModifierType
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'hardware_keycode',11402,4,@Tid,'5.0'); # type=guint
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCellRendererAccel *, const gchar *, guint, GdkModifierType, guint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'accel_edited',@Fptr,1,10004970,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellRendererAccel *, const gchar *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'accel',0,0,@Tid,'5.0'); # type=GtkCellRendererAccel *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'path_string',11421,1,@Tid,'5.0'); # type=const gchar *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCellRendererAccel *, const gchar *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'accel_cleared',@Fptr,2,10004970,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved0',@Fptr,3,10004970,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,4,10004970,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,5,10004970,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,6,10004970,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,7,10004970,'5.0',0); # type=fptr

# _GtkOverlayClass (expect 10 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10004268,0,10004978,'5.0',0); # type=GtkBinClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkOverlay *, GtkWidget *, GtkAllocation *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'overlay',10004980,0,@Tid,'5.0'); # type=GtkOverlay *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,1,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'allocation',10004845,2,@Tid,'5.0'); # type=GtkAllocation *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkOverlay *, GtkWidget *, GtkAllocation *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_child_position',@Fptr,1,10004978,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,2,10004978,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,3,10004978,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,4,10004978,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,5,10004978,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved5',@Fptr,6,10004978,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved6',@Fptr,7,10004978,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved7',@Fptr,8,10004978,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved8',@Fptr,9,10004978,'5.0',0); # type=fptr

# _GtkTextViewClass (expect 19 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10006175,0,10004989,'5.0',0); # type=GtkContainerClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkTextView *, GtkMenu *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'text_view',10004991,0,@Tid,'5.0'); # type=GtkTextView *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'menu',10004548,1,@Tid,'5.0'); # type=GtkMenu *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTextView *, GtkMenu *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'populate_popup',@Fptr,1,10004989,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkTextView *, GtkMovementStep, gint, gboolean)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'text_view',10004991,0,@Tid,'5.0'); # type=GtkTextView *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'step',10005599,1,@Tid,'5.0'); # type=GtkMovementStep
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'count',11400,2,@Tid,'5.0'); # type=gint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'extend_selection',11401,3,@Tid,'5.0'); # type=gboolean
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTextView *, GtkMovementStep, gint, gboolean)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'move_cursor',@Fptr,2,10004989,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkTextView *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'text_view',10004991,0,@Tid,'5.0'); # type=GtkTextView *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTextView *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'set_anchor',@Fptr,3,10004989,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkTextView *, const gchar *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'text_view',10004991,0,@Tid,'5.0'); # type=GtkTextView *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'str',11421,1,@Tid,'5.0'); # type=const gchar *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTextView *, const gchar *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'insert_at_cursor',@Fptr,4,10004989,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkTextView *, GtkDeleteType, gint)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'text_view',10004991,0,@Tid,'5.0'); # type=GtkTextView *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'type',10005581,1,@Tid,'5.0'); # type=GtkDeleteType
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'count',11400,2,@Tid,'5.0'); # type=gint
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTextView *, GtkDeleteType, gint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'delete_from_cursor',@Fptr,5,10004989,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkTextView *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTextView *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'backspace',@Fptr,6,10004989,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkTextView *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTextView *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'cut_clipboard',@Fptr,7,10004989,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkTextView *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTextView *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'copy_clipboard',@Fptr,8,10004989,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkTextView *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTextView *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'paste_clipboard',@Fptr,9,10004989,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkTextView *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTextView *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'toggle_overwrite',@Fptr,10,10004989,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,11,10004989,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,12,10004989,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,13,10004989,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,14,10004989,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved5',@Fptr,15,10004989,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved6',@Fptr,16,10004989,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved7',@Fptr,17,10004989,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved8',@Fptr,18,10004989,'5.0',0); # type=fptr

# _GtkInfoBarClass (expect 7 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10004555,0,10004999,'5.0',0); # type=GtkBoxClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkInfoBar *, gint)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'info_bar',10005001,0,@Tid,'5.0'); # type=GtkInfoBar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'response_id',11400,1,@Tid,'5.0'); # type=gint
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkInfoBar *, gint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'response',@Fptr,1,10004999,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkInfoBar *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'info_bar',10005001,0,@Tid,'5.0'); # type=GtkInfoBar *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkInfoBar *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'close',@Fptr,2,10004999,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,3,10004999,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,4,10004999,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,5,10004999,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,6,10004999,'5.0',0); # type=fptr

# _GtkTextTagTableClass (expect 8 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',11867,0,10005027,'5.0',0); # type=GObjectClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkTextTagTable *, GtkTextTag *, gboolean)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'table',10005029,0,@Tid,'5.0'); # type=GtkTextTagTable *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tag',10004204,1,@Tid,'5.0'); # type=GtkTextTag *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'size_changed',11401,2,@Tid,'5.0'); # type=gboolean
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTextTagTable *, GtkTextTag *, gboolean)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'tag_changed',@Fptr,1,10005027,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkTextTagTable *, GtkTextTag *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'table',10005029,0,@Tid,'5.0'); # type=GtkTextTagTable *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tag',10004204,1,@Tid,'5.0'); # type=GtkTextTag *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTextTagTable *, GtkTextTag *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'tag_added',@Fptr,2,10005027,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkTextTagTable *, GtkTextTag *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTextTagTable *, GtkTextTag *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'tag_removed',@Fptr,3,10005027,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,4,10005027,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,5,10005027,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,6,10005027,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,7,10005027,'5.0',0); # type=fptr

# _GtkSwitchClass (expect 8 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10004828,0,10005047,'5.0',0); # type=GtkWidgetClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkSwitch *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'sw',10005049,0,@Tid,'5.0'); # type=GtkSwitch *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkSwitch *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'activate',@Fptr,1,10005047,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_switch_padding_1',@Fptr,2,10005047,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_switch_padding_2',@Fptr,3,10005047,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_switch_padding_3',@Fptr,4,10005047,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_switch_padding_4',@Fptr,5,10005047,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_switch_padding_5',@Fptr,6,10005047,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_switch_padding_6',@Fptr,7,10005047,'5.0',0); # type=fptr

# _GtkCellRendererClass (expect 17 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10003273,0,10005062,'5.0',0); # type=GInitiallyUnownedClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GtkSizeRequestMode (*)(GtkCellRenderer *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',10005663);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell',10004514,0,@Tid,'5.0'); # type=GtkCellRenderer *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='GtkSizeRequestMode (*)(GtkCellRenderer *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_request_mode',@Fptr,1,10005062,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellRenderer *, GtkWidget *, gint *, gint *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell',10004514,0,@Tid,'5.0'); # type=GtkCellRenderer *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,1,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'minimum_size',11516,2,@Tid,'5.0'); # type=gint *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'natural_size',11516,3,@Tid,'5.0'); # type=gint *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCellRenderer *, GtkWidget *, gint *, gint *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_preferred_width',@Fptr,2,10005062,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellRenderer *, GtkWidget *, gint, gint *, gint *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell',10004514,0,@Tid,'5.0'); # type=GtkCellRenderer *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,1,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'width',11400,2,@Tid,'5.0'); # type=gint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'minimum_height',11516,3,@Tid,'5.0'); # type=gint *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'natural_height',11516,4,@Tid,'5.0'); # type=gint *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCellRenderer *, GtkWidget *, gint, gint *, gint *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_preferred_height_for_width',@Fptr,3,10005062,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkCellRenderer *, GtkWidget *, gint *, gint *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCellRenderer *, GtkWidget *, gint *, gint *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_preferred_height',@Fptr,4,10005062,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkCellRenderer *, GtkWidget *, gint, gint *, gint *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCellRenderer *, GtkWidget *, gint, gint *, gint *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_preferred_width_for_height',@Fptr,5,10005062,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellRenderer *, GtkWidget *, GtkCellRendererState, const GdkRectangle *, GdkRectangle *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell',10004514,0,@Tid,'5.0'); # type=GtkCellRenderer *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,1,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'flags',10005051,2,@Tid,'5.0'); # type=GtkCellRendererState
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell_area',39913,3,@Tid,'5.0'); # type=const GdkRectangle *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'aligned_area',10003975,4,@Tid,'5.0'); # type=GdkRectangle *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCellRenderer *, GtkWidget *, GtkCellRendererState, const GdkRectangle *, GdkRectangle *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_aligned_area',@Fptr,6,10005062,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellRenderer *, GtkWidget *, const GdkRectangle *, gint *, gint *, gint *, gint *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell',10004514,0,@Tid,'5.0'); # type=GtkCellRenderer *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,1,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell_area',39913,2,@Tid,'5.0'); # type=const GdkRectangle *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'x_offset',11516,3,@Tid,'5.0'); # type=gint *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'y_offset',11516,4,@Tid,'5.0'); # type=gint *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'width',11516,5,@Tid,'5.0'); # type=gint *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'height',11516,6,@Tid,'5.0'); # type=gint *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCellRenderer *, GtkWidget *, const GdkRectangle *, gint *, gint *, gint *, gint *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_size',@Fptr,7,10005062,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellRenderer *, cairo_t *, GtkWidget *, const GdkRectangle *, const GdkRectangle *, GtkCellRendererState)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell',10004514,0,@Tid,'5.0'); # type=GtkCellRenderer *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cr',32487,1,@Tid,'5.0'); # type=cairo_t *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,2,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'background_area',39913,3,@Tid,'5.0'); # type=const GdkRectangle *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell_area',39913,4,@Tid,'5.0'); # type=const GdkRectangle *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'flags',10005051,5,@Tid,'5.0'); # type=GtkCellRendererState
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCellRenderer *, cairo_t *, GtkWidget *, const GdkRectangle *, const GdkRectangle *, GtkCellRendererState)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'render',@Fptr,8,10005062,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkCellRenderer *, GdkEvent *, GtkWidget *, const gchar *, const GdkRectangle *, const GdkRectangle *, GtkCellRendererState)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell',10004514,0,@Tid,'5.0'); # type=GtkCellRenderer *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'event',10003822,1,@Tid,'5.0'); # type=GdkEvent *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,2,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'path',11421,3,@Tid,'5.0'); # type=const gchar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'background_area',39913,4,@Tid,'5.0'); # type=const GdkRectangle *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell_area',39913,5,@Tid,'5.0'); # type=const GdkRectangle *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'flags',10005051,6,@Tid,'5.0'); # type=GtkCellRendererState
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkCellRenderer *, GdkEvent *, GtkWidget *, const gchar *, const GdkRectangle *, const GdkRectangle *, GtkCellRendererState)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'activate',@Fptr,9,10005062,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GtkCellEditable * (*)(GtkCellRenderer *, GdkEvent *, GtkWidget *, const gchar *, const GdkRectangle *, const GdkRectangle *, GtkCellRendererState)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',10005064);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell',10004514,0,@Tid,'5.0'); # type=GtkCellRenderer *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'event',10003822,1,@Tid,'5.0'); # type=GdkEvent *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,2,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'path',11421,3,@Tid,'5.0'); # type=const gchar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'background_area',39913,4,@Tid,'5.0'); # type=const GdkRectangle *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell_area',39913,5,@Tid,'5.0'); # type=const GdkRectangle *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'flags',10005051,6,@Tid,'5.0'); # type=GtkCellRendererState
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='GtkCellEditable * (*)(GtkCellRenderer *, GdkEvent *, GtkWidget *, const gchar *, const GdkRectangle *, const GdkRectangle *, GtkCellRendererState)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'start_editing',@Fptr,10,10005062,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellRenderer *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell',10004514,0,@Tid,'5.0'); # type=GtkCellRenderer *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCellRenderer *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'editing_canceled',@Fptr,11,10005062,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellRenderer *, GtkCellEditable *, const gchar *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell',10004514,0,@Tid,'5.0'); # type=GtkCellRenderer *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'editable',10005064,1,@Tid,'5.0'); # type=GtkCellEditable *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'path',11421,2,@Tid,'5.0'); # type=const gchar *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCellRenderer *, GtkCellEditable *, const gchar *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'editing_started',@Fptr,12,10005062,'5.0',0); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'priv',10006391,13,10005062,'5.0',0); # type=GtkCellRendererClassPrivate *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,14,10005062,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,15,10005062,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,16,10005062,'5.0',0); # type=fptr

# _GtkFrameClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10004268,0,10005092,'5.0',0); # type=GtkBinClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkFrame *, GtkAllocation *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'frame',10005094,0,@Tid,'5.0'); # type=GtkFrame *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'allocation',10004845,1,@Tid,'5.0'); # type=GtkAllocation *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkFrame *, GtkAllocation *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'compute_child_allocation',@Fptr,1,10005092,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,2,10005092,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,3,10005092,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,4,10005092,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,5,10005092,'5.0',0); # type=fptr

# _GtkAssistantClass (expect 10 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10005883,0,10005103,'5.0',0); # type=GtkWindowClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkAssistant *, GtkWidget *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'assistant',10005107,0,@Tid,'5.0'); # type=GtkAssistant *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'page',10004154,1,@Tid,'5.0'); # type=GtkWidget *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkAssistant *, GtkWidget *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'prepare',@Fptr,1,10005103,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkAssistant *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'assistant',10005107,0,@Tid,'5.0'); # type=GtkAssistant *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkAssistant *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'apply',@Fptr,2,10005103,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkAssistant *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkAssistant *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'close',@Fptr,3,10005103,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkAssistant *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkAssistant *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'cancel',@Fptr,4,10005103,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,5,10005103,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,6,10005103,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,7,10005103,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,8,10005103,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved5',@Fptr,9,10005103,'5.0',0); # type=fptr

# _GtkToolItemClass (expect 7 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10004268,0,10005119,'5.0',0); # type=GtkBinClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkToolItem *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tool_item',10004176,0,@Tid,'5.0'); # type=GtkToolItem *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkToolItem *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'create_menu_proxy',@Fptr,1,10005119,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkToolItem *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tool_item',10004176,0,@Tid,'5.0'); # type=GtkToolItem *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkToolItem *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'toolbar_reconfigured',@Fptr,2,10005119,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,3,10005119,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,4,10005119,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,5,10005119,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,6,10005119,'5.0',0); # type=fptr

# _GtkTextAppearance (expect 10 members, found 12 
#INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'bg_color',10004011,0,10005123,'5.0',0); # type=GdkColor
#INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'fg_color',10004011,1,10005123,'5.0',0); # type=GdkColor
#INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'rise',11400,2,10005123,'5.0',0); # type=gint
#INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'underline',11402,3,10005123,'5.0',4); # type=guint
#INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'strikethrough',11402,4,10005123,'5.0',1); # type=guint
#INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'draw_bg',11402,5,10005123,'5.0',1); # type=guint
#INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'inside_selection',11402,6,10005123,'5.0',1); # type=guint
#INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'is_text',11402,7,10005123,'5.0',1); # type=guint
#INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'rgba',10003790,8,10005123,'5.0',0); # type=GdkRGBA *
##WARN: #if (defined(__SIZEOF_INT__) && defined(__SIZEOF_POINTER__)) && (__SIZEOF_INT__ == __SIZEOF_POINTER__) guint returned tid=0
#INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'padding',11402,9,10005123,'5.0',0); # guint

# _GtkPrintOperationPreviewIface (expect 14 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'g_iface',11997,0,10005164,'5.0',0); # type=GTypeInterface
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkPrintOperationPreview *, GtkPrintContext *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'preview',10005166,0,@Tid,'5.0'); # type=GtkPrintOperationPreview *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10004277,1,@Tid,'5.0'); # type=GtkPrintContext *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkPrintOperationPreview *, GtkPrintContext *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'ready',@Fptr,1,10005164,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkPrintOperationPreview *, GtkPrintContext *, GtkPageSetup *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'preview',10005166,0,@Tid,'5.0'); # type=GtkPrintOperationPreview *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10004277,1,@Tid,'5.0'); # type=GtkPrintContext *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'page_setup',10004278,2,@Tid,'5.0'); # type=GtkPageSetup *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkPrintOperationPreview *, GtkPrintContext *, GtkPageSetup *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'got_page_size',@Fptr,2,10005164,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkPrintOperationPreview *, gint)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'preview',10005166,0,@Tid,'5.0'); # type=GtkPrintOperationPreview *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'page_nr',11400,1,@Tid,'5.0'); # type=gint
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkPrintOperationPreview *, gint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'render_page',@Fptr,3,10005164,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkPrintOperationPreview *, gint)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'preview',10005166,0,@Tid,'5.0'); # type=GtkPrintOperationPreview *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'page_nr',11400,1,@Tid,'5.0'); # type=gint
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkPrintOperationPreview *, gint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'is_selected',@Fptr,4,10005164,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkPrintOperationPreview *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'preview',10005166,0,@Tid,'5.0'); # type=GtkPrintOperationPreview *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkPrintOperationPreview *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'end_preview',@Fptr,5,10005164,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,6,10005164,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,7,10005164,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,8,10005164,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,9,10005164,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved5',@Fptr,10,10005164,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved6',@Fptr,11,10005164,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved7',@Fptr,12,10005164,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved8',@Fptr,13,10005164,'5.0',0); # type=fptr

# _GtkToggleActionClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10005315,0,10005173,'5.0',0); # type=GtkActionClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkToggleAction *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'action',10005175,0,@Tid,'5.0'); # type=GtkToggleAction *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkToggleAction *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'toggled',@Fptr,1,10005173,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,2,10005173,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,3,10005173,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,4,10005173,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,5,10005173,'5.0',0); # type=fptr

# _GtkCssProviderClass (expect 5 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',11867,0,10005184,'5.0',0); # type=GObjectClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCssProvider *, GtkCssSection *, const GError *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'provider',10005186,0,@Tid,'5.0'); # type=GtkCssProvider *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'section',10005237,1,@Tid,'5.0'); # type=GtkCssSection *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'error',11419,2,@Tid,'5.0'); # type=const GError *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCssProvider *, GtkCssSection *, const GError *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parsing_error',@Fptr,1,10005184,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,2,10005184,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,3,10005184,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,4,10005184,'5.0',0); # type=fptr

# _GtkTreeModelFilterClass (expect 7 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',11867,0,10005197,'5.0',0); # type=GObjectClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkTreeModelFilter *, GtkTreeModel *, GtkTreeIter *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'self',10005199,0,@Tid,'5.0'); # type=GtkTreeModelFilter *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'child_model',10004486,1,@Tid,'5.0'); # type=GtkTreeModel *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'iter',10004490,2,@Tid,'5.0'); # type=GtkTreeIter *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkTreeModelFilter *, GtkTreeModel *, GtkTreeIter *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'visible',@Fptr,1,10005197,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkTreeModelFilter *, GtkTreeModel *, GtkTreeIter *, GValue *, gint)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'self',10005199,0,@Tid,'5.0'); # type=GtkTreeModelFilter *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'child_model',10004486,1,@Tid,'5.0'); # type=GtkTreeModel *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'iter',10004490,2,@Tid,'5.0'); # type=GtkTreeIter *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'value',11849,3,@Tid,'5.0'); # type=GValue *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'column',11400,4,@Tid,'5.0'); # type=gint
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTreeModelFilter *, GtkTreeModel *, GtkTreeIter *, GValue *, gint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'modify',@Fptr,2,10005197,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,3,10005197,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,4,10005197,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,5,10005197,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,6,10005197,'5.0',0); # type=fptr

# _GtkSocketClass (expect 7 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10006175,0,10005222,'5.0',0); # type=GtkContainerClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkSocket *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'socket_',10005224,0,@Tid,'5.0'); # type=GtkSocket *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkSocket *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'plug_added',@Fptr,1,10005222,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkSocket *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'socket_',10005224,0,@Tid,'5.0'); # type=GtkSocket *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkSocket *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'plug_removed',@Fptr,2,10005222,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,3,10005222,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,4,10005222,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,5,10005222,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,6,10005222,'5.0',0); # type=fptr

# _GtkMenuItemClass (expect 14 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10004268,0,10005261,'5.0',0); # type=GtkBinClass
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'hide_on_activate',11402,1,10005261,'5.0',1); # type=guint
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkMenuItem *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'menu_item',10005263,0,@Tid,'5.0'); # type=GtkMenuItem *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkMenuItem *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'activate',@Fptr,2,10005261,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkMenuItem *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkMenuItem *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'activate_item',@Fptr,3,10005261,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkMenuItem *, gint *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'menu_item',10005263,0,@Tid,'5.0'); # type=GtkMenuItem *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'requisition',11516,1,@Tid,'5.0'); # type=gint *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkMenuItem *, gint *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'toggle_size_request',@Fptr,4,10005261,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkMenuItem *, gint)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'menu_item',10005263,0,@Tid,'5.0'); # type=GtkMenuItem *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'allocation',11400,1,@Tid,'5.0'); # type=gint
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkMenuItem *, gint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'toggle_size_allocate',@Fptr,5,10005261,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkMenuItem *, const gchar *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'menu_item',10005263,0,@Tid,'5.0'); # type=GtkMenuItem *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'label',11421,1,@Tid,'5.0'); # type=const gchar *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkMenuItem *, const gchar *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'set_label',@Fptr,6,10005261,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'const gchar * (*)(GtkMenuItem *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11421);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'menu_item',10005263,0,@Tid,'5.0'); # type=GtkMenuItem *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='const gchar * (*)(GtkMenuItem *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_label',@Fptr,7,10005261,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkMenuItem *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkMenuItem *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'select',@Fptr,8,10005261,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkMenuItem *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkMenuItem *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'deselect',@Fptr,9,10005261,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,10,10005261,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,11,10005261,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,12,10005261,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,13,10005261,'5.0',0); # type=fptr

# _GtkActionGroupClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',11867,0,10005276,'5.0',0); # type=GObjectClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GtkAction * (*)(GtkActionGroup *, const gchar *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',10004244);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'action_group',10004952,0,@Tid,'5.0'); # type=GtkActionGroup *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'action_name',11421,1,@Tid,'5.0'); # type=const gchar *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='GtkAction * (*)(GtkActionGroup *, const gchar *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_action',@Fptr,1,10005276,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,2,10005276,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,3,10005276,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,4,10005276,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,5,10005276,'5.0',0); # type=fptr

# _GtkPanedClass (expect 11 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10006175,0,10005305,'5.0',0); # type=GtkContainerClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkPaned *, gboolean)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'paned',10005307,0,@Tid,'5.0'); # type=GtkPaned *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'reverse',11401,1,@Tid,'5.0'); # type=gboolean
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkPaned *, gboolean)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'cycle_child_focus',@Fptr,1,10005305,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkPaned *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'paned',10005307,0,@Tid,'5.0'); # type=GtkPaned *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkPaned *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'toggle_handle_focus',@Fptr,2,10005305,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkPaned *, GtkScrollType)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'paned',10005307,0,@Tid,'5.0'); # type=GtkPaned *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'scroll',10005621,1,@Tid,'5.0'); # type=GtkScrollType
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkPaned *, GtkScrollType)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'move_handle',@Fptr,3,10005305,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: gboolean (*)(GtkPaned *, gboolean)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkPaned *, gboolean)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'cycle_handle_focus',@Fptr,4,10005305,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: gboolean (*)(GtkPaned *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkPaned *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'accept_position',@Fptr,5,10005305,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: gboolean (*)(GtkPaned *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkPaned *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'cancel_position',@Fptr,6,10005305,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,7,10005305,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,8,10005305,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,9,10005305,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,10,10005305,'5.0',0); # type=fptr

# _GtkEditableInterface (expect 11 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'base_iface',11997,0,10005311,'5.0',0); # type=GTypeInterface
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkEditable *, const gchar *, gint, gint *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'editable',10005313,0,@Tid,'5.0'); # type=GtkEditable *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'new_text',11421,1,@Tid,'5.0'); # type=const gchar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'new_text_length',11400,2,@Tid,'5.0'); # type=gint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'position',11516,3,@Tid,'5.0'); # type=gint *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkEditable *, const gchar *, gint, gint *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'insert_text',@Fptr,1,10005311,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkEditable *, gint, gint)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'editable',10005313,0,@Tid,'5.0'); # type=GtkEditable *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'start_pos',11400,1,@Tid,'5.0'); # type=gint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'end_pos',11400,2,@Tid,'5.0'); # type=gint
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkEditable *, gint, gint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'delete_text',@Fptr,2,10005311,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkEditable *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'editable',10005313,0,@Tid,'5.0'); # type=GtkEditable *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkEditable *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'changed',@Fptr,3,10005311,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkEditable *, const gchar *, gint, gint *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkEditable *, const gchar *, gint, gint *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'do_insert_text',@Fptr,4,10005311,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkEditable *, gint, gint)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkEditable *, gint, gint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'do_delete_text',@Fptr,5,10005311,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gchar* (*)(GtkEditable *, gint, gint)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',0);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'editable',10005313,0,@Tid,'5.0'); # type=GtkEditable *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'start_pos',11400,1,@Tid,'5.0'); # type=gint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'end_pos',11400,2,@Tid,'5.0'); # type=gint
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gchar* (*)(GtkEditable *, gint, gint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_chars',@Fptr,6,10005311,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkEditable *, gint, gint)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkEditable *, gint, gint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'set_selection_bounds',@Fptr,7,10005311,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkEditable *, gint *, gint *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'editable',10005313,0,@Tid,'5.0'); # type=GtkEditable *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'start_pos',11516,1,@Tid,'5.0'); # type=gint *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'end_pos',11516,2,@Tid,'5.0'); # type=gint *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkEditable *, gint *, gint *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_selection_bounds',@Fptr,8,10005311,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkEditable *, gint)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'editable',10005313,0,@Tid,'5.0'); # type=GtkEditable *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'position',11400,1,@Tid,'5.0'); # type=gint
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkEditable *, gint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'set_position',@Fptr,9,10005311,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gint (*)(GtkEditable *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11400);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'editable',10005313,0,@Tid,'5.0'); # type=GtkEditable *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gint (*)(GtkEditable *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_position',@Fptr,10,10005311,'5.0',0); # type=fptr

# _GtkActionClass (expect 13 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',11867,0,10005320,'5.0',0); # type=GObjectClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkAction *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'action',10004244,0,@Tid,'5.0'); # type=GtkAction *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkAction *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'activate',@Fptr,1,10005320,'5.0',0); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'menu_item_type',11836,2,10005320,'5.0',0); # type=GType
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'toolbar_item_type',11836,3,10005320,'5.0',0); # type=GType
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GtkWidget * (*)(GtkAction *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',10004154);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'action',10004244,0,@Tid,'5.0'); # type=GtkAction *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='GtkWidget * (*)(GtkAction *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'create_menu_item',@Fptr,4,10005320,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: GtkWidget * (*)(GtkAction *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='GtkWidget * (*)(GtkAction *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'create_tool_item',@Fptr,5,10005320,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkAction *, GtkWidget *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'action',10004244,0,@Tid,'5.0'); # type=GtkAction *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'proxy',10004154,1,@Tid,'5.0'); # type=GtkWidget *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkAction *, GtkWidget *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'connect_proxy',@Fptr,6,10005320,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkAction *, GtkWidget *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkAction *, GtkWidget *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'disconnect_proxy',@Fptr,7,10005320,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: GtkWidget * (*)(GtkAction *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='GtkWidget * (*)(GtkAction *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'create_menu',@Fptr,8,10005320,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,9,10005320,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,10,10005320,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,11,10005320,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,12,10005320,'5.0',0); # type=fptr

# _GtkScrolledWindowClass (expect 8 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10004268,0,10005328,'5.0',0); # type=GtkBinClass
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'scrollbar_spacing',11400,1,10005328,'5.0',0); # type=gint
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkScrolledWindow *, GtkScrollType, gboolean)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'scrolled_window',10005330,0,@Tid,'5.0'); # type=GtkScrolledWindow *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'scroll',10005621,1,@Tid,'5.0'); # type=GtkScrollType
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'horizontal',11401,2,@Tid,'5.0'); # type=gboolean
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkScrolledWindow *, GtkScrollType, gboolean)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'scroll_child',@Fptr,2,10005328,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkScrolledWindow *, GtkDirectionType)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'scrolled_window',10005330,0,@Tid,'5.0'); # type=GtkScrolledWindow *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'direction',10005583,1,@Tid,'5.0'); # type=GtkDirectionType
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkScrolledWindow *, GtkDirectionType)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'move_focus_out',@Fptr,3,10005328,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,4,10005328,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,5,10005328,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,6,10005328,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,7,10005328,'5.0',0); # type=fptr

# _GtkScaleClass (expect 8 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10004466,0,10005338,'5.0',0); # type=GtkRangeClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gchar* (*)(GtkScale *, gdouble)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',0);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'scale',10005340,0,@Tid,'5.0'); # type=GtkScale *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'value',11598,1,@Tid,'5.0'); # type=gdouble
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gchar* (*)(GtkScale *, gdouble)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'format_value',@Fptr,1,10005338,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkScale *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'scale',10005340,0,@Tid,'5.0'); # type=GtkScale *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkScale *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'draw_value',@Fptr,2,10005338,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkScale *, gint *, gint *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'scale',10005340,0,@Tid,'5.0'); # type=GtkScale *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'x',11516,1,@Tid,'5.0'); # type=gint *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'y',11516,2,@Tid,'5.0'); # type=gint *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkScale *, gint *, gint *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_layout_offsets',@Fptr,3,10005338,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,4,10005338,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,5,10005338,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,6,10005338,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,7,10005338,'5.0',0); # type=fptr

# _GtkCellRendererTextClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10005057,0,10005363,'5.0',0); # type=GtkCellRendererClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellRendererText *, const gchar *, const gchar *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell_renderer_text',10005365,0,@Tid,'5.0'); # type=GtkCellRendererText *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'path',11421,1,@Tid,'5.0'); # type=const gchar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'new_text',11421,2,@Tid,'5.0'); # type=const gchar *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCellRendererText *, const gchar *, const gchar *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'edited',@Fptr,1,10005363,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,2,10005363,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,3,10005363,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,4,10005363,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,5,10005363,'5.0',0); # type=fptr

# _GtkTextTagClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',11867,0,10005381,'5.0',0); # type=GObjectClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkTextTag *, GObject *, GdkEvent *, const GtkTextIter *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tag',10004204,0,@Tid,'5.0'); # type=GtkTextTag *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'event_object',11841,1,@Tid,'5.0'); # type=GObject *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'event',10003822,2,@Tid,'5.0'); # type=GdkEvent *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'iter',10005384,3,@Tid,'5.0'); # type=const GtkTextIter *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkTextTag *, GObject *, GdkEvent *, const GtkTextIter *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'event',@Fptr,1,10005381,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,2,10005381,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,3,10005381,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,4,10005381,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,5,10005381,'5.0',0); # type=fptr

# _GtkApplicationClass (expect 4 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10002772,0,10005391,'5.0',0); # type=GApplicationClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkApplication *, GtkWindow *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'application',10005393,0,@Tid,'5.0'); # type=GtkApplication *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'window',10004264,1,@Tid,'5.0'); # type=GtkWindow *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkApplication *, GtkWindow *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'window_added',@Fptr,1,10005391,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkApplication *, GtkWindow *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkApplication *, GtkWindow *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'window_removed',@Fptr,2,10005391,'5.0',0); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'padding',11404,3,10005391,'5.0',0); # type=gpointer

# _GtkRadioMenuItemClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10005495,0,10005422,'5.0',0); # type=GtkCheckMenuItemClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkRadioMenuItem *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'radio_menu_item',10005424,0,@Tid,'5.0'); # type=GtkRadioMenuItem *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkRadioMenuItem *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'group_changed',@Fptr,1,10005422,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,2,10005422,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,3,10005422,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,4,10005422,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,5,10005422,'5.0',0); # type=fptr

# _GtkStyleProviderIface (expect 4 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'g_iface',11997,0,10005464,'5.0',0); # type=GTypeInterface
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GtkStyleProperties * (*)(GtkStyleProvider *, GtkWidgetPath *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',10005440);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'provider',10005466,0,@Tid,'5.0'); # type=GtkStyleProvider *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'path',10004859,1,@Tid,'5.0'); # type=GtkWidgetPath *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='GtkStyleProperties * (*)(GtkStyleProvider *, GtkWidgetPath *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_style',@Fptr,1,10005464,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkStyleProvider *, GtkWidgetPath *, GtkStateFlags, GParamSpec *, GValue *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'provider',10005466,0,@Tid,'5.0'); # type=GtkStyleProvider *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'path',10004859,1,@Tid,'5.0'); # type=GtkWidgetPath *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'state',10005667,2,@Tid,'5.0'); # type=GtkStateFlags
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'pspec',11854,3,@Tid,'5.0'); # type=GParamSpec *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'value',11849,4,@Tid,'5.0'); # type=GValue *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkStyleProvider *, GtkWidgetPath *, GtkStateFlags, GParamSpec *, GValue *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_style_property',@Fptr,2,10005464,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GtkIconFactory * (*)(GtkStyleProvider *, GtkWidgetPath *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',10005467);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'provider',10005466,0,@Tid,'5.0'); # type=GtkStyleProvider *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'path',10004859,1,@Tid,'5.0'); # type=GtkWidgetPath *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='GtkIconFactory * (*)(GtkStyleProvider *, GtkWidgetPath *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_icon_factory',@Fptr,3,10005464,'5.0',0); # type=fptr

# _GtkEntryCompletionClass (expect 9 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',11867,0,10005485,'5.0',0); # type=GObjectClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkEntryCompletion *, GtkTreeModel *, GtkTreeIter *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'completion',10004891,0,@Tid,'5.0'); # type=GtkEntryCompletion *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'model',10004486,1,@Tid,'5.0'); # type=GtkTreeModel *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'iter',10004490,2,@Tid,'5.0'); # type=GtkTreeIter *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkEntryCompletion *, GtkTreeModel *, GtkTreeIter *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'match_selected',@Fptr,1,10005485,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkEntryCompletion *, gint)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'completion',10004891,0,@Tid,'5.0'); # type=GtkEntryCompletion *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'index_',11400,1,@Tid,'5.0'); # type=gint
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkEntryCompletion *, gint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'action_activated',@Fptr,2,10005485,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkEntryCompletion *, const gchar *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'completion',10004891,0,@Tid,'5.0'); # type=GtkEntryCompletion *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'prefix',11421,1,@Tid,'5.0'); # type=const gchar *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkEntryCompletion *, const gchar *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'insert_prefix',@Fptr,3,10005485,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: gboolean (*)(GtkEntryCompletion *, GtkTreeModel *, GtkTreeIter *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkEntryCompletion *, GtkTreeModel *, GtkTreeIter *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'cursor_on_match',@Fptr,4,10005485,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved0',@Fptr,5,10005485,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,6,10005485,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,7,10005485,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,8,10005485,'5.0',0); # type=fptr

# _GtkCellEditableIface (expect 4 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'g_iface',11997,0,10005490,'5.0',0); # type=GTypeInterface
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellEditable *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell_editable',10005064,0,@Tid,'5.0'); # type=GtkCellEditable *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCellEditable *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'editing_done',@Fptr,1,10005490,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkCellEditable *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCellEditable *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'remove_widget',@Fptr,2,10005490,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellEditable *, GdkEvent *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell_editable',10005064,0,@Tid,'5.0'); # type=GtkCellEditable *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'event',10003822,1,@Tid,'5.0'); # type=GdkEvent *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCellEditable *, GdkEvent *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'start_editing',@Fptr,3,10005490,'5.0',0); # type=fptr

# _GtkCheckMenuItemClass (expect 7 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10005256,0,10005498,'5.0',0); # type=GtkMenuItemClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCheckMenuItem *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'check_menu_item',10005500,0,@Tid,'5.0'); # type=GtkCheckMenuItem *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCheckMenuItem *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'toggled',@Fptr,1,10005498,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCheckMenuItem *, cairo_t *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'check_menu_item',10005500,0,@Tid,'5.0'); # type=GtkCheckMenuItem *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cr',32487,1,@Tid,'5.0'); # type=cairo_t *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCheckMenuItem *, cairo_t *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'draw_indicator',@Fptr,2,10005498,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,3,10005498,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,4,10005498,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,5,10005498,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,6,10005498,'5.0',0); # type=fptr

# _GtkFontButtonClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10005564,0,10005516,'5.0',0); # type=GtkButtonClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkFontButton *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'gfp',10005517,0,@Tid,'5.0'); # type=GtkFontButton *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkFontButton *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'font_set',@Fptr,1,10005516,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,2,10005516,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,3,10005516,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,4,10005516,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,5,10005516,'5.0',0); # type=fptr

# _GtkBuildableIface (expect 11 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'g_iface',11997,0,10005554,'5.0',0); # type=GTypeInterface
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkBuildable *, const gchar *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'buildable',10005556,0,@Tid,'5.0'); # type=GtkBuildable *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'name',11421,1,@Tid,'5.0'); # type=const gchar *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkBuildable *, const gchar *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'set_name',@Fptr,1,10005554,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'const gchar * (*)(GtkBuildable *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11421);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'buildable',10005556,0,@Tid,'5.0'); # type=GtkBuildable *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='const gchar * (*)(GtkBuildable *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_name',@Fptr,2,10005554,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkBuildable *, GtkBuilder *, GObject *, const gchar *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'buildable',10005556,0,@Tid,'5.0'); # type=GtkBuildable *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'builder',10005557,1,@Tid,'5.0'); # type=GtkBuilder *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'child',11841,2,@Tid,'5.0'); # type=GObject *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'type',11421,3,@Tid,'5.0'); # type=const gchar *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkBuildable *, GtkBuilder *, GObject *, const gchar *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'add_child',@Fptr,3,10005554,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkBuildable *, GtkBuilder *, const gchar *, const GValue *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'buildable',10005556,0,@Tid,'5.0'); # type=GtkBuildable *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'builder',10005557,1,@Tid,'5.0'); # type=GtkBuilder *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'name',11421,2,@Tid,'5.0'); # type=const gchar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'value',11848,3,@Tid,'5.0'); # type=const GValue *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkBuildable *, GtkBuilder *, const gchar *, const GValue *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'set_buildable_property',@Fptr,4,10005554,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GObject * (*)(GtkBuildable *, GtkBuilder *, const gchar *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11841);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'buildable',10005556,0,@Tid,'5.0'); # type=GtkBuildable *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'builder',10005557,1,@Tid,'5.0'); # type=GtkBuilder *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'name',11421,2,@Tid,'5.0'); # type=const gchar *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='GObject * (*)(GtkBuildable *, GtkBuilder *, const gchar *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'construct_child',@Fptr,5,10005554,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkBuildable *, GtkBuilder *, GObject *, const gchar *, GMarkupParser *, gpointer *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'buildable',10005556,0,@Tid,'5.0'); # type=GtkBuildable *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'builder',10005557,1,@Tid,'5.0'); # type=GtkBuilder *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'child',11841,2,@Tid,'5.0'); # type=GObject *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tagname',11421,3,@Tid,'5.0'); # type=const gchar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parser',10005558,4,@Tid,'5.0'); # type=GMarkupParser *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'data',11458,5,@Tid,'5.0'); # type=gpointer *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkBuildable *, GtkBuilder *, GObject *, const gchar *, GMarkupParser *, gpointer *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'custom_tag_start',@Fptr,6,10005554,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkBuildable *, GtkBuilder *, GObject *, const gchar *, gpointer *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'buildable',10005556,0,@Tid,'5.0'); # type=GtkBuildable *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'builder',10005557,1,@Tid,'5.0'); # type=GtkBuilder *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'child',11841,2,@Tid,'5.0'); # type=GObject *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tagname',11421,3,@Tid,'5.0'); # type=const gchar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'data',11458,4,@Tid,'5.0'); # type=gpointer *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkBuildable *, GtkBuilder *, GObject *, const gchar *, gpointer *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'custom_tag_end',@Fptr,7,10005554,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkBuildable *, GtkBuilder *, GObject *, const gchar *, gpointer)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'buildable',10005556,0,@Tid,'5.0'); # type=GtkBuildable *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'builder',10005557,1,@Tid,'5.0'); # type=GtkBuilder *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'child',11841,2,@Tid,'5.0'); # type=GObject *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tagname',11421,3,@Tid,'5.0'); # type=const gchar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'data',11404,4,@Tid,'5.0'); # type=gpointer
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkBuildable *, GtkBuilder *, GObject *, const gchar *, gpointer)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'custom_finished',@Fptr,8,10005554,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkBuildable *, GtkBuilder *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'buildable',10005556,0,@Tid,'5.0'); # type=GtkBuildable *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'builder',10005557,1,@Tid,'5.0'); # type=GtkBuilder *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkBuildable *, GtkBuilder *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parser_finished',@Fptr,9,10005554,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: GObject * (*)(GtkBuildable *, GtkBuilder *, const gchar *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='GObject * (*)(GtkBuildable *, GtkBuilder *, const gchar *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_internal_child',@Fptr,10,10005554,'5.0',0); # type=fptr

# _GtkButtonClass (expect 11 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10004268,0,10005567,'5.0',0); # type=GtkBinClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkButton *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'button',10005569,0,@Tid,'5.0'); # type=GtkButton *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkButton *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'pressed',@Fptr,1,10005567,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkButton *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkButton *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'released',@Fptr,2,10005567,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkButton *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkButton *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'clicked',@Fptr,3,10005567,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkButton *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkButton *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'enter',@Fptr,4,10005567,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkButton *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkButton *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'leave',@Fptr,5,10005567,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkButton *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkButton *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'activate',@Fptr,6,10005567,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,7,10005567,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,8,10005567,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,9,10005567,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,10,10005567,'5.0',0); # type=fptr

# _GtkAccelGroupClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',11867,0,10005695,'5.0',0); # type=GObjectClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkAccelGroup *, guint, GdkModifierType, GClosure *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'accel_group',10004846,0,@Tid,'5.0'); # type=GtkAccelGroup *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'keyval',11402,1,@Tid,'5.0'); # type=guint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'modifier',10004038,2,@Tid,'5.0'); # type=GdkModifierType
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'accel_closure',11871,3,@Tid,'5.0'); # type=GClosure *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkAccelGroup *, guint, GdkModifierType, GClosure *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'accel_changed',@Fptr,1,10005695,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,2,10005695,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,3,10005695,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,4,10005695,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,5,10005695,'5.0',0); # type=fptr

# _GtkAppChooserWidgetClass (expect 5 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10004555,0,10005723,'5.0',0); # type=GtkBoxClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkAppChooserWidget *, GAppInfo *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'self',10005724,0,@Tid,'5.0'); # type=GtkAppChooserWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'app_info',10002988,1,@Tid,'5.0'); # type=GAppInfo *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkAppChooserWidget *, GAppInfo *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'application_selected',@Fptr,1,10005723,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkAppChooserWidget *, GAppInfo *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkAppChooserWidget *, GAppInfo *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'application_activated',@Fptr,2,10005723,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkAppChooserWidget *, GtkMenu *, GAppInfo *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'self',10005724,0,@Tid,'5.0'); # type=GtkAppChooserWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'menu',10004548,1,@Tid,'5.0'); # type=GtkMenu *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'app_info',10002988,2,@Tid,'5.0'); # type=GAppInfo *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkAppChooserWidget *, GtkMenu *, GAppInfo *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'populate_popup',@Fptr,3,10005723,'5.0',0); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'padding',11404,4,10005723,'5.0',0); # type=gpointer

# _GtkCellAreaClass (expect 28 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10003273,0,10005746,'5.0',0); # type=GInitiallyUnownedClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellArea *, GtkCellRenderer *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'area',10004520,0,@Tid,'5.0'); # type=GtkCellArea *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'renderer',10004514,1,@Tid,'5.0'); # type=GtkCellRenderer *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCellArea *, GtkCellRenderer *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'add',@Fptr,1,10005746,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkCellArea *, GtkCellRenderer *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCellArea *, GtkCellRenderer *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'remove',@Fptr,2,10005746,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellArea *, GtkCellCallback, gpointer)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'area',10004520,0,@Tid,'5.0'); # type=GtkCellArea *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'callback',10005740,1,@Tid,'5.0'); # type=GtkCellCallback
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'callback_data',11404,2,@Tid,'5.0'); # type=gpointer
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCellArea *, GtkCellCallback, gpointer)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'foreach',@Fptr,3,10005746,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellArea *, GtkCellAreaContext *, GtkWidget *, const GdkRectangle *, const GdkRectangle *, GtkCellAllocCallback, gpointer)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'area',10004520,0,@Tid,'5.0'); # type=GtkCellArea *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10005248,1,@Tid,'5.0'); # type=GtkCellAreaContext *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,2,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell_area',39913,3,@Tid,'5.0'); # type=const GdkRectangle *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'background_area',39913,4,@Tid,'5.0'); # type=const GdkRectangle *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'callback',10005742,5,@Tid,'5.0'); # type=GtkCellAllocCallback
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'callback_data',11404,6,@Tid,'5.0'); # type=gpointer
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCellArea *, GtkCellAreaContext *, GtkWidget *, const GdkRectangle *, const GdkRectangle *, GtkCellAllocCallback, gpointer)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'foreach_alloc',@Fptr,4,10005746,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gint (*)(GtkCellArea *, GtkCellAreaContext *, GtkWidget *, GdkEvent *, const GdkRectangle *, GtkCellRendererState)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11400);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'area',10004520,0,@Tid,'5.0'); # type=GtkCellArea *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10005248,1,@Tid,'5.0'); # type=GtkCellAreaContext *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,2,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'event',10003822,3,@Tid,'5.0'); # type=GdkEvent *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell_area',39913,4,@Tid,'5.0'); # type=const GdkRectangle *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'flags',10005051,5,@Tid,'5.0'); # type=GtkCellRendererState
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gint (*)(GtkCellArea *, GtkCellAreaContext *, GtkWidget *, GdkEvent *, const GdkRectangle *, GtkCellRendererState)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'event',@Fptr,5,10005746,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellArea *, GtkCellAreaContext *, GtkWidget *, cairo_t *, const GdkRectangle *, const GdkRectangle *, GtkCellRendererState, gboolean)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'area',10004520,0,@Tid,'5.0'); # type=GtkCellArea *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10005248,1,@Tid,'5.0'); # type=GtkCellAreaContext *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,2,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cr',32487,3,@Tid,'5.0'); # type=cairo_t *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'background_area',39913,4,@Tid,'5.0'); # type=const GdkRectangle *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell_area',39913,5,@Tid,'5.0'); # type=const GdkRectangle *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'flags',10005051,6,@Tid,'5.0'); # type=GtkCellRendererState
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'paint_focus',11401,7,@Tid,'5.0'); # type=gboolean
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCellArea *, GtkCellAreaContext *, GtkWidget *, cairo_t *, const GdkRectangle *, const GdkRectangle *, GtkCellRendererState, gboolean)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'render',@Fptr,6,10005746,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellArea *, GtkTreeModel *, GtkTreeIter *, gboolean, gboolean)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'area',10004520,0,@Tid,'5.0'); # type=GtkCellArea *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tree_model',10004486,1,@Tid,'5.0'); # type=GtkTreeModel *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'iter',10004490,2,@Tid,'5.0'); # type=GtkTreeIter *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'is_expander',11401,3,@Tid,'5.0'); # type=gboolean
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'is_expanded',11401,4,@Tid,'5.0'); # type=gboolean
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCellArea *, GtkTreeModel *, GtkTreeIter *, gboolean, gboolean)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'apply_attributes',@Fptr,7,10005746,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GtkCellAreaContext * (*)(GtkCellArea *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',10005248);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'area',10004520,0,@Tid,'5.0'); # type=GtkCellArea *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='GtkCellAreaContext * (*)(GtkCellArea *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'create_context',@Fptr,8,10005746,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GtkCellAreaContext * (*)(GtkCellArea *, GtkCellAreaContext *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',10005248);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'area',10004520,0,@Tid,'5.0'); # type=GtkCellArea *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10005248,1,@Tid,'5.0'); # type=GtkCellAreaContext *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='GtkCellAreaContext * (*)(GtkCellArea *, GtkCellAreaContext *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'copy_context',@Fptr,9,10005746,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GtkSizeRequestMode (*)(GtkCellArea *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',10005663);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'area',10004520,0,@Tid,'5.0'); # type=GtkCellArea *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='GtkSizeRequestMode (*)(GtkCellArea *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_request_mode',@Fptr,10,10005746,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellArea *, GtkCellAreaContext *, GtkWidget *, gint *, gint *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'area',10004520,0,@Tid,'5.0'); # type=GtkCellArea *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10005248,1,@Tid,'5.0'); # type=GtkCellAreaContext *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,2,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'minimum_width',11516,3,@Tid,'5.0'); # type=gint *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'natural_width',11516,4,@Tid,'5.0'); # type=gint *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCellArea *, GtkCellAreaContext *, GtkWidget *, gint *, gint *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_preferred_width',@Fptr,11,10005746,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellArea *, GtkCellAreaContext *, GtkWidget *, gint, gint *, gint *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'area',10004520,0,@Tid,'5.0'); # type=GtkCellArea *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10005248,1,@Tid,'5.0'); # type=GtkCellAreaContext *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,2,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'width',11400,3,@Tid,'5.0'); # type=gint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'minimum_height',11516,4,@Tid,'5.0'); # type=gint *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'natural_height',11516,5,@Tid,'5.0'); # type=gint *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCellArea *, GtkCellAreaContext *, GtkWidget *, gint, gint *, gint *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_preferred_height_for_width',@Fptr,12,10005746,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkCellArea *, GtkCellAreaContext *, GtkWidget *, gint *, gint *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCellArea *, GtkCellAreaContext *, GtkWidget *, gint *, gint *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_preferred_height',@Fptr,13,10005746,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkCellArea *, GtkCellAreaContext *, GtkWidget *, gint, gint *, gint *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCellArea *, GtkCellAreaContext *, GtkWidget *, gint, gint *, gint *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_preferred_width_for_height',@Fptr,14,10005746,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellArea *, GtkCellRenderer *, guint, const GValue *, GParamSpec *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'area',10004520,0,@Tid,'5.0'); # type=GtkCellArea *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'renderer',10004514,1,@Tid,'5.0'); # type=GtkCellRenderer *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'property_id',11402,2,@Tid,'5.0'); # type=guint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'value',11848,3,@Tid,'5.0'); # type=const GValue *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'pspec',11854,4,@Tid,'5.0'); # type=GParamSpec *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCellArea *, GtkCellRenderer *, guint, const GValue *, GParamSpec *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'set_cell_property',@Fptr,15,10005746,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellArea *, GtkCellRenderer *, guint, GValue *, GParamSpec *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'area',10004520,0,@Tid,'5.0'); # type=GtkCellArea *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'renderer',10004514,1,@Tid,'5.0'); # type=GtkCellRenderer *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'property_id',11402,2,@Tid,'5.0'); # type=guint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'value',11849,3,@Tid,'5.0'); # type=GValue *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'pspec',11854,4,@Tid,'5.0'); # type=GParamSpec *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCellArea *, GtkCellRenderer *, guint, GValue *, GParamSpec *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_cell_property',@Fptr,16,10005746,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkCellArea *, GtkDirectionType)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'area',10004520,0,@Tid,'5.0'); # type=GtkCellArea *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'direction',10005583,1,@Tid,'5.0'); # type=GtkDirectionType
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkCellArea *, GtkDirectionType)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'focus',@Fptr,17,10005746,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkCellArea *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'area',10004520,0,@Tid,'5.0'); # type=GtkCellArea *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkCellArea *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'is_activatable',@Fptr,18,10005746,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkCellArea *, GtkCellAreaContext *, GtkWidget *, const GdkRectangle *, GtkCellRendererState, gboolean)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'area',10004520,0,@Tid,'5.0'); # type=GtkCellArea *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10005248,1,@Tid,'5.0'); # type=GtkCellAreaContext *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,2,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell_area',39913,3,@Tid,'5.0'); # type=const GdkRectangle *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'flags',10005051,4,@Tid,'5.0'); # type=GtkCellRendererState
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'edit_only',11401,5,@Tid,'5.0'); # type=gboolean
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkCellArea *, GtkCellAreaContext *, GtkWidget *, const GdkRectangle *, GtkCellRendererState, gboolean)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'activate',@Fptr,19,10005746,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,20,10005746,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,21,10005746,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,22,10005746,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,23,10005746,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved5',@Fptr,24,10005746,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved6',@Fptr,25,10005746,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved7',@Fptr,26,10005746,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved8',@Fptr,27,10005746,'5.0',0); # type=fptr

# _GtkCellAreaContextClass (expect 11 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',11867,0,10005755,'5.0',0); # type=GObjectClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellAreaContext *, gint, gint)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10005248,0,@Tid,'5.0'); # type=GtkCellAreaContext *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'width',11400,1,@Tid,'5.0'); # type=gint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'height',11400,2,@Tid,'5.0'); # type=gint
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCellAreaContext *, gint, gint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'allocate',@Fptr,1,10005755,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellAreaContext *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10005248,0,@Tid,'5.0'); # type=GtkCellAreaContext *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCellAreaContext *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'reset',@Fptr,2,10005755,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellAreaContext *, gint, gint *, gint *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10005248,0,@Tid,'5.0'); # type=GtkCellAreaContext *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'width',11400,1,@Tid,'5.0'); # type=gint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'minimum_height',11516,2,@Tid,'5.0'); # type=gint *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'natural_height',11516,3,@Tid,'5.0'); # type=gint *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCellAreaContext *, gint, gint *, gint *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_preferred_height_for_width',@Fptr,3,10005755,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkCellAreaContext *, gint, gint *, gint *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCellAreaContext *, gint, gint *, gint *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_preferred_width_for_height',@Fptr,4,10005755,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,5,10005755,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,6,10005755,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,7,10005755,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,8,10005755,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved5',@Fptr,9,10005755,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved6',@Fptr,10,10005755,'5.0',0); # type=fptr

# _GtkPrintOperationClass (expect 20 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',11867,0,10005769,'5.0',0); # type=GObjectClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkPrintOperation *, GtkPrintOperationResult)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'operation',10005773,0,@Tid,'5.0'); # type=GtkPrintOperation *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'result',10005764,1,@Tid,'5.0'); # type=GtkPrintOperationResult
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkPrintOperation *, GtkPrintOperationResult)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'done',@Fptr,1,10005769,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkPrintOperation *, GtkPrintContext *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'operation',10005773,0,@Tid,'5.0'); # type=GtkPrintOperation *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10004277,1,@Tid,'5.0'); # type=GtkPrintContext *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkPrintOperation *, GtkPrintContext *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'begin_print',@Fptr,2,10005769,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkPrintOperation *, GtkPrintContext *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'operation',10005773,0,@Tid,'5.0'); # type=GtkPrintOperation *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10004277,1,@Tid,'5.0'); # type=GtkPrintContext *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkPrintOperation *, GtkPrintContext *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'paginate',@Fptr,3,10005769,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkPrintOperation *, GtkPrintContext *, gint, GtkPageSetup *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'operation',10005773,0,@Tid,'5.0'); # type=GtkPrintOperation *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10004277,1,@Tid,'5.0'); # type=GtkPrintContext *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'page_nr',11400,2,@Tid,'5.0'); # type=gint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'setup',10004278,3,@Tid,'5.0'); # type=GtkPageSetup *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkPrintOperation *, GtkPrintContext *, gint, GtkPageSetup *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'request_page_setup',@Fptr,4,10005769,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkPrintOperation *, GtkPrintContext *, gint)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'operation',10005773,0,@Tid,'5.0'); # type=GtkPrintOperation *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10004277,1,@Tid,'5.0'); # type=GtkPrintContext *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'page_nr',11400,2,@Tid,'5.0'); # type=gint
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkPrintOperation *, GtkPrintContext *, gint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'draw_page',@Fptr,5,10005769,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkPrintOperation *, GtkPrintContext *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkPrintOperation *, GtkPrintContext *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'end_print',@Fptr,6,10005769,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkPrintOperation *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'operation',10005773,0,@Tid,'5.0'); # type=GtkPrintOperation *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkPrintOperation *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'status_changed',@Fptr,7,10005769,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GtkWidget * (*)(GtkPrintOperation *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',10004154);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'operation',10005773,0,@Tid,'5.0'); # type=GtkPrintOperation *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='GtkWidget * (*)(GtkPrintOperation *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'create_custom_widget',@Fptr,8,10005769,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkPrintOperation *, GtkWidget *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'operation',10005773,0,@Tid,'5.0'); # type=GtkPrintOperation *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,1,@Tid,'5.0'); # type=GtkWidget *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkPrintOperation *, GtkWidget *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'custom_widget_apply',@Fptr,9,10005769,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkPrintOperation *, GtkPrintOperationPreview *, GtkPrintContext *, GtkWindow *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'operation',10005773,0,@Tid,'5.0'); # type=GtkPrintOperation *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'preview',10005166,1,@Tid,'5.0'); # type=GtkPrintOperationPreview *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10004277,2,@Tid,'5.0'); # type=GtkPrintContext *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent',10004264,3,@Tid,'5.0'); # type=GtkWindow *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkPrintOperation *, GtkPrintOperationPreview *, GtkPrintContext *, GtkWindow *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'preview',@Fptr,10,10005769,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkPrintOperation *, GtkWidget *, GtkPageSetup *, GtkPrintSettings *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'operation',10005773,0,@Tid,'5.0'); # type=GtkPrintOperation *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'widget',10004154,1,@Tid,'5.0'); # type=GtkWidget *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'setup',10004278,2,@Tid,'5.0'); # type=GtkPageSetup *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'settings',10004222,3,@Tid,'5.0'); # type=GtkPrintSettings *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkPrintOperation *, GtkWidget *, GtkPageSetup *, GtkPrintSettings *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'update_custom_widget',@Fptr,11,10005769,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,12,10005769,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,13,10005769,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,14,10005769,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,15,10005769,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved5',@Fptr,16,10005769,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved6',@Fptr,17,10005769,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved7',@Fptr,18,10005769,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved8',@Fptr,19,10005769,'5.0',0); # type=fptr

# _GtkTreeViewClass (expect 24 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10006175,0,10005807,'5.0',0); # type=GtkContainerClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkTreeView *, GtkTreePath *, GtkTreeViewColumn *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tree_view',10004496,0,@Tid,'5.0'); # type=GtkTreeView *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'path',10004487,1,@Tid,'5.0'); # type=GtkTreePath *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'column',10004513,2,@Tid,'5.0'); # type=GtkTreeViewColumn *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTreeView *, GtkTreePath *, GtkTreeViewColumn *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'row_activated',@Fptr,1,10005807,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkTreeView *, GtkTreeIter *, GtkTreePath *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tree_view',10004496,0,@Tid,'5.0'); # type=GtkTreeView *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'iter',10004490,1,@Tid,'5.0'); # type=GtkTreeIter *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'path',10004487,2,@Tid,'5.0'); # type=GtkTreePath *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkTreeView *, GtkTreeIter *, GtkTreePath *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'test_expand_row',@Fptr,2,10005807,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: gboolean (*)(GtkTreeView *, GtkTreeIter *, GtkTreePath *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkTreeView *, GtkTreeIter *, GtkTreePath *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'test_collapse_row',@Fptr,3,10005807,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkTreeView *, GtkTreeIter *, GtkTreePath *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tree_view',10004496,0,@Tid,'5.0'); # type=GtkTreeView *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'iter',10004490,1,@Tid,'5.0'); # type=GtkTreeIter *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'path',10004487,2,@Tid,'5.0'); # type=GtkTreePath *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTreeView *, GtkTreeIter *, GtkTreePath *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'row_expanded',@Fptr,4,10005807,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkTreeView *, GtkTreeIter *, GtkTreePath *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTreeView *, GtkTreeIter *, GtkTreePath *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'row_collapsed',@Fptr,5,10005807,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkTreeView *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tree_view',10004496,0,@Tid,'5.0'); # type=GtkTreeView *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTreeView *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'columns_changed',@Fptr,6,10005807,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkTreeView *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTreeView *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'cursor_changed',@Fptr,7,10005807,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkTreeView *, GtkMovementStep, gint)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tree_view',10004496,0,@Tid,'5.0'); # type=GtkTreeView *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'step',10005599,1,@Tid,'5.0'); # type=GtkMovementStep
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'count',11400,2,@Tid,'5.0'); # type=gint
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkTreeView *, GtkMovementStep, gint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'move_cursor',@Fptr,8,10005807,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkTreeView *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tree_view',10004496,0,@Tid,'5.0'); # type=GtkTreeView *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkTreeView *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'select_all',@Fptr,9,10005807,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: gboolean (*)(GtkTreeView *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkTreeView *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'unselect_all',@Fptr,10,10005807,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkTreeView *, gboolean)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tree_view',10004496,0,@Tid,'5.0'); # type=GtkTreeView *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'start_editing',11401,1,@Tid,'5.0'); # type=gboolean
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkTreeView *, gboolean)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'select_cursor_row',@Fptr,11,10005807,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: gboolean (*)(GtkTreeView *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkTreeView *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'toggle_cursor_row',@Fptr,12,10005807,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkTreeView *, gboolean, gboolean, gboolean)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tree_view',10004496,0,@Tid,'5.0'); # type=GtkTreeView *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'logical',11401,1,@Tid,'5.0'); # type=gboolean
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'expand',11401,2,@Tid,'5.0'); # type=gboolean
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'open_all',11401,3,@Tid,'5.0'); # type=gboolean
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkTreeView *, gboolean, gboolean, gboolean)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'expand_collapse_cursor_row',@Fptr,13,10005807,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: gboolean (*)(GtkTreeView *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkTreeView *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'select_cursor_parent',@Fptr,14,10005807,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: gboolean (*)(GtkTreeView *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkTreeView *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'start_interactive_search',@Fptr,15,10005807,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,16,10005807,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,17,10005807,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,18,10005807,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,19,10005807,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved5',@Fptr,20,10005807,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved6',@Fptr,21,10005807,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved7',@Fptr,22,10005807,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved8',@Fptr,23,10005807,'5.0',0); # type=fptr

# _GtkCellRendererToggleClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10005057,0,10005839,'5.0',0); # type=GtkCellRendererClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellRendererToggle *, const gchar *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell_renderer_toggle',10005841,0,@Tid,'5.0'); # type=GtkCellRendererToggle *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'path',11421,1,@Tid,'5.0'); # type=const gchar *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCellRendererToggle *, const gchar *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'toggled',@Fptr,1,10005839,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,2,10005839,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,3,10005839,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,4,10005839,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,5,10005839,'5.0',0); # type=fptr

# _GtkAboutDialogClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10004590,0,10005850,'5.0',0); # type=GtkDialogClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkAboutDialog *, const gchar *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'dialog',10005852,0,@Tid,'5.0'); # type=GtkAboutDialog *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'uri',11421,1,@Tid,'5.0'); # type=const gchar *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkAboutDialog *, const gchar *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'activate_link',@Fptr,1,10005850,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,2,10005850,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,3,10005850,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,4,10005850,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,5,10005850,'5.0',0); # type=fptr

# _GtkTreeModelIface (expect 21 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'g_iface',11997,0,10005869,'5.0',0); # type=GTypeInterface
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkTreeModel *, GtkTreePath *, GtkTreeIter *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tree_model',10004486,0,@Tid,'5.0'); # type=GtkTreeModel *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'path',10004487,1,@Tid,'5.0'); # type=GtkTreePath *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'iter',10004490,2,@Tid,'5.0'); # type=GtkTreeIter *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTreeModel *, GtkTreePath *, GtkTreeIter *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'row_changed',@Fptr,1,10005869,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkTreeModel *, GtkTreePath *, GtkTreeIter *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTreeModel *, GtkTreePath *, GtkTreeIter *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'row_inserted',@Fptr,2,10005869,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkTreeModel *, GtkTreePath *, GtkTreeIter *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTreeModel *, GtkTreePath *, GtkTreeIter *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'row_has_child_toggled',@Fptr,3,10005869,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkTreeModel *, GtkTreePath *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tree_model',10004486,0,@Tid,'5.0'); # type=GtkTreeModel *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'path',10004487,1,@Tid,'5.0'); # type=GtkTreePath *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTreeModel *, GtkTreePath *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'row_deleted',@Fptr,4,10005869,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkTreeModel *, GtkTreePath *, GtkTreeIter *, gint *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tree_model',10004486,0,@Tid,'5.0'); # type=GtkTreeModel *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'path',10004487,1,@Tid,'5.0'); # type=GtkTreePath *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'iter',10004490,2,@Tid,'5.0'); # type=GtkTreeIter *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'new_order',11516,3,@Tid,'5.0'); # type=gint *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTreeModel *, GtkTreePath *, GtkTreeIter *, gint *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'rows_reordered',@Fptr,5,10005869,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GtkTreeModelFlags (*)(GtkTreeModel *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',10005866);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tree_model',10004486,0,@Tid,'5.0'); # type=GtkTreeModel *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='GtkTreeModelFlags (*)(GtkTreeModel *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_flags',@Fptr,6,10005869,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gint (*)(GtkTreeModel *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11400);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tree_model',10004486,0,@Tid,'5.0'); # type=GtkTreeModel *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gint (*)(GtkTreeModel *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_n_columns',@Fptr,7,10005869,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GType (*)(GtkTreeModel *, gint)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11836);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tree_model',10004486,0,@Tid,'5.0'); # type=GtkTreeModel *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'index_',11400,1,@Tid,'5.0'); # type=gint
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='GType (*)(GtkTreeModel *, gint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_column_type',@Fptr,8,10005869,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkTreeModel *, GtkTreeIter *, GtkTreePath *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tree_model',10004486,0,@Tid,'5.0'); # type=GtkTreeModel *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'iter',10004490,1,@Tid,'5.0'); # type=GtkTreeIter *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'path',10004487,2,@Tid,'5.0'); # type=GtkTreePath *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkTreeModel *, GtkTreeIter *, GtkTreePath *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_iter',@Fptr,9,10005869,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GtkTreePath * (*)(GtkTreeModel *, GtkTreeIter *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',10004487);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tree_model',10004486,0,@Tid,'5.0'); # type=GtkTreeModel *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'iter',10004490,1,@Tid,'5.0'); # type=GtkTreeIter *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='GtkTreePath * (*)(GtkTreeModel *, GtkTreeIter *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_path',@Fptr,10,10005869,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkTreeModel *, GtkTreeIter *, gint, GValue *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tree_model',10004486,0,@Tid,'5.0'); # type=GtkTreeModel *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'iter',10004490,1,@Tid,'5.0'); # type=GtkTreeIter *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'column',11400,2,@Tid,'5.0'); # type=gint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'value',11849,3,@Tid,'5.0'); # type=GValue *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTreeModel *, GtkTreeIter *, gint, GValue *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_value',@Fptr,11,10005869,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkTreeModel *, GtkTreeIter *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tree_model',10004486,0,@Tid,'5.0'); # type=GtkTreeModel *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'iter',10004490,1,@Tid,'5.0'); # type=GtkTreeIter *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkTreeModel *, GtkTreeIter *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'iter_next',@Fptr,12,10005869,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: gboolean (*)(GtkTreeModel *, GtkTreeIter *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkTreeModel *, GtkTreeIter *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'iter_previous',@Fptr,13,10005869,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkTreeModel *, GtkTreeIter *, GtkTreeIter *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tree_model',10004486,0,@Tid,'5.0'); # type=GtkTreeModel *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'iter',10004490,1,@Tid,'5.0'); # type=GtkTreeIter *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent',10004490,2,@Tid,'5.0'); # type=GtkTreeIter *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkTreeModel *, GtkTreeIter *, GtkTreeIter *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'iter_children',@Fptr,14,10005869,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: gboolean (*)(GtkTreeModel *, GtkTreeIter *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkTreeModel *, GtkTreeIter *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'iter_has_child',@Fptr,15,10005869,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gint (*)(GtkTreeModel *, GtkTreeIter *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11400);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tree_model',10004486,0,@Tid,'5.0'); # type=GtkTreeModel *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'iter',10004490,1,@Tid,'5.0'); # type=GtkTreeIter *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gint (*)(GtkTreeModel *, GtkTreeIter *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'iter_n_children',@Fptr,16,10005869,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkTreeModel *, GtkTreeIter *, GtkTreeIter *, gint)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tree_model',10004486,0,@Tid,'5.0'); # type=GtkTreeModel *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'iter',10004490,1,@Tid,'5.0'); # type=GtkTreeIter *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'parent',10004490,2,@Tid,'5.0'); # type=GtkTreeIter *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'n',11400,3,@Tid,'5.0'); # type=gint
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkTreeModel *, GtkTreeIter *, GtkTreeIter *, gint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'iter_nth_child',@Fptr,17,10005869,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: gboolean (*)(GtkTreeModel *, GtkTreeIter *, GtkTreeIter *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkTreeModel *, GtkTreeIter *, GtkTreeIter *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'iter_parent',@Fptr,18,10005869,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkTreeModel *, GtkTreeIter *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tree_model',10004486,0,@Tid,'5.0'); # type=GtkTreeModel *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'iter',10004490,1,@Tid,'5.0'); # type=GtkTreeIter *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTreeModel *, GtkTreeIter *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'ref_node',@Fptr,19,10005869,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkTreeModel *, GtkTreeIter *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTreeModel *, GtkTreeIter *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'unref_node',@Fptr,20,10005869,'5.0',0); # type=fptr

# _GtkCheckButtonClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10004330,0,10005878,'5.0',0); # type=GtkToggleButtonClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCheckButton *, cairo_t *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'check_button',10005880,0,@Tid,'5.0'); # type=GtkCheckButton *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cr',32487,1,@Tid,'5.0'); # type=cairo_t *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCheckButton *, cairo_t *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'draw_indicator',@Fptr,1,10005878,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,2,10005878,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,3,10005878,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,4,10005878,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,5,10005878,'5.0',0); # type=fptr

# _GtkLevelBarClass (expect 3 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10004828,0,10005918,'5.0',0); # type=GtkWidgetClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkLevelBar *, const gchar *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'self',10005919,0,@Tid,'5.0'); # type=GtkLevelBar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'name',11421,1,@Tid,'5.0'); # type=const gchar *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkLevelBar *, const gchar *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'offset_changed',@Fptr,1,10005918,'5.0',0); # type=fptr
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'padding',11404,2,10005918,'5.0',0); # type=gpointer

# _GtkComboBoxClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10004268,0,10005926,'5.0',0); # type=GtkBinClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkComboBox *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'combo_box',10005928,0,@Tid,'5.0'); # type=GtkComboBox *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkComboBox *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'changed',@Fptr,1,10005926,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gchar * (*)(GtkComboBox *, const gchar *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11415);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'combo_box',10005928,0,@Tid,'5.0'); # type=GtkComboBox *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'path',11421,1,@Tid,'5.0'); # type=const gchar *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gchar * (*)(GtkComboBox *, const gchar *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'format_entry_text',@Fptr,2,10005926,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,3,10005926,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,4,10005926,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,5,10005926,'5.0',0); # type=fptr

# _GtkBuilderClass (expect 10 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',11867,0,10005973,'5.0',0); # type=GObjectClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GType (*)(GtkBuilder *, const char *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11836);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'builder',10005557,0,@Tid,'5.0'); # type=GtkBuilder *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'type_name',10295,1,@Tid,'5.0'); # type=const char *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='GType (*)(GtkBuilder *, const char *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_type_from_name',@Fptr,1,10005973,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,2,10005973,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,3,10005973,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,4,10005973,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,5,10005973,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved5',@Fptr,6,10005973,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved6',@Fptr,7,10005973,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved7',@Fptr,8,10005973,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved8',@Fptr,9,10005973,'5.0',0); # type=fptr

# _GtkTextBufferClass (expect 18 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',11867,0,10005985,'5.0',0); # type=GObjectClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkTextBuffer *, GtkTextIter *, const gchar *, gint)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'buffer',10004198,0,@Tid,'5.0'); # type=GtkTextBuffer *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'pos',10004201,1,@Tid,'5.0'); # type=GtkTextIter *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'new_text',11421,2,@Tid,'5.0'); # type=const gchar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'new_text_length',11400,3,@Tid,'5.0'); # type=gint
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTextBuffer *, GtkTextIter *, const gchar *, gint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'insert_text',@Fptr,1,10005985,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkTextBuffer *, GtkTextIter *, GdkPixbuf *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'buffer',10004198,0,@Tid,'5.0'); # type=GtkTextBuffer *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'iter',10004201,1,@Tid,'5.0'); # type=GtkTextIter *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'pixbuf',0,2,@Tid,'5.0'); # type=GdkPixbuf *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTextBuffer *, GtkTextIter *, GdkPixbuf *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'insert_pixbuf',@Fptr,2,10005985,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkTextBuffer *, GtkTextIter *, GtkTextChildAnchor *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'buffer',10004198,0,@Tid,'5.0'); # type=GtkTextBuffer *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'iter',10004201,1,@Tid,'5.0'); # type=GtkTextIter *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'anchor',10004190,2,@Tid,'5.0'); # type=GtkTextChildAnchor *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTextBuffer *, GtkTextIter *, GtkTextChildAnchor *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'insert_child_anchor',@Fptr,3,10005985,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkTextBuffer *, GtkTextIter *, GtkTextIter *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'buffer',10004198,0,@Tid,'5.0'); # type=GtkTextBuffer *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'start',10004201,1,@Tid,'5.0'); # type=GtkTextIter *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'end',10004201,2,@Tid,'5.0'); # type=GtkTextIter *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTextBuffer *, GtkTextIter *, GtkTextIter *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'delete_range',@Fptr,4,10005985,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkTextBuffer *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'buffer',10004198,0,@Tid,'5.0'); # type=GtkTextBuffer *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTextBuffer *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'changed',@Fptr,5,10005985,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkTextBuffer *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTextBuffer *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'modified_changed',@Fptr,6,10005985,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkTextBuffer *, const GtkTextIter *, GtkTextMark *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'buffer',10004198,0,@Tid,'5.0'); # type=GtkTextBuffer *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'location',10005384,1,@Tid,'5.0'); # type=const GtkTextIter *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'mark',10004481,2,@Tid,'5.0'); # type=GtkTextMark *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTextBuffer *, const GtkTextIter *, GtkTextMark *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'mark_set',@Fptr,7,10005985,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkTextBuffer *, GtkTextMark *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'buffer',10004198,0,@Tid,'5.0'); # type=GtkTextBuffer *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'mark',10004481,1,@Tid,'5.0'); # type=GtkTextMark *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTextBuffer *, GtkTextMark *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'mark_deleted',@Fptr,8,10005985,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkTextBuffer *, GtkTextTag *, const GtkTextIter *, const GtkTextIter *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'buffer',10004198,0,@Tid,'5.0'); # type=GtkTextBuffer *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'tag',10004204,1,@Tid,'5.0'); # type=GtkTextTag *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'start',10005384,2,@Tid,'5.0'); # type=const GtkTextIter *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'end',10005384,3,@Tid,'5.0'); # type=const GtkTextIter *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTextBuffer *, GtkTextTag *, const GtkTextIter *, const GtkTextIter *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'apply_tag',@Fptr,9,10005985,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkTextBuffer *, GtkTextTag *, const GtkTextIter *, const GtkTextIter *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTextBuffer *, GtkTextTag *, const GtkTextIter *, const GtkTextIter *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'remove_tag',@Fptr,10,10005985,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkTextBuffer *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTextBuffer *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'begin_user_action',@Fptr,11,10005985,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkTextBuffer *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTextBuffer *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'end_user_action',@Fptr,12,10005985,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkTextBuffer *, GtkClipboard *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'buffer',10004198,0,@Tid,'5.0'); # type=GtkTextBuffer *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'clipboard',10004663,1,@Tid,'5.0'); # type=GtkClipboard *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTextBuffer *, GtkClipboard *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'paste_done',@Fptr,13,10005985,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,14,10005985,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,15,10005985,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,16,10005985,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,17,10005985,'5.0',0); # type=fptr

# _GtkIconThemeClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',11867,0,10005998,'5.0',0); # type=GObjectClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkIconTheme *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'icon_theme',10006004,0,@Tid,'5.0'); # type=GtkIconTheme *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkIconTheme *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'changed',@Fptr,1,10005998,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,2,10005998,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,3,10005998,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,4,10005998,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,5,10005998,'5.0',0); # type=fptr

# _GtkBindingArg (expect 4 members, found 2 
#INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'arg_type',11836,0,10006016,'5.0',0); # type=GType
##WARN: union { glong returned tid=0
#INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'long_data',0,1,10006016,'5.0',0); # type=union { glong
#INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'double_data',11598,2,10006016,'5.0',0); # type=gdouble
#INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'string_data',11415,3,10006016,'5.0',0); # type=gchar *

# _GtkCellLayoutIface (expect 10 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'g_iface',11997,0,10006030,'5.0',0); # type=GTypeInterface
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellLayout *, GtkCellRenderer *, gboolean)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell_layout',10006028,0,@Tid,'5.0'); # type=GtkCellLayout *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell',10004514,1,@Tid,'5.0'); # type=GtkCellRenderer *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'expand',11401,2,@Tid,'5.0'); # type=gboolean
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCellLayout *, GtkCellRenderer *, gboolean)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'pack_start',@Fptr,1,10006030,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkCellLayout *, GtkCellRenderer *, gboolean)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCellLayout *, GtkCellRenderer *, gboolean)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'pack_end',@Fptr,2,10006030,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellLayout *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell_layout',10006028,0,@Tid,'5.0'); # type=GtkCellLayout *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCellLayout *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'clear',@Fptr,3,10006030,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellLayout *, GtkCellRenderer *, const gchar *, gint)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell_layout',10006028,0,@Tid,'5.0'); # type=GtkCellLayout *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell',10004514,1,@Tid,'5.0'); # type=GtkCellRenderer *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'attribute',11421,2,@Tid,'5.0'); # type=const gchar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'column',11400,3,@Tid,'5.0'); # type=gint
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCellLayout *, GtkCellRenderer *, const gchar *, gint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'add_attribute',@Fptr,4,10006030,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellLayout *, GtkCellRenderer *, GtkCellLayoutDataFunc, gpointer, GDestroyNotify)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell_layout',10006028,0,@Tid,'5.0'); # type=GtkCellLayout *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell',10004514,1,@Tid,'5.0'); # type=GtkCellRenderer *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'func',10006027,2,@Tid,'5.0'); # type=GtkCellLayoutDataFunc
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'func_data',11404,3,@Tid,'5.0'); # type=gpointer
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'destroy',11439,4,@Tid,'5.0'); # type=GDestroyNotify
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCellLayout *, GtkCellRenderer *, GtkCellLayoutDataFunc, gpointer, GDestroyNotify)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'set_cell_data_func',@Fptr,5,10006030,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellLayout *, GtkCellRenderer *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell_layout',10006028,0,@Tid,'5.0'); # type=GtkCellLayout *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell',10004514,1,@Tid,'5.0'); # type=GtkCellRenderer *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCellLayout *, GtkCellRenderer *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'clear_attributes',@Fptr,6,10006030,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkCellLayout *, GtkCellRenderer *, gint)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell_layout',10006028,0,@Tid,'5.0'); # type=GtkCellLayout *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell',10004514,1,@Tid,'5.0'); # type=GtkCellRenderer *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'position',11400,2,@Tid,'5.0'); # type=gint
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkCellLayout *, GtkCellRenderer *, gint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'reorder',@Fptr,7,10006030,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GList* (*)(GtkCellLayout *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',0);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell_layout',10006028,0,@Tid,'5.0'); # type=GtkCellLayout *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='GList* (*)(GtkCellLayout *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_cells',@Fptr,8,10006030,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'GtkCellArea * (*)(GtkCellLayout *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',10004520);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'cell_layout',10006028,0,@Tid,'5.0'); # type=GtkCellLayout *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='GtkCellArea * (*)(GtkCellLayout *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_area',@Fptr,9,10006030,'5.0',0); # type=fptr

# _GtkToolbarClass (expect 8 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10006175,0,10006040,'5.0',0); # type=GtkContainerClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkToolbar *, GtkOrientation)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'toolbar',10006042,0,@Tid,'5.0'); # type=GtkToolbar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'orientation',10005603,1,@Tid,'5.0'); # type=GtkOrientation
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkToolbar *, GtkOrientation)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'orientation_changed',@Fptr,1,10006040,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkToolbar *, GtkToolbarStyle)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'toolbar',10006042,0,@Tid,'5.0'); # type=GtkToolbar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'style',10005629,1,@Tid,'5.0'); # type=GtkToolbarStyle
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkToolbar *, GtkToolbarStyle)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'style_changed',@Fptr,2,10006040,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkToolbar *, gint, gint, gint)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'toolbar',10006042,0,@Tid,'5.0'); # type=GtkToolbar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'x',11400,1,@Tid,'5.0'); # type=gint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'y',11400,2,@Tid,'5.0'); # type=gint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'button_number',11400,3,@Tid,'5.0'); # type=gint
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkToolbar *, gint, gint, gint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'popup_context_menu',@Fptr,3,10006040,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,4,10006040,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,5,10006040,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,6,10006040,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,7,10006040,'5.0',0); # type=fptr

# _GtkMenuToolButtonClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10004299,0,10006049,'5.0',0); # type=GtkToolButtonClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkMenuToolButton *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'button',10006051,0,@Tid,'5.0'); # type=GtkMenuToolButton *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkMenuToolButton *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'show_menu',@Fptr,1,10006049,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,2,10006049,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,3,10006049,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,4,10006049,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,5,10006049,'5.0',0); # type=fptr

# _GtkStatusbarClass (expect 8 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10004555,0,10006066,'5.0',0); # type=GtkBoxClass
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'reserved',11404,1,10006066,'5.0',0); # type=gpointer
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkStatusbar *, guint, const gchar *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'statusbar',10006068,0,@Tid,'5.0'); # type=GtkStatusbar *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context_id',11402,1,@Tid,'5.0'); # type=guint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'text',11421,2,@Tid,'5.0'); # type=const gchar *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkStatusbar *, guint, const gchar *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'text_pushed',@Fptr,2,10006066,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkStatusbar *, guint, const gchar *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkStatusbar *, guint, const gchar *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'text_popped',@Fptr,3,10006066,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,4,10006066,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,5,10006066,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,6,10006066,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,7,10006066,'5.0',0); # type=fptr

# _GtkExpanderClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10004268,0,10006084,'5.0',0); # type=GtkBinClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkExpander *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'expander',10006086,0,@Tid,'5.0'); # type=GtkExpander *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkExpander *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'activate',@Fptr,1,10006084,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,2,10006084,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,3,10006084,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,4,10006084,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,5,10006084,'5.0',0); # type=fptr

# _GtkStyleContextClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',11867,0,10006100,'5.0',0); # type=GObjectClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkStyleContext *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'context',10004858,0,@Tid,'5.0'); # type=GtkStyleContext *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkStyleContext *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'changed',@Fptr,1,10006100,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,2,10006100,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,3,10006100,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,4,10006100,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,5,10006100,'5.0',0); # type=fptr

# _GtkLabelClass (expect 13 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10004248,0,10006129,'5.0',0); # type=GtkMiscClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkLabel *, GtkMovementStep, gint, gboolean)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'label',10006131,0,@Tid,'5.0'); # type=GtkLabel *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'step',10005599,1,@Tid,'5.0'); # type=GtkMovementStep
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'count',11400,2,@Tid,'5.0'); # type=gint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'extend_selection',11401,3,@Tid,'5.0'); # type=gboolean
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkLabel *, GtkMovementStep, gint, gboolean)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'move_cursor',@Fptr,1,10006129,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkLabel *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'label',10006131,0,@Tid,'5.0'); # type=GtkLabel *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkLabel *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'copy_clipboard',@Fptr,2,10006129,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkLabel *, GtkMenu *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'label',10006131,0,@Tid,'5.0'); # type=GtkLabel *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'menu',10004548,1,@Tid,'5.0'); # type=GtkMenu *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkLabel *, GtkMenu *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'populate_popup',@Fptr,3,10006129,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkLabel *, const gchar *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'label',10006131,0,@Tid,'5.0'); # type=GtkLabel *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'uri',11421,1,@Tid,'5.0'); # type=const gchar *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkLabel *, const gchar *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'activate_link',@Fptr,4,10006129,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,5,10006129,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,6,10006129,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,7,10006129,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,8,10006129,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved5',@Fptr,9,10006129,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved6',@Fptr,10,10006129,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved7',@Fptr,11,10006129,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved8',@Fptr,12,10006129,'5.0',0); # type=fptr

# _GtkTreeSortableIface (expect 7 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'g_iface',11997,0,10006142,'5.0',0); # type=GTypeInterface
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkTreeSortable *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'sortable',10006144,0,@Tid,'5.0'); # type=GtkTreeSortable *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTreeSortable *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'sort_column_changed',@Fptr,1,10006142,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkTreeSortable *, gint *, GtkSortType *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'sortable',10006144,0,@Tid,'5.0'); # type=GtkTreeSortable *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'sort_column_id',11516,1,@Tid,'5.0'); # type=gint *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'order',10006145,2,@Tid,'5.0'); # type=GtkSortType *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkTreeSortable *, gint *, GtkSortType *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'get_sort_column_id',@Fptr,2,10006142,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkTreeSortable *, gint, GtkSortType)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'sortable',10006144,0,@Tid,'5.0'); # type=GtkTreeSortable *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'sort_column_id',11400,1,@Tid,'5.0'); # type=gint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'order',10005637,2,@Tid,'5.0'); # type=GtkSortType
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTreeSortable *, gint, GtkSortType)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'set_sort_column_id',@Fptr,3,10006142,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkTreeSortable *, gint, GtkTreeIterCompareFunc, gpointer, GDestroyNotify)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'sortable',10006144,0,@Tid,'5.0'); # type=GtkTreeSortable *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'sort_column_id',11400,1,@Tid,'5.0'); # type=gint
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'sort_func',10006140,2,@Tid,'5.0'); # type=GtkTreeIterCompareFunc
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'user_data',11404,3,@Tid,'5.0'); # type=gpointer
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'destroy',11439,4,@Tid,'5.0'); # type=GDestroyNotify
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTreeSortable *, gint, GtkTreeIterCompareFunc, gpointer, GDestroyNotify)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'set_sort_func',@Fptr,4,10006142,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkTreeSortable *, GtkTreeIterCompareFunc, gpointer, GDestroyNotify)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'sortable',10006144,0,@Tid,'5.0'); # type=GtkTreeSortable *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'sort_func',10006140,1,@Tid,'5.0'); # type=GtkTreeIterCompareFunc
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'user_data',11404,2,@Tid,'5.0'); # type=gpointer
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'destroy',11439,3,@Tid,'5.0'); # type=GDestroyNotify
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkTreeSortable *, GtkTreeIterCompareFunc, gpointer, GDestroyNotify)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'set_default_sort_func',@Fptr,5,10006142,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkTreeSortable *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'sortable',10006144,0,@Tid,'5.0'); # type=GtkTreeSortable *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkTreeSortable *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'has_default_sort_func',@Fptr,6,10006142,'5.0',0); # type=fptr

# _GtkFileChooserButtonClass (expect 6 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10004555,0,10006152,'5.0',0); # type=GtkBoxClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkFileChooserButton *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'fc',10006154,0,@Tid,'5.0'); # type=GtkFileChooserButton *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkFileChooserButton *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'file_set',@Fptr,1,10006152,'5.0',0); # type=fptr
#OOPS! what happened? void|(*__gtk_reserved1)
#OOPS! what happened? void|(*__gtk_reserved2)
#OOPS! what happened? void|(*__gtk_reserved3)
#OOPS! what happened? void|(*__gtk_reserved4)

# _GtkIconViewClass (expect 13 members, found 0 
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'parent_class',10006175,0,10006195,'5.0',0); # type=GtkContainerClass
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkIconView *, GtkTreePath *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'icon_view',10006189,0,@Tid,'5.0'); # type=GtkIconView *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'path',10004487,1,@Tid,'5.0'); # type=GtkTreePath *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkIconView *, GtkTreePath *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'item_activated',@Fptr,1,10006195,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'void (*)(GtkIconView *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',1);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'icon_view',10006189,0,@Tid,'5.0'); # type=GtkIconView *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkIconView *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'selection_changed',@Fptr,2,10006195,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkIconView *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkIconView *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'select_all',@Fptr,3,10006195,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkIconView *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkIconView *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'unselect_all',@Fptr,4,10006195,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkIconView *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkIconView *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'select_cursor_item',@Fptr,5,10006195,'5.0',0); # type=fptr
# making new ftpr: 
# Found previously added ftptr: void (*)(GtkIconView *)
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(GtkIconView *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'toggle_cursor_item',@Fptr,6,10006195,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkIconView *, GtkMovementStep, gint)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'icon_view',10006189,0,@Tid,'5.0'); # type=GtkIconView *
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'step',10005599,1,@Tid,'5.0'); # type=GtkMovementStep
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'count',11400,2,@Tid,'5.0'); # type=gint
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkIconView *, GtkMovementStep, gint)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'move_cursor',@Fptr,7,10006195,'5.0',0); # type=fptr
# making new ftpr: 
INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) VALUES(0,'gboolean (*)(GtkIconView *)','FuncPtr',0,'libgtk-3');
SET @Tid=(select last_insert_id());
INSERT INTO ArchType (ATaid,ATtid,ATsize,ATappearedin,ATbasetype) VALUES(1,@Tid,0,'',11401);
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) VALUES(0,'icon_view',10006189,0,@Tid,'5.0'); # type=GtkIconView *
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='gboolean (*)(GtkIconView *)' AND Tlibrary='libgtk-3');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'activate_cursor_item',@Fptr,8,10006195,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved1',@Fptr,9,10006195,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved2',@Fptr,10,10006195,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved3',@Fptr,11,10006195,'5.0',0); # type=fptr
SET @Fptr=(SELECT DISTINCT Tid FROM Type WHERE Tname='void (*)(void)');
INSERT INTO TypeMember (TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) VALUES(0,'_gtk_reserved4',@Fptr,12,10006195,'5.0',0); # type=fptr

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
