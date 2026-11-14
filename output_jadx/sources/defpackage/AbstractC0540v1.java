package defpackage;

import android.content.Context;
import android.content.IntentFilter;
import android.view.MenuItem;
import java.util.HashSet;

/* renamed from: v1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0540v1 {
    public Object a;
    public Object b;

    public AbstractC0540v1(Context context) {
        this.a = context;
    }

    public void c() {
        C0515u1 c0515u1 = (C0515u1) this.a;
        if (c0515u1 != null) {
            try {
                ((LayoutInflaterFactory2C0615y1) this.b).k.unregisterReceiver(c0515u1);
            } catch (IllegalArgumentException unused) {
            }
            this.a = null;
        }
    }

    public void d() {
        C0557vi c0557vi = (C0557vi) this.a;
        HashSet hashSet = c0557vi.e;
        if (hashSet.remove((P3) this.b) && hashSet.isEmpty()) {
            c0557vi.b();
        }
    }

    public abstract IntentFilter e();

    public abstract int f();

    public MenuItem g(MenuItem menuItem) {
        if (!(menuItem instanceof InterfaceMenuItemC0072cj)) {
            return menuItem;
        }
        InterfaceMenuItemC0072cj interfaceMenuItemC0072cj = (InterfaceMenuItemC0072cj) menuItem;
        if (((C0277ki) this.b) == null) {
            this.b = new C0277ki();
        }
        MenuItem menuItem2 = (MenuItem) ((C0277ki) this.b).getOrDefault(interfaceMenuItemC0072cj, null);
        if (menuItem2 != null) {
            return menuItem2;
        }
        Td td = new Td((Context) this.a, interfaceMenuItemC0072cj);
        ((C0277ki) this.b).put(interfaceMenuItemC0072cj, td);
        return td;
    }

    public abstract void h();

    public void i() {
        c();
        IntentFilter e = e();
        if (e.countActions() == 0) {
            return;
        }
        if (((C0515u1) this.a) == null) {
            this.a = new C0515u1(0, this);
        }
        ((LayoutInflaterFactory2C0615y1) this.b).k.registerReceiver((C0515u1) this.a, e);
    }

    public AbstractC0540v1(C0557vi c0557vi, P3 p3) {
        this.a = c0557vi;
        this.b = p3;
    }

    public AbstractC0540v1(LayoutInflaterFactory2C0615y1 layoutInflaterFactory2C0615y1) {
        this.b = layoutInflaterFactory2C0615y1;
    }
}
