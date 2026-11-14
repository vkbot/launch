package defpackage;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.ActionMenuView;
import com.omoda.launcher.R;
import java.util.ArrayList;

/* renamed from: l0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0285l0 implements InterfaceC0118ee {
    public final Context a;
    public Context b;
    public Ld c;
    public final LayoutInflater d;
    public InterfaceC0093de e;
    public InterfaceC0170ge h;
    public C0259k0 i;
    public Drawable j;
    public boolean k;
    public boolean l;
    public boolean m;
    public int n;
    public int o;
    public int p;
    public boolean q;
    public C0182h0 s;
    public C0182h0 t;
    public RunnableC0233j0 u;
    public C0208i0 v;
    public final int f = R.layout.abc_action_menu_layout;
    public final int g = R.layout.abc_action_menu_item_layout;
    public final SparseBooleanArray r = new SparseBooleanArray();
    public final L w = new L(1, this);

    public C0285l0(Context context) {
        this.a = context;
        this.d = LayoutInflater.from(context);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r5v4, types: [fe] */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    public final View a(Pd pd, View view, ViewGroup viewGroup) {
        View actionView = pd.getActionView();
        if (actionView == null || pd.e()) {
            ActionMenuItemView actionMenuItemView = view instanceof InterfaceC0144fe ? (InterfaceC0144fe) view : (InterfaceC0144fe) this.d.inflate(this.g, viewGroup, false);
            actionMenuItemView.d(pd);
            ActionMenuItemView actionMenuItemView2 = actionMenuItemView;
            actionMenuItemView2.setItemInvoker((ActionMenuView) this.h);
            if (this.v == null) {
                this.v = new C0208i0(this);
            }
            actionMenuItemView2.setPopupCallback(this.v);
            actionView = actionMenuItemView;
        }
        actionView.setVisibility(pd.C ? 8 : 0);
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        ((ActionMenuView) viewGroup).getClass();
        if (!(layoutParams instanceof C0337n0)) {
            actionView.setLayoutParams(ActionMenuView.m(layoutParams));
        }
        return actionView;
    }

    @Override // defpackage.InterfaceC0118ee
    public final void b(Ld ld, boolean z) {
        e();
        C0182h0 c0182h0 = this.t;
        if (c0182h0 != null && c0182h0.b()) {
            c0182h0.i.dismiss();
        }
        InterfaceC0093de interfaceC0093de = this.e;
        if (interfaceC0093de != null) {
            interfaceC0093de.b(ld, z);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.InterfaceC0118ee
    public final void c() {
        int i;
        ViewGroup viewGroup = (ViewGroup) this.h;
        ArrayList arrayList = null;
        boolean z = false;
        if (viewGroup != null) {
            Ld ld = this.c;
            if (ld != null) {
                ld.i();
                ArrayList l = this.c.l();
                int size = l.size();
                i = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    Pd pd = (Pd) l.get(i2);
                    if (pd.f()) {
                        View childAt = viewGroup.getChildAt(i);
                        Pd itemData = childAt instanceof InterfaceC0144fe ? ((InterfaceC0144fe) childAt).getItemData() : null;
                        View a = a(pd, childAt, viewGroup);
                        if (pd != itemData) {
                            a.setPressed(false);
                            a.jumpDrawablesToCurrentState();
                        }
                        if (a != childAt) {
                            ViewGroup viewGroup2 = (ViewGroup) a.getParent();
                            if (viewGroup2 != null) {
                                viewGroup2.removeView(a);
                            }
                            ((ViewGroup) this.h).addView(a, i);
                        }
                        i++;
                    }
                }
            } else {
                i = 0;
            }
            while (i < viewGroup.getChildCount()) {
                if (viewGroup.getChildAt(i) == this.i) {
                    i++;
                } else {
                    viewGroup.removeViewAt(i);
                }
            }
        }
        ((View) this.h).requestLayout();
        Ld ld2 = this.c;
        if (ld2 != null) {
            ld2.i();
            ArrayList arrayList2 = ld2.i;
            int size2 = arrayList2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                Qd qd = ((Pd) arrayList2.get(i3)).A;
            }
        }
        Ld ld3 = this.c;
        if (ld3 != null) {
            ld3.i();
            arrayList = ld3.j;
        }
        if (this.l && arrayList != null) {
            int size3 = arrayList.size();
            if (size3 == 1) {
                z = !((Pd) arrayList.get(0)).C;
            } else if (size3 > 0) {
                z = true;
            }
        }
        if (z) {
            if (this.i == null) {
                this.i = new C0259k0(this, this.a);
            }
            ViewGroup viewGroup3 = (ViewGroup) this.i.getParent();
            if (viewGroup3 != this.h) {
                if (viewGroup3 != null) {
                    viewGroup3.removeView(this.i);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.h;
                C0259k0 c0259k0 = this.i;
                actionMenuView.getClass();
                C0337n0 l2 = ActionMenuView.l();
                l2.a = true;
                actionMenuView.addView(c0259k0, l2);
            }
        } else {
            C0259k0 c0259k02 = this.i;
            if (c0259k02 != null) {
                Object parent = c0259k02.getParent();
                Object obj = this.h;
                if (parent == obj) {
                    ((ViewGroup) obj).removeView(this.i);
                }
            }
        }
        ((ActionMenuView) this.h).setOverflowReserved(this.l);
    }

    @Override // defpackage.InterfaceC0118ee
    public final boolean d() {
        int i;
        ArrayList arrayList;
        int i2;
        boolean z;
        Ld ld = this.c;
        if (ld != null) {
            arrayList = ld.l();
            i = arrayList.size();
        } else {
            i = 0;
            arrayList = null;
        }
        int i3 = this.p;
        int i4 = this.o;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) this.h;
        int i5 = 0;
        boolean z2 = false;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            i2 = 2;
            z = true;
            if (i5 >= i) {
                break;
            }
            Pd pd = (Pd) arrayList.get(i5);
            int i8 = pd.y;
            if ((i8 & 2) == 2) {
                i6++;
            } else if ((i8 & 1) == 1) {
                i7++;
            } else {
                z2 = true;
            }
            if (this.q && pd.C) {
                i3 = 0;
            }
            i5++;
        }
        if (this.l && (z2 || i7 + i6 > i3)) {
            i3--;
        }
        int i9 = i3 - i6;
        SparseBooleanArray sparseBooleanArray = this.r;
        sparseBooleanArray.clear();
        int i10 = 0;
        int i11 = 0;
        while (i10 < i) {
            Pd pd2 = (Pd) arrayList.get(i10);
            int i12 = pd2.y;
            boolean z3 = (i12 & 2) == i2 ? z : false;
            int i13 = pd2.b;
            if (z3) {
                View a = a(pd2, null, viewGroup);
                a.measure(makeMeasureSpec, makeMeasureSpec);
                int measuredWidth = a.getMeasuredWidth();
                i4 -= measuredWidth;
                if (i11 == 0) {
                    i11 = measuredWidth;
                }
                if (i13 != 0) {
                    sparseBooleanArray.put(i13, z);
                }
                pd2.g(z);
            } else if ((i12 & 1) == z) {
                boolean z4 = sparseBooleanArray.get(i13);
                boolean z5 = ((i9 > 0 || z4) && i4 > 0) ? z : false;
                if (z5) {
                    View a2 = a(pd2, null, viewGroup);
                    a2.measure(makeMeasureSpec, makeMeasureSpec);
                    int measuredWidth2 = a2.getMeasuredWidth();
                    i4 -= measuredWidth2;
                    if (i11 == 0) {
                        i11 = measuredWidth2;
                    }
                    z5 &= i4 + i11 > 0;
                }
                if (z5 && i13 != 0) {
                    sparseBooleanArray.put(i13, true);
                } else if (z4) {
                    sparseBooleanArray.put(i13, false);
                    for (int i14 = 0; i14 < i10; i14++) {
                        Pd pd3 = (Pd) arrayList.get(i14);
                        if (pd3.b == i13) {
                            if (pd3.f()) {
                                i9++;
                            }
                            pd3.g(false);
                        }
                    }
                }
                if (z5) {
                    i9--;
                }
                pd2.g(z5);
            } else {
                pd2.g(false);
                i10++;
                i2 = 2;
                z = true;
            }
            i10++;
            i2 = 2;
            z = true;
        }
        return z;
    }

    public final boolean e() {
        Object obj;
        RunnableC0233j0 runnableC0233j0 = this.u;
        if (runnableC0233j0 != null && (obj = this.h) != null) {
            ((View) obj).removeCallbacks(runnableC0233j0);
            this.u = null;
            return true;
        }
        C0182h0 c0182h0 = this.s;
        if (c0182h0 == null) {
            return false;
        }
        if (c0182h0.b()) {
            c0182h0.i.dismiss();
        }
        return true;
    }

    @Override // defpackage.InterfaceC0118ee
    public final void f(Context context, Ld ld) {
        this.b = context;
        LayoutInflater.from(context);
        this.c = ld;
        Resources resources = context.getResources();
        if (!this.m) {
            this.l = true;
        }
        int i = 2;
        this.n = context.getResources().getDisplayMetrics().widthPixels / 2;
        Configuration configuration = context.getResources().getConfiguration();
        int i2 = configuration.screenWidthDp;
        int i3 = configuration.screenHeightDp;
        if (configuration.smallestScreenWidthDp > 600 || i2 > 600 || ((i2 > 960 && i3 > 720) || (i2 > 720 && i3 > 960))) {
            i = 5;
        } else if (i2 >= 500 || ((i2 > 640 && i3 > 480) || (i2 > 480 && i3 > 640))) {
            i = 4;
        } else if (i2 >= 360) {
            i = 3;
        }
        this.p = i;
        int i4 = this.n;
        if (this.l) {
            if (this.i == null) {
                C0259k0 c0259k0 = new C0259k0(this, this.a);
                this.i = c0259k0;
                if (this.k) {
                    c0259k0.setImageDrawable(this.j);
                    this.j = null;
                    this.k = false;
                }
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.i.measure(makeMeasureSpec, makeMeasureSpec);
            }
            i4 -= this.i.getMeasuredWidth();
        } else {
            this.i = null;
        }
        this.o = i4;
        float f = resources.getDisplayMetrics().density;
    }

    @Override // defpackage.InterfaceC0118ee
    public final boolean g(Pd pd) {
        return false;
    }

    public final boolean h() {
        C0182h0 c0182h0 = this.s;
        return c0182h0 != null && c0182h0.b();
    }

    @Override // defpackage.InterfaceC0118ee
    public final void i(InterfaceC0093de interfaceC0093de) {
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.InterfaceC0118ee
    public final boolean j(Ti ti) {
        boolean z;
        if (!ti.hasVisibleItems()) {
            return false;
        }
        Ti ti2 = ti;
        while (true) {
            Ld ld = ti2.z;
            if (ld == this.c) {
                break;
            }
            ti2 = (Ti) ld;
        }
        ViewGroup viewGroup = (ViewGroup) this.h;
        View view = null;
        if (viewGroup != null) {
            int childCount = viewGroup.getChildCount();
            int i = 0;
            while (true) {
                if (i >= childCount) {
                    break;
                }
                View childAt = viewGroup.getChildAt(i);
                if ((childAt instanceof InterfaceC0144fe) && ((InterfaceC0144fe) childAt).getItemData() == ti2.A) {
                    view = childAt;
                    break;
                }
                i++;
            }
        }
        if (view == null) {
            return false;
        }
        ti.A.getClass();
        int size = ti.f.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                z = false;
                break;
            }
            MenuItem item = ti.getItem(i2);
            if (item.isVisible() && item.getIcon() != null) {
                z = true;
                break;
            }
            i2++;
        }
        C0182h0 c0182h0 = new C0182h0(this, this.b, ti, view);
        this.t = c0182h0;
        c0182h0.g = z;
        Ud ud = c0182h0.i;
        if (ud != null) {
            ud.o(z);
        }
        C0182h0 c0182h02 = this.t;
        if (!c0182h02.b()) {
            if (c0182h02.e == null) {
                throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
            }
            c0182h02.d(0, 0, false, false);
        }
        InterfaceC0093de interfaceC0093de = this.e;
        if (interfaceC0093de != null) {
            interfaceC0093de.p(ti);
        }
        return true;
    }

    @Override // defpackage.InterfaceC0118ee
    public final boolean k(Pd pd) {
        return false;
    }

    public final boolean l() {
        Ld ld;
        if (!this.l || h() || (ld = this.c) == null || this.h == null || this.u != null) {
            return false;
        }
        ld.i();
        if (ld.j.isEmpty()) {
            return false;
        }
        RunnableC0233j0 runnableC0233j0 = new RunnableC0233j0(this, 0, new C0182h0(this, this.b, this.c, this.i));
        this.u = runnableC0233j0;
        ((View) this.h).post(runnableC0233j0);
        return true;
    }
}
