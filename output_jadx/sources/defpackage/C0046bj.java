package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.SubMenu;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: bj, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0046bj extends MenuInflater {
    public static final Class[] e;
    public static final Class[] f;
    public final Object[] a;
    public final Object[] b;
    public final Context c;
    public Object d;

    static {
        Class[] clsArr = {Context.class};
        e = clsArr;
        f = clsArr;
    }

    public C0046bj(Context context) {
        super(context);
        this.c = context;
        Object[] objArr = {context};
        this.a = objArr;
        this.b = objArr;
    }

    public static Object a(Object obj) {
        return (!(obj instanceof Activity) && (obj instanceof ContextWrapper)) ? a(((ContextWrapper) obj).getBaseContext()) : obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r4v60 */
    public final void b(XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Menu menu) {
        ?? r4;
        int i;
        boolean z;
        ColorStateList colorStateList;
        int resourceId;
        C0020aj c0020aj = new C0020aj(this, menu);
        int eventType = xmlResourceParser.getEventType();
        while (true) {
            r4 = 1;
            i = 2;
            if (eventType == 2) {
                String name = xmlResourceParser.getName();
                if (!name.equals("menu")) {
                    throw new RuntimeException("Expecting menu, got ".concat(name));
                }
                eventType = xmlResourceParser.next();
            } else {
                eventType = xmlResourceParser.next();
                if (eventType == 1) {
                    break;
                }
            }
        }
        boolean z2 = false;
        boolean z3 = false;
        String str = null;
        while (!z2) {
            if (eventType == r4) {
                throw new RuntimeException("Unexpected end of document");
            }
            if (eventType != i) {
                if (eventType == 3) {
                    String name2 = xmlResourceParser.getName();
                    if (z3 && name2.equals(str)) {
                        z = r4;
                        z3 = false;
                        str = null;
                        eventType = xmlResourceParser.next();
                        r4 = z;
                        i = 2;
                        z3 = z3;
                    } else if (name2.equals("group")) {
                        c0020aj.b = 0;
                        c0020aj.c = 0;
                        c0020aj.d = 0;
                        c0020aj.e = 0;
                        c0020aj.f = r4;
                        c0020aj.g = r4;
                    } else if (name2.equals("item")) {
                        if (!c0020aj.h) {
                            Qd qd = c0020aj.z;
                            if (qd == null || !qd.a.hasSubMenu()) {
                                c0020aj.h = r4;
                                c0020aj.b(c0020aj.a.add(c0020aj.b, c0020aj.i, c0020aj.j, c0020aj.k));
                            } else {
                                c0020aj.h = r4;
                                c0020aj.b(c0020aj.a.addSubMenu(c0020aj.b, c0020aj.i, c0020aj.j, c0020aj.k).getItem());
                            }
                        }
                    } else if (name2.equals("menu")) {
                        z = r4;
                        z2 = z;
                    }
                }
                z = r4;
            } else {
                if (!z3) {
                    String name3 = xmlResourceParser.getName();
                    boolean equals = name3.equals("group");
                    C0046bj c0046bj = c0020aj.E;
                    if (equals) {
                        TypedArray obtainStyledAttributes = c0046bj.c.obtainStyledAttributes(attributeSet, Zf.p);
                        c0020aj.b = obtainStyledAttributes.getResourceId(r4, 0);
                        c0020aj.c = obtainStyledAttributes.getInt(3, 0);
                        c0020aj.d = obtainStyledAttributes.getInt(4, 0);
                        c0020aj.e = obtainStyledAttributes.getInt(5, 0);
                        c0020aj.f = obtainStyledAttributes.getBoolean(2, r4);
                        c0020aj.g = obtainStyledAttributes.getBoolean(0, r4);
                        obtainStyledAttributes.recycle();
                    } else {
                        if (name3.equals("item")) {
                            Context context = c0046bj.c;
                            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, Zf.q);
                            c0020aj.i = obtainStyledAttributes2.getResourceId(2, 0);
                            c0020aj.j = (obtainStyledAttributes2.getInt(5, c0020aj.c) & (-65536)) | (obtainStyledAttributes2.getInt(6, c0020aj.d) & 65535);
                            c0020aj.k = obtainStyledAttributes2.getText(7);
                            c0020aj.l = obtainStyledAttributes2.getText(8);
                            c0020aj.m = obtainStyledAttributes2.getResourceId(0, 0);
                            String string = obtainStyledAttributes2.getString(9);
                            c0020aj.n = string == null ? (char) 0 : string.charAt(0);
                            c0020aj.o = obtainStyledAttributes2.getInt(16, 4096);
                            String string2 = obtainStyledAttributes2.getString(10);
                            c0020aj.p = string2 == null ? (char) 0 : string2.charAt(0);
                            c0020aj.q = obtainStyledAttributes2.getInt(20, 4096);
                            if (obtainStyledAttributes2.hasValue(11)) {
                                c0020aj.r = obtainStyledAttributes2.getBoolean(11, false) ? 1 : 0;
                            } else {
                                c0020aj.r = c0020aj.e;
                            }
                            c0020aj.s = obtainStyledAttributes2.getBoolean(3, false);
                            c0020aj.t = obtainStyledAttributes2.getBoolean(4, c0020aj.f);
                            c0020aj.u = obtainStyledAttributes2.getBoolean(1, c0020aj.g);
                            c0020aj.v = obtainStyledAttributes2.getInt(21, -1);
                            c0020aj.y = obtainStyledAttributes2.getString(12);
                            c0020aj.w = obtainStyledAttributes2.getResourceId(13, 0);
                            c0020aj.x = obtainStyledAttributes2.getString(15);
                            String string3 = obtainStyledAttributes2.getString(14);
                            boolean z4 = string3 != null;
                            if (z4 && c0020aj.w == 0 && c0020aj.x == null) {
                                c0020aj.z = (Qd) c0020aj.a(string3, f, c0046bj.b);
                            } else {
                                if (z4) {
                                    Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                                }
                                c0020aj.z = null;
                            }
                            c0020aj.A = obtainStyledAttributes2.getText(17);
                            c0020aj.B = obtainStyledAttributes2.getText(22);
                            if (obtainStyledAttributes2.hasValue(19)) {
                                c0020aj.D = D7.b(obtainStyledAttributes2.getInt(19, -1), c0020aj.D);
                            } else {
                                c0020aj.D = null;
                            }
                            if (obtainStyledAttributes2.hasValue(18)) {
                                if (!obtainStyledAttributes2.hasValue(18) || (resourceId = obtainStyledAttributes2.getResourceId(18, 0)) == 0 || (colorStateList = AbstractC0152fm.m(context, resourceId)) == null) {
                                    colorStateList = obtainStyledAttributes2.getColorStateList(18);
                                }
                                c0020aj.C = colorStateList;
                            } else {
                                c0020aj.C = null;
                            }
                            obtainStyledAttributes2.recycle();
                            c0020aj.h = false;
                            z = true;
                        } else if (name3.equals("menu")) {
                            z = true;
                            c0020aj.h = true;
                            SubMenu addSubMenu = c0020aj.a.addSubMenu(c0020aj.b, c0020aj.i, c0020aj.j, c0020aj.k);
                            c0020aj.b(addSubMenu.getItem());
                            b(xmlResourceParser, attributeSet, addSubMenu);
                        } else {
                            z = true;
                            str = name3;
                            z3 = true;
                        }
                        eventType = xmlResourceParser.next();
                        r4 = z;
                        i = 2;
                        z3 = z3;
                    }
                }
                z = r4;
            }
            eventType = xmlResourceParser.next();
            r4 = z;
            i = 2;
            z3 = z3;
        }
    }

    @Override // android.view.MenuInflater
    public final void inflate(int i, Menu menu) {
        if (!(menu instanceof Ld)) {
            super.inflate(i, menu);
            return;
        }
        XmlResourceParser xmlResourceParser = null;
        try {
            try {
                try {
                    xmlResourceParser = this.c.getResources().getLayout(i);
                    b(xmlResourceParser, Xml.asAttributeSet(xmlResourceParser), menu);
                    xmlResourceParser.close();
                } catch (IOException e2) {
                    throw new InflateException("Error inflating menu XML", e2);
                }
            } catch (XmlPullParserException e3) {
                throw new InflateException("Error inflating menu XML", e3);
            }
        } catch (Throwable th) {
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
            throw th;
        }
    }
}
