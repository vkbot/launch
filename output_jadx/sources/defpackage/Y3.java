package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import com.omoda.launcher.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class Y3 extends Ud implements View.OnKeyListener, PopupWindow.OnDismissListener {
    public final Context b;
    public final int c;
    public final int d;
    public final boolean e;
    public final Handler f;
    public View n;
    public View o;
    public int p;
    public boolean q;
    public boolean r;
    public int s;
    public int t;
    public boolean v;
    public InterfaceC0093de w;
    public ViewTreeObserver x;
    public Vd y;
    public boolean z;
    public final ArrayList g = new ArrayList();
    public final ArrayList h = new ArrayList();
    public final R1 i = new R1(2, this);
    public final V3 j = new V3(0, this);
    public final L k = new L(3, this);
    public int l = 0;
    public int m = 0;
    public boolean u = false;

    public Y3(Context context, View view, int i, boolean z) {
        this.b = context;
        this.n = view;
        this.d = i;
        this.e = z;
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        this.p = Sm.d(view) != 1 ? 1 : 0;
        Resources resources = context.getResources();
        this.c = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.f = new Handler();
    }

    @Override // defpackage.InterfaceC0200hi
    public final boolean a() {
        ArrayList arrayList = this.h;
        return arrayList.size() > 0 && ((X3) arrayList.get(0)).a.z.isShowing();
    }

    @Override // defpackage.InterfaceC0118ee
    public final void b(Ld ld, boolean z) {
        ArrayList arrayList = this.h;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            } else if (ld == ((X3) arrayList.get(i)).b) {
                break;
            } else {
                i++;
            }
        }
        if (i < 0) {
            return;
        }
        int i2 = i + 1;
        if (i2 < arrayList.size()) {
            ((X3) arrayList.get(i2)).b.c(false);
        }
        X3 x3 = (X3) arrayList.remove(i);
        x3.b.r(this);
        boolean z2 = this.z;
        C0067ce c0067ce = x3.a;
        if (z2) {
            Yd.b(c0067ce.z, null);
            c0067ce.z.setAnimationStyle(0);
        }
        c0067ce.dismiss();
        int size2 = arrayList.size();
        if (size2 > 0) {
            this.p = ((X3) arrayList.get(size2 - 1)).c;
        } else {
            View view = this.n;
            WeakHashMap weakHashMap = AbstractC0205hn.a;
            this.p = Sm.d(view) == 1 ? 0 : 1;
        }
        if (size2 != 0) {
            if (z) {
                ((X3) arrayList.get(0)).b.c(false);
                return;
            }
            return;
        }
        dismiss();
        InterfaceC0093de interfaceC0093de = this.w;
        if (interfaceC0093de != null) {
            interfaceC0093de.b(ld, true);
        }
        ViewTreeObserver viewTreeObserver = this.x;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.x.removeGlobalOnLayoutListener(this.i);
            }
            this.x = null;
        }
        this.o.removeOnAttachStateChangeListener(this.j);
        this.y.onDismiss();
    }

    @Override // defpackage.InterfaceC0118ee
    public final void c() {
        Iterator it = this.h.iterator();
        while (it.hasNext()) {
            ListAdapter adapter = ((X3) it.next()).a.c.getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                adapter = ((HeaderViewListAdapter) adapter).getWrappedAdapter();
            }
            ((Id) adapter).notifyDataSetChanged();
        }
    }

    @Override // defpackage.InterfaceC0118ee
    public final boolean d() {
        return false;
    }

    @Override // defpackage.InterfaceC0200hi
    public final void dismiss() {
        ArrayList arrayList = this.h;
        int size = arrayList.size();
        if (size > 0) {
            X3[] x3Arr = (X3[]) arrayList.toArray(new X3[size]);
            for (int i = size - 1; i >= 0; i--) {
                X3 x3 = x3Arr[i];
                if (x3.a.z.isShowing()) {
                    x3.a.dismiss();
                }
            }
        }
    }

    @Override // defpackage.InterfaceC0200hi
    public final K7 e() {
        ArrayList arrayList = this.h;
        if (arrayList.isEmpty()) {
            return null;
        }
        return ((X3) arrayList.get(arrayList.size() - 1)).a.c;
    }

    @Override // defpackage.InterfaceC0200hi
    public final void h() {
        if (a()) {
            return;
        }
        ArrayList arrayList = this.g;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            v((Ld) it.next());
        }
        arrayList.clear();
        View view = this.n;
        this.o = view;
        if (view != null) {
            boolean z = this.x == null;
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            this.x = viewTreeObserver;
            if (z) {
                viewTreeObserver.addOnGlobalLayoutListener(this.i);
            }
            this.o.addOnAttachStateChangeListener(this.j);
        }
    }

    @Override // defpackage.InterfaceC0118ee
    public final void i(InterfaceC0093de interfaceC0093de) {
        this.w = interfaceC0093de;
    }

    @Override // defpackage.InterfaceC0118ee
    public final boolean j(Ti ti) {
        Iterator it = this.h.iterator();
        while (it.hasNext()) {
            X3 x3 = (X3) it.next();
            if (ti == x3.b) {
                x3.a.c.requestFocus();
                return true;
            }
        }
        if (!ti.hasVisibleItems()) {
            return false;
        }
        l(ti);
        InterfaceC0093de interfaceC0093de = this.w;
        if (interfaceC0093de != null) {
            interfaceC0093de.p(ti);
        }
        return true;
    }

    @Override // defpackage.Ud
    public final void l(Ld ld) {
        ld.b(this, this.b);
        if (a()) {
            v(ld);
        } else {
            this.g.add(ld);
        }
    }

    @Override // defpackage.Ud
    public final void n(View view) {
        if (this.n != view) {
            this.n = view;
            int i = this.l;
            WeakHashMap weakHashMap = AbstractC0205hn.a;
            this.m = Gravity.getAbsoluteGravity(i, Sm.d(view));
        }
    }

    @Override // defpackage.Ud
    public final void o(boolean z) {
        this.u = z;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        X3 x3;
        ArrayList arrayList = this.h;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                x3 = null;
                break;
            }
            x3 = (X3) arrayList.get(i);
            if (!x3.a.z.isShowing()) {
                break;
            } else {
                i++;
            }
        }
        if (x3 != null) {
            x3.b.c(false);
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
        if (this.l != i) {
            this.l = i;
            View view = this.n;
            WeakHashMap weakHashMap = AbstractC0205hn.a;
            this.m = Gravity.getAbsoluteGravity(i, Sm.d(view));
        }
    }

    @Override // defpackage.Ud
    public final void q(int i) {
        this.q = true;
        this.s = i;
    }

    @Override // defpackage.Ud
    public final void r(PopupWindow.OnDismissListener onDismissListener) {
        this.y = (Vd) onDismissListener;
    }

    @Override // defpackage.Ud
    public final void s(boolean z) {
        this.v = z;
    }

    @Override // defpackage.Ud
    public final void t(int i) {
        this.r = true;
        this.t = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0123, code lost:
    
        if (((r8.getWidth() + r9[0]) + r5) > r11.right) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0125, code lost:
    
        r9 = 0;
        r8 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0128, code lost:
    
        r8 = 1;
        r9 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x012e, code lost:
    
        if ((r9[0] - r5) < 0) goto L51;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x015e  */
    /* JADX WARN: Type inference failed for: r7v0, types: [Ac, ce] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void v(defpackage.Ld r17) {
        /*
            Method dump skipped, instructions count: 442
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.Y3.v(Ld):void");
    }
}
