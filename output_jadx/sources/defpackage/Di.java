package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.omoda.launcher.R;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class Di extends Ud implements PopupWindow.OnDismissListener, View.OnKeyListener {
    public final Context b;
    public final Ld c;
    public final Id d;
    public final boolean e;
    public final int f;
    public final int g;
    public final C0067ce h;
    public final R1 i;
    public final V3 j;
    public Vd k;
    public View l;
    public View m;
    public InterfaceC0093de n;
    public ViewTreeObserver o;
    public boolean p;
    public boolean q;
    public int r;
    public int s = 0;
    public boolean t;

    /* JADX WARN: Type inference failed for: r7v1, types: [Ac, ce] */
    public Di(int i, Ld ld, Context context, View view, boolean z) {
        int i2 = 3;
        this.i = new R1(i2, this);
        this.j = new V3(i2, this);
        this.b = context;
        this.c = ld;
        this.e = z;
        this.d = new Id(ld, LayoutInflater.from(context), z, R.layout.abc_popup_menu_item_layout);
        this.g = i;
        Resources resources = context.getResources();
        this.f = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.l = view;
        this.h = new Ac(context, null, i);
        ld.b(this, context);
    }

    @Override // defpackage.InterfaceC0200hi
    public final boolean a() {
        return !this.p && this.h.z.isShowing();
    }

    @Override // defpackage.InterfaceC0118ee
    public final void b(Ld ld, boolean z) {
        if (ld != this.c) {
            return;
        }
        dismiss();
        InterfaceC0093de interfaceC0093de = this.n;
        if (interfaceC0093de != null) {
            interfaceC0093de.b(ld, z);
        }
    }

    @Override // defpackage.InterfaceC0118ee
    public final void c() {
        this.q = false;
        Id id = this.d;
        if (id != null) {
            id.notifyDataSetChanged();
        }
    }

    @Override // defpackage.InterfaceC0118ee
    public final boolean d() {
        return false;
    }

    @Override // defpackage.InterfaceC0200hi
    public final void dismiss() {
        if (a()) {
            this.h.dismiss();
        }
    }

    @Override // defpackage.InterfaceC0200hi
    public final K7 e() {
        return this.h.c;
    }

    @Override // defpackage.InterfaceC0200hi
    public final void h() {
        View view;
        if (a()) {
            return;
        }
        if (this.p || (view = this.l) == null) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
        this.m = view;
        C0067ce c0067ce = this.h;
        c0067ce.z.setOnDismissListener(this);
        c0067ce.p = this;
        c0067ce.y = true;
        c0067ce.z.setFocusable(true);
        View view2 = this.m;
        boolean z = this.o == null;
        ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
        this.o = viewTreeObserver;
        if (z) {
            viewTreeObserver.addOnGlobalLayoutListener(this.i);
        }
        view2.addOnAttachStateChangeListener(this.j);
        c0067ce.o = view2;
        c0067ce.l = this.s;
        boolean z2 = this.q;
        Context context = this.b;
        Id id = this.d;
        if (!z2) {
            this.r = Ud.m(id, context, this.f);
            this.q = true;
        }
        c0067ce.r(this.r);
        c0067ce.z.setInputMethodMode(2);
        Rect rect = this.a;
        c0067ce.x = rect != null ? new Rect(rect) : null;
        c0067ce.h();
        K7 k7 = c0067ce.c;
        k7.setOnKeyListener(this);
        if (this.t) {
            Ld ld = this.c;
            if (ld.m != null) {
                FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(context).inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) k7, false);
                TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
                if (textView != null) {
                    textView.setText(ld.m);
                }
                frameLayout.setEnabled(false);
                k7.addHeaderView(frameLayout, null, false);
            }
        }
        c0067ce.m(id);
        c0067ce.h();
    }

    @Override // defpackage.InterfaceC0118ee
    public final void i(InterfaceC0093de interfaceC0093de) {
        this.n = interfaceC0093de;
    }

    @Override // defpackage.InterfaceC0118ee
    public final boolean j(Ti ti) {
        if (ti.hasVisibleItems()) {
            View view = this.m;
            Xd xd = new Xd(this.g, ti, this.b, view, this.e);
            InterfaceC0093de interfaceC0093de = this.n;
            xd.h = interfaceC0093de;
            Ud ud = xd.i;
            if (ud != null) {
                ud.i(interfaceC0093de);
            }
            boolean u = Ud.u(ti);
            xd.g = u;
            Ud ud2 = xd.i;
            if (ud2 != null) {
                ud2.o(u);
            }
            xd.j = this.k;
            this.k = null;
            this.c.c(false);
            C0067ce c0067ce = this.h;
            int i = c0067ce.f;
            int i2 = c0067ce.i();
            int i3 = this.s;
            View view2 = this.l;
            WeakHashMap weakHashMap = AbstractC0205hn.a;
            if ((Gravity.getAbsoluteGravity(i3, Sm.d(view2)) & 7) == 5) {
                i += this.l.getWidth();
            }
            if (!xd.b()) {
                if (xd.e != null) {
                    xd.d(i, i2, true, true);
                }
            }
            InterfaceC0093de interfaceC0093de2 = this.n;
            if (interfaceC0093de2 != null) {
                interfaceC0093de2.p(ti);
            }
            return true;
        }
        return false;
    }

    @Override // defpackage.Ud
    public final void l(Ld ld) {
    }

    @Override // defpackage.Ud
    public final void n(View view) {
        this.l = view;
    }

    @Override // defpackage.Ud
    public final void o(boolean z) {
        this.d.c = z;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.p = true;
        this.c.c(true);
        ViewTreeObserver viewTreeObserver = this.o;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.o = this.m.getViewTreeObserver();
            }
            this.o.removeGlobalOnLayoutListener(this.i);
            this.o = null;
        }
        this.m.removeOnAttachStateChangeListener(this.j);
        Vd vd = this.k;
        if (vd != null) {
            vd.onDismiss();
        }
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // defpackage.Ud
    public final void p(int i) {
        this.s = i;
    }

    @Override // defpackage.Ud
    public final void q(int i) {
        this.h.f = i;
    }

    @Override // defpackage.Ud
    public final void r(PopupWindow.OnDismissListener onDismissListener) {
        this.k = (Vd) onDismissListener;
    }

    @Override // defpackage.Ud
    public final void s(boolean z) {
        this.t = z;
    }

    @Override // defpackage.Ud
    public final void t(int i) {
        this.h.k(i);
    }
}
