package defpackage;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.Toolbar;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* renamed from: eo, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0128eo extends AbstractC0152fm implements InterfaceC0053c0 {
    public static final AccelerateInterpolator O = new AccelerateInterpolator();
    public static final DecelerateInterpolator P = new DecelerateInterpolator();
    public K1 A;
    public boolean B;
    public final ArrayList C;
    public int D;
    public boolean E;
    public boolean F;
    public boolean G;
    public boolean H;
    public C0612xn I;
    public boolean J;
    public boolean K;
    public final C0025ao L;
    public final C0025ao M;
    public final C0051bo N;
    public Context q;
    public Context r;
    public ActionBarOverlayLayout s;
    public ActionBarContainer t;
    public E6 u;
    public ActionBarContextView v;
    public final View w;
    public boolean x;
    public C0077co y;
    public C0077co z;

    public C0128eo(Activity activity, boolean z) {
        new ArrayList();
        this.C = new ArrayList();
        this.D = 0;
        this.E = true;
        this.H = true;
        this.L = new C0025ao(this, 0);
        this.M = new C0025ao(this, 1);
        this.N = new C0051bo(this);
        View decorView = activity.getWindow().getDecorView();
        W(decorView);
        if (z) {
            return;
        }
        this.w = decorView.findViewById(R.id.content);
    }

    public final void U(boolean z) {
        C0587wn i;
        C0587wn c0587wn;
        if (z) {
            if (!this.G) {
                this.G = true;
                ActionBarOverlayLayout actionBarOverlayLayout = this.s;
                if (actionBarOverlayLayout != null) {
                    actionBarOverlayLayout.setShowingForActionMode(true);
                }
                Z(false);
            }
        } else if (this.G) {
            this.G = false;
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.s;
            if (actionBarOverlayLayout2 != null) {
                actionBarOverlayLayout2.setShowingForActionMode(false);
            }
            Z(false);
        }
        ActionBarContainer actionBarContainer = this.t;
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        if (!Um.c(actionBarContainer)) {
            if (z) {
                ((Dk) this.u).a.setVisibility(4);
                this.v.setVisibility(0);
                return;
            } else {
                ((Dk) this.u).a.setVisibility(0);
                this.v.setVisibility(8);
                return;
            }
        }
        if (z) {
            Dk dk = (Dk) this.u;
            i = AbstractC0205hn.a(dk.a);
            i.a(0.0f);
            i.c(100L);
            i.d(new Ck(dk, 4));
            c0587wn = this.v.i(0, 200L);
        } else {
            Dk dk2 = (Dk) this.u;
            C0587wn a = AbstractC0205hn.a(dk2.a);
            a.a(1.0f);
            a.c(200L);
            a.d(new Ck(dk2, 0));
            i = this.v.i(8, 100L);
            c0587wn = a;
        }
        C0612xn c0612xn = new C0612xn();
        ArrayList arrayList = c0612xn.a;
        arrayList.add(i);
        View view = (View) i.a.get();
        long duration = view != null ? view.animate().getDuration() : 0L;
        View view2 = (View) c0587wn.a.get();
        if (view2 != null) {
            view2.animate().setStartDelay(duration);
        }
        arrayList.add(c0587wn);
        c0612xn.b();
    }

    public final Context V() {
        if (this.r == null) {
            TypedValue typedValue = new TypedValue();
            this.q.getTheme().resolveAttribute(com.omoda.launcher.R.attr.actionBarWidgetTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                this.r = new ContextThemeWrapper(this.q, i);
            } else {
                this.r = this.q;
            }
        }
        return this.r;
    }

    public final void W(View view) {
        E6 wrapper;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(com.omoda.launcher.R.id.decor_content_parent);
        this.s = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        KeyEvent.Callback findViewById = view.findViewById(com.omoda.launcher.R.id.action_bar);
        if (findViewById instanceof E6) {
            wrapper = (E6) findViewById;
        } else {
            if (!(findViewById instanceof Toolbar)) {
                throw new IllegalStateException("Can't make a decor toolbar out of ".concat(findViewById != null ? findViewById.getClass().getSimpleName() : "null"));
            }
            wrapper = ((Toolbar) findViewById).getWrapper();
        }
        this.u = wrapper;
        this.v = (ActionBarContextView) view.findViewById(com.omoda.launcher.R.id.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(com.omoda.launcher.R.id.action_bar_container);
        this.t = actionBarContainer;
        E6 e6 = this.u;
        if (e6 == null || this.v == null || actionBarContainer == null) {
            throw new IllegalStateException(C0128eo.class.getSimpleName().concat(" can only be used with a compatible window decor layout"));
        }
        Context context = ((Dk) e6).a.getContext();
        this.q = context;
        if ((((Dk) this.u).b & 4) != 0) {
            this.x = true;
        }
        int i = context.getApplicationInfo().targetSdkVersion;
        this.u.getClass();
        Y(context.getResources().getBoolean(com.omoda.launcher.R.bool.abc_action_bar_embed_tabs));
        TypedArray obtainStyledAttributes = this.q.obtainStyledAttributes(null, Zf.a, com.omoda.launcher.R.attr.actionBarStyle, 0);
        if (obtainStyledAttributes.getBoolean(14, false)) {
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.s;
            if (!actionBarOverlayLayout2.h) {
                throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
            }
            this.K = true;
            actionBarOverlayLayout2.setHideOnContentScrollEnabled(true);
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(12, 0);
        if (dimensionPixelSize != 0) {
            ActionBarContainer actionBarContainer2 = this.t;
            WeakHashMap weakHashMap = AbstractC0205hn.a;
            Xm.s(actionBarContainer2, dimensionPixelSize);
        }
        obtainStyledAttributes.recycle();
    }

    public final void X(boolean z) {
        if (this.x) {
            return;
        }
        int i = z ? 4 : 0;
        Dk dk = (Dk) this.u;
        int i2 = dk.b;
        this.x = true;
        dk.a((i & 4) | (i2 & (-5)));
    }

    public final void Y(boolean z) {
        if (z) {
            this.t.setTabContainer(null);
            ((Dk) this.u).getClass();
        } else {
            ((Dk) this.u).getClass();
            this.t.setTabContainer(null);
        }
        this.u.getClass();
        ((Dk) this.u).a.setCollapsible(false);
        this.s.setHasNonEmbeddedTabs(false);
    }

    public final void Z(boolean z) {
        boolean z2 = this.G || !this.F;
        View view = this.w;
        C0051bo c0051bo = this.N;
        if (!z2) {
            if (this.H) {
                this.H = false;
                C0612xn c0612xn = this.I;
                if (c0612xn != null) {
                    c0612xn.a();
                }
                int i = this.D;
                C0025ao c0025ao = this.L;
                if (i != 0 || (!this.J && !z)) {
                    c0025ao.a();
                    return;
                }
                this.t.setAlpha(1.0f);
                this.t.setTransitioning(true);
                C0612xn c0612xn2 = new C0612xn();
                float f = -this.t.getHeight();
                if (z) {
                    this.t.getLocationInWindow(new int[]{0, 0});
                    f -= r12[1];
                }
                C0587wn a = AbstractC0205hn.a(this.t);
                a.e(f);
                View view2 = (View) a.a.get();
                if (view2 != null) {
                    AbstractC0562vn.a(view2.animate(), c0051bo != null ? new L7(c0051bo, view2) : null);
                }
                boolean z3 = c0612xn2.e;
                ArrayList arrayList = c0612xn2.a;
                if (!z3) {
                    arrayList.add(a);
                }
                if (this.E && view != null) {
                    C0587wn a2 = AbstractC0205hn.a(view);
                    a2.e(f);
                    if (!c0612xn2.e) {
                        arrayList.add(a2);
                    }
                }
                AccelerateInterpolator accelerateInterpolator = O;
                boolean z4 = c0612xn2.e;
                if (!z4) {
                    c0612xn2.c = accelerateInterpolator;
                }
                if (!z4) {
                    c0612xn2.b = 250L;
                }
                if (!z4) {
                    c0612xn2.d = c0025ao;
                }
                this.I = c0612xn2;
                c0612xn2.b();
                return;
            }
            return;
        }
        if (this.H) {
            return;
        }
        this.H = true;
        C0612xn c0612xn3 = this.I;
        if (c0612xn3 != null) {
            c0612xn3.a();
        }
        this.t.setVisibility(0);
        int i2 = this.D;
        C0025ao c0025ao2 = this.M;
        if (i2 == 0 && (this.J || z)) {
            this.t.setTranslationY(0.0f);
            float f2 = -this.t.getHeight();
            if (z) {
                this.t.getLocationInWindow(new int[]{0, 0});
                f2 -= r12[1];
            }
            this.t.setTranslationY(f2);
            C0612xn c0612xn4 = new C0612xn();
            C0587wn a3 = AbstractC0205hn.a(this.t);
            a3.e(0.0f);
            View view3 = (View) a3.a.get();
            if (view3 != null) {
                AbstractC0562vn.a(view3.animate(), c0051bo != null ? new L7(c0051bo, view3) : null);
            }
            boolean z5 = c0612xn4.e;
            ArrayList arrayList2 = c0612xn4.a;
            if (!z5) {
                arrayList2.add(a3);
            }
            if (this.E && view != null) {
                view.setTranslationY(f2);
                C0587wn a4 = AbstractC0205hn.a(view);
                a4.e(0.0f);
                if (!c0612xn4.e) {
                    arrayList2.add(a4);
                }
            }
            DecelerateInterpolator decelerateInterpolator = P;
            boolean z6 = c0612xn4.e;
            if (!z6) {
                c0612xn4.c = decelerateInterpolator;
            }
            if (!z6) {
                c0612xn4.b = 250L;
            }
            if (!z6) {
                c0612xn4.d = c0025ao2;
            }
            this.I = c0612xn4;
            c0612xn4.b();
        } else {
            this.t.setAlpha(1.0f);
            this.t.setTranslationY(0.0f);
            if (this.E && view != null) {
                view.setTranslationY(0.0f);
            }
            c0025ao2.a();
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.s;
        if (actionBarOverlayLayout != null) {
            WeakHashMap weakHashMap = AbstractC0205hn.a;
            Vm.c(actionBarOverlayLayout);
        }
    }

    public C0128eo(Dialog dialog) {
        new ArrayList();
        this.C = new ArrayList();
        this.D = 0;
        this.E = true;
        this.H = true;
        this.L = new C0025ao(this, 0);
        this.M = new C0025ao(this, 1);
        this.N = new C0051bo(this);
        W(dialog.getWindow().getDecorView());
    }
}
