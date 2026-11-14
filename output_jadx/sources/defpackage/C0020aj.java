package defpackage;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.util.Log;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

/* renamed from: aj, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0020aj {
    public CharSequence A;
    public CharSequence B;
    public final /* synthetic */ C0046bj E;
    public final Menu a;
    public boolean h;
    public int i;
    public int j;
    public CharSequence k;
    public CharSequence l;
    public int m;
    public char n;
    public int o;
    public char p;
    public int q;
    public int r;
    public boolean s;
    public boolean t;
    public boolean u;
    public int v;
    public int w;
    public String x;
    public String y;
    public Qd z;
    public ColorStateList C = null;
    public PorterDuff.Mode D = null;
    public int b = 0;
    public int c = 0;
    public int d = 0;
    public int e = 0;
    public boolean f = true;
    public boolean g = true;

    public C0020aj(C0046bj c0046bj, Menu menu) {
        this.E = c0046bj;
        this.a = menu;
    }

    public final Object a(String str, Class[] clsArr, Object[] objArr) {
        try {
            Constructor<?> constructor = Class.forName(str, false, this.E.c.getClassLoader()).getConstructor(clsArr);
            constructor.setAccessible(true);
            return constructor.newInstance(objArr);
        } catch (Exception e) {
            Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e);
            return null;
        }
    }

    public final void b(MenuItem menuItem) {
        boolean z = false;
        menuItem.setChecked(this.s).setVisible(this.t).setEnabled(this.u).setCheckable(this.r >= 1).setTitleCondensed(this.l).setIcon(this.m);
        int i = this.v;
        if (i >= 0) {
            menuItem.setShowAsAction(i);
        }
        String str = this.y;
        C0046bj c0046bj = this.E;
        if (str != null) {
            if (c0046bj.c.isRestricted()) {
                throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
            }
            if (c0046bj.d == null) {
                c0046bj.d = C0046bj.a(c0046bj.c);
            }
            Object obj = c0046bj.d;
            String str2 = this.y;
            Zi zi = new Zi();
            zi.b = obj;
            Class<?> cls = obj.getClass();
            try {
                zi.c = cls.getMethod(str2, Zi.d);
                menuItem.setOnMenuItemClickListener(zi);
            } catch (Exception e) {
                StringBuilder l = AbstractC0407pi.l("Couldn't resolve menu item onClick handler ", str2, " in class ");
                l.append(cls.getName());
                InflateException inflateException = new InflateException(l.toString());
                inflateException.initCause(e);
                throw inflateException;
            }
        }
        if (this.r >= 2) {
            if (menuItem instanceof Pd) {
                Pd pd = (Pd) menuItem;
                pd.x = (pd.x & (-5)) | 4;
            } else if (menuItem instanceof Td) {
                Td td = (Td) menuItem;
                try {
                    Method method = td.d;
                    InterfaceMenuItemC0072cj interfaceMenuItemC0072cj = td.c;
                    if (method == null) {
                        td.d = interfaceMenuItemC0072cj.getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
                    }
                    td.d.invoke(interfaceMenuItemC0072cj, Boolean.TRUE);
                } catch (Exception e2) {
                    Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", e2);
                }
            }
        }
        String str3 = this.x;
        if (str3 != null) {
            menuItem.setActionView((View) a(str3, C0046bj.e, c0046bj.a));
            z = true;
        }
        int i2 = this.w;
        if (i2 > 0) {
            if (z) {
                Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
            } else {
                menuItem.setActionView(i2);
            }
        }
        Qd qd = this.z;
        if (qd != null) {
            if (menuItem instanceof InterfaceMenuItemC0072cj) {
                ((InterfaceMenuItemC0072cj) menuItem).a(qd);
            } else {
                Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
            }
        }
        CharSequence charSequence = this.A;
        boolean z2 = menuItem instanceof InterfaceMenuItemC0072cj;
        if (z2) {
            ((InterfaceMenuItemC0072cj) menuItem).setContentDescription(charSequence);
        } else {
            Nd.h(menuItem, charSequence);
        }
        CharSequence charSequence2 = this.B;
        if (z2) {
            ((InterfaceMenuItemC0072cj) menuItem).setTooltipText(charSequence2);
        } else {
            Nd.m(menuItem, charSequence2);
        }
        char c = this.n;
        int i3 = this.o;
        if (z2) {
            ((InterfaceMenuItemC0072cj) menuItem).setAlphabeticShortcut(c, i3);
        } else {
            Nd.g(menuItem, c, i3);
        }
        char c2 = this.p;
        int i4 = this.q;
        if (z2) {
            ((InterfaceMenuItemC0072cj) menuItem).setNumericShortcut(c2, i4);
        } else {
            Nd.k(menuItem, c2, i4);
        }
        PorterDuff.Mode mode = this.D;
        if (mode != null) {
            if (z2) {
                ((InterfaceMenuItemC0072cj) menuItem).setIconTintMode(mode);
            } else {
                Nd.j(menuItem, mode);
            }
        }
        ColorStateList colorStateList = this.C;
        if (colorStateList != null) {
            if (z2) {
                ((InterfaceMenuItemC0072cj) menuItem).setIconTintList(colorStateList);
            } else {
                Nd.i(menuItem, colorStateList);
            }
        }
    }
}
