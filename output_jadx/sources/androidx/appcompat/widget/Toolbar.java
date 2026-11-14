package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import com.omoda.launcher.R;
import defpackage.AbstractC0076cn;
import defpackage.AbstractC0078d;
import defpackage.AbstractC0205hn;
import defpackage.AbstractC0246jd;
import defpackage.AbstractC0407pi;
import defpackage.AbstractC0609xk;
import defpackage.Ak;
import defpackage.Bk;
import defpackage.C0046bj;
import defpackage.C0285l0;
import defpackage.C0287l2;
import defpackage.C0328mh;
import defpackage.C0491t2;
import defpackage.C0584wk;
import defpackage.C0634yk;
import defpackage.C0659zk;
import defpackage.C6;
import defpackage.Dk;
import defpackage.Dn;
import defpackage.E6;
import defpackage.Ek;
import defpackage.F1;
import defpackage.H1;
import defpackage.J2;
import defpackage.K1;
import defpackage.Ld;
import defpackage.Pd;
import defpackage.RunnableC0559vk;
import defpackage.Sm;
import defpackage.Um;
import defpackage.ViewOnClickListenerC0428qd;
import defpackage.Z;
import defpackage.Zf;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class Toolbar extends ViewGroup {
    public ColorStateList A;
    public boolean B;
    public boolean C;
    public final ArrayList D;
    public final ArrayList E;
    public final int[] F;
    public final K1 G;
    public ArrayList H;
    public final C0584wk I;
    public Dk J;
    public C0285l0 K;
    public C0634yk L;
    public boolean M;
    public OnBackInvokedCallback N;
    public OnBackInvokedDispatcher O;
    public boolean P;
    public final J2 Q;
    public ActionMenuView a;
    public C0287l2 b;
    public C0287l2 c;
    public F1 d;
    public H1 e;
    public final Drawable f;
    public final CharSequence g;
    public F1 h;
    public View i;
    public Context j;
    public int k;
    public int l;
    public int m;
    public final int n;
    public final int o;
    public int p;
    public int q;
    public int r;
    public int s;
    public C0328mh t;
    public int u;
    public int v;
    public final int w;
    public CharSequence x;
    public CharSequence y;
    public ColorStateList z;

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private ArrayList<MenuItem> getCurrentMenuItems() {
        ArrayList<MenuItem> arrayList = new ArrayList<>();
        Menu menu = getMenu();
        for (int i = 0; i < menu.size(); i++) {
            arrayList.add(menu.getItem(i));
        }
        return arrayList;
    }

    private MenuInflater getMenuInflater() {
        return new C0046bj(getContext());
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [zk, android.view.ViewGroup$MarginLayoutParams] */
    public static C0659zk h() {
        ?? marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -2);
        marginLayoutParams.b = 0;
        marginLayoutParams.a = 8388627;
        return marginLayoutParams;
    }

    public static C0659zk i(ViewGroup.LayoutParams layoutParams) {
        boolean z = layoutParams instanceof C0659zk;
        if (z) {
            C0659zk c0659zk = (C0659zk) layoutParams;
            C0659zk c0659zk2 = new C0659zk(c0659zk);
            c0659zk2.b = 0;
            c0659zk2.b = c0659zk.b;
            return c0659zk2;
        }
        if (z) {
            C0659zk c0659zk3 = new C0659zk((C0659zk) layoutParams);
            c0659zk3.b = 0;
            return c0659zk3;
        }
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            C0659zk c0659zk4 = new C0659zk(layoutParams);
            c0659zk4.b = 0;
            return c0659zk4;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        C0659zk c0659zk5 = new C0659zk(marginLayoutParams);
        c0659zk5.b = 0;
        ((ViewGroup.MarginLayoutParams) c0659zk5).leftMargin = marginLayoutParams.leftMargin;
        ((ViewGroup.MarginLayoutParams) c0659zk5).topMargin = marginLayoutParams.topMargin;
        ((ViewGroup.MarginLayoutParams) c0659zk5).rightMargin = marginLayoutParams.rightMargin;
        ((ViewGroup.MarginLayoutParams) c0659zk5).bottomMargin = marginLayoutParams.bottomMargin;
        return c0659zk5;
    }

    public static int l(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return AbstractC0246jd.b(marginLayoutParams) + AbstractC0246jd.c(marginLayoutParams);
    }

    public static int m(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    public final void a(ArrayList arrayList, int i) {
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        boolean z = Sm.d(this) == 1;
        int childCount = getChildCount();
        int absoluteGravity = Gravity.getAbsoluteGravity(i, Sm.d(this));
        arrayList.clear();
        if (!z) {
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                C0659zk c0659zk = (C0659zk) childAt.getLayoutParams();
                if (c0659zk.b == 0 && u(childAt) && j(c0659zk.a) == absoluteGravity) {
                    arrayList.add(childAt);
                }
            }
            return;
        }
        for (int i3 = childCount - 1; i3 >= 0; i3--) {
            View childAt2 = getChildAt(i3);
            C0659zk c0659zk2 = (C0659zk) childAt2.getLayoutParams();
            if (c0659zk2.b == 0 && u(childAt2) && j(c0659zk2.a) == absoluteGravity) {
                arrayList.add(childAt2);
            }
        }
    }

    public final void b(View view, boolean z) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        C0659zk h = layoutParams == null ? h() : !checkLayoutParams(layoutParams) ? i(layoutParams) : (C0659zk) layoutParams;
        h.b = 1;
        if (!z || this.i == null) {
            addView(view, h);
        } else {
            view.setLayoutParams(h);
            this.E.add(view);
        }
    }

    public final void c() {
        if (this.h == null) {
            F1 f1 = new F1(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            this.h = f1;
            f1.setImageDrawable(this.f);
            this.h.setContentDescription(this.g);
            C0659zk h = h();
            h.a = (this.n & 112) | 8388611;
            h.b = 2;
            this.h.setLayoutParams(h);
            this.h.setOnClickListener(new Z(3, this));
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof C0659zk);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, mh] */
    public final void d() {
        if (this.t == null) {
            ?? obj = new Object();
            obj.a = 0;
            obj.b = 0;
            obj.c = Integer.MIN_VALUE;
            obj.d = Integer.MIN_VALUE;
            obj.e = 0;
            obj.f = 0;
            obj.g = false;
            obj.h = false;
            this.t = obj;
        }
    }

    public final void e() {
        f();
        ActionMenuView actionMenuView = this.a;
        if (actionMenuView.p == null) {
            Ld ld = (Ld) actionMenuView.getMenu();
            if (this.L == null) {
                this.L = new C0634yk(this);
            }
            this.a.setExpandedActionViewsExclusive(true);
            ld.b(this.L, this.j);
            v();
        }
    }

    public final void f() {
        if (this.a == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext(), null);
            this.a = actionMenuView;
            actionMenuView.setPopupTheme(this.k);
            this.a.setOnMenuItemClickListener(this.I);
            ActionMenuView actionMenuView2 = this.a;
            C0584wk c0584wk = new C0584wk(this);
            actionMenuView2.getClass();
            actionMenuView2.u = c0584wk;
            C0659zk h = h();
            h.a = (this.n & 112) | 8388613;
            this.a.setLayoutParams(h);
            b(this.a, false);
        }
    }

    public final void g() {
        if (this.d == null) {
            this.d = new F1(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            C0659zk h = h();
            h.a = (this.n & 112) | 8388611;
            this.d.setLayoutParams(h);
        }
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return h();
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return i(layoutParams);
    }

    public CharSequence getCollapseContentDescription() {
        F1 f1 = this.h;
        if (f1 != null) {
            return f1.getContentDescription();
        }
        return null;
    }

    public Drawable getCollapseIcon() {
        F1 f1 = this.h;
        if (f1 != null) {
            return f1.getDrawable();
        }
        return null;
    }

    public int getContentInsetEnd() {
        C0328mh c0328mh = this.t;
        if (c0328mh != null) {
            return c0328mh.g ? c0328mh.a : c0328mh.b;
        }
        return 0;
    }

    public int getContentInsetEndWithActions() {
        int i = this.v;
        return i != Integer.MIN_VALUE ? i : getContentInsetEnd();
    }

    public int getContentInsetLeft() {
        C0328mh c0328mh = this.t;
        if (c0328mh != null) {
            return c0328mh.a;
        }
        return 0;
    }

    public int getContentInsetRight() {
        C0328mh c0328mh = this.t;
        if (c0328mh != null) {
            return c0328mh.b;
        }
        return 0;
    }

    public int getContentInsetStart() {
        C0328mh c0328mh = this.t;
        if (c0328mh != null) {
            return c0328mh.g ? c0328mh.b : c0328mh.a;
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i = this.u;
        return i != Integer.MIN_VALUE ? i : getContentInsetStart();
    }

    public int getCurrentContentInsetEnd() {
        Ld ld;
        ActionMenuView actionMenuView = this.a;
        return (actionMenuView == null || (ld = actionMenuView.p) == null || !ld.hasVisibleItems()) ? getContentInsetEnd() : Math.max(getContentInsetEnd(), Math.max(this.v, 0));
    }

    public int getCurrentContentInsetLeft() {
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        return Sm.d(this) == 1 ? getCurrentContentInsetEnd() : getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        return Sm.d(this) == 1 ? getCurrentContentInsetStart() : getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        return getNavigationIcon() != null ? Math.max(getContentInsetStart(), Math.max(this.u, 0)) : getContentInsetStart();
    }

    public Drawable getLogo() {
        H1 h1 = this.e;
        if (h1 != null) {
            return h1.getDrawable();
        }
        return null;
    }

    public CharSequence getLogoDescription() {
        H1 h1 = this.e;
        if (h1 != null) {
            return h1.getContentDescription();
        }
        return null;
    }

    public Menu getMenu() {
        e();
        return this.a.getMenu();
    }

    public View getNavButtonView() {
        return this.d;
    }

    public CharSequence getNavigationContentDescription() {
        F1 f1 = this.d;
        if (f1 != null) {
            return f1.getContentDescription();
        }
        return null;
    }

    public Drawable getNavigationIcon() {
        F1 f1 = this.d;
        if (f1 != null) {
            return f1.getDrawable();
        }
        return null;
    }

    public C0285l0 getOuterActionMenuPresenter() {
        return this.K;
    }

    public Drawable getOverflowIcon() {
        e();
        return this.a.getOverflowIcon();
    }

    public Context getPopupContext() {
        return this.j;
    }

    public int getPopupTheme() {
        return this.k;
    }

    public CharSequence getSubtitle() {
        return this.y;
    }

    public final TextView getSubtitleTextView() {
        return this.c;
    }

    public CharSequence getTitle() {
        return this.x;
    }

    public int getTitleMarginBottom() {
        return this.s;
    }

    public int getTitleMarginEnd() {
        return this.q;
    }

    public int getTitleMarginStart() {
        return this.p;
    }

    public int getTitleMarginTop() {
        return this.r;
    }

    public final TextView getTitleTextView() {
        return this.b;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [Dk, java.lang.Object] */
    public E6 getWrapper() {
        Drawable drawable;
        if (this.J == null) {
            ?? obj = new Object();
            obj.n = 0;
            obj.a = this;
            obj.h = getTitle();
            obj.i = getSubtitle();
            obj.g = obj.h != null;
            obj.f = getNavigationIcon();
            C0491t2 q = C0491t2.q(getContext(), null, Zf.a, R.attr.actionBarStyle);
            obj.o = q.h(15);
            TypedArray typedArray = (TypedArray) q.a;
            CharSequence text = typedArray.getText(27);
            if (!TextUtils.isEmpty(text)) {
                obj.g = true;
                obj.h = text;
                if ((obj.b & 8) != 0) {
                    Toolbar toolbar = obj.a;
                    toolbar.setTitle(text);
                    if (obj.g) {
                        AbstractC0205hn.i(toolbar.getRootView(), text);
                    }
                }
            }
            CharSequence text2 = typedArray.getText(25);
            if (!TextUtils.isEmpty(text2)) {
                obj.i = text2;
                if ((obj.b & 8) != 0) {
                    setSubtitle(text2);
                }
            }
            Drawable h = q.h(20);
            if (h != null) {
                obj.e = h;
                obj.c();
            }
            Drawable h2 = q.h(17);
            if (h2 != null) {
                obj.d = h2;
                obj.c();
            }
            if (obj.f == null && (drawable = obj.o) != null) {
                obj.f = drawable;
                int i = obj.b & 4;
                Toolbar toolbar2 = obj.a;
                if (i != 0) {
                    toolbar2.setNavigationIcon(drawable);
                } else {
                    toolbar2.setNavigationIcon((Drawable) null);
                }
            }
            obj.a(typedArray.getInt(10, 0));
            int resourceId = typedArray.getResourceId(9, 0);
            if (resourceId != 0) {
                View inflate = LayoutInflater.from(getContext()).inflate(resourceId, (ViewGroup) this, false);
                View view = obj.c;
                if (view != null && (obj.b & 16) != 0) {
                    removeView(view);
                }
                obj.c = inflate;
                if (inflate != null && (obj.b & 16) != 0) {
                    addView(inflate);
                }
                obj.a(obj.b | 16);
            }
            int layoutDimension = typedArray.getLayoutDimension(13, 0);
            if (layoutDimension > 0) {
                ViewGroup.LayoutParams layoutParams = getLayoutParams();
                layoutParams.height = layoutDimension;
                setLayoutParams(layoutParams);
            }
            int dimensionPixelOffset = typedArray.getDimensionPixelOffset(7, -1);
            int dimensionPixelOffset2 = typedArray.getDimensionPixelOffset(3, -1);
            if (dimensionPixelOffset >= 0 || dimensionPixelOffset2 >= 0) {
                int max = Math.max(dimensionPixelOffset, 0);
                int max2 = Math.max(dimensionPixelOffset2, 0);
                d();
                this.t.a(max, max2);
            }
            int resourceId2 = typedArray.getResourceId(28, 0);
            if (resourceId2 != 0) {
                Context context = getContext();
                this.l = resourceId2;
                C0287l2 c0287l2 = this.b;
                if (c0287l2 != null) {
                    c0287l2.setTextAppearance(context, resourceId2);
                }
            }
            int resourceId3 = typedArray.getResourceId(26, 0);
            if (resourceId3 != 0) {
                Context context2 = getContext();
                this.m = resourceId3;
                C0287l2 c0287l22 = this.c;
                if (c0287l22 != null) {
                    c0287l22.setTextAppearance(context2, resourceId3);
                }
            }
            int resourceId4 = typedArray.getResourceId(22, 0);
            if (resourceId4 != 0) {
                setPopupTheme(resourceId4);
            }
            q.r();
            if (R.string.abc_action_bar_up_description != obj.n) {
                obj.n = R.string.abc_action_bar_up_description;
                if (TextUtils.isEmpty(getNavigationContentDescription())) {
                    int i2 = obj.n;
                    obj.j = i2 != 0 ? getContext().getString(i2) : null;
                    obj.b();
                }
            }
            obj.j = getNavigationContentDescription();
            setNavigationOnClickListener(new ViewOnClickListenerC0428qd(obj));
            this.J = obj;
        }
        return this.J;
    }

    public final int j(int i) {
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        int d = Sm.d(this);
        int absoluteGravity = Gravity.getAbsoluteGravity(i, d) & 7;
        return (absoluteGravity == 1 || absoluteGravity == 3 || absoluteGravity == 5) ? absoluteGravity : d == 1 ? 5 : 3;
    }

    public final int k(View view, int i) {
        C0659zk c0659zk = (C0659zk) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i2 = i > 0 ? (measuredHeight - i) / 2 : 0;
        int i3 = c0659zk.a & 112;
        if (i3 != 16 && i3 != 48 && i3 != 80) {
            i3 = this.w & 112;
        }
        if (i3 == 48) {
            return getPaddingTop() - i2;
        }
        if (i3 == 80) {
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) c0659zk).bottomMargin) - i2;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int i4 = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
        int i5 = ((ViewGroup.MarginLayoutParams) c0659zk).topMargin;
        if (i4 < i5) {
            i4 = i5;
        } else {
            int i6 = (((height - paddingBottom) - measuredHeight) - i4) - paddingTop;
            int i7 = ((ViewGroup.MarginLayoutParams) c0659zk).bottomMargin;
            if (i6 < i7) {
                i4 = Math.max(0, i4 - (i7 - i6));
            }
        }
        return paddingTop + i4;
    }

    public void n(int i) {
        getMenuInflater().inflate(i, getMenu());
    }

    public final void o() {
        Iterator it = this.H.iterator();
        while (it.hasNext()) {
            getMenu().removeItem(((MenuItem) it.next()).getItemId());
        }
        getMenu();
        ArrayList<MenuItem> currentMenuItems = getCurrentMenuItems();
        getMenuInflater();
        Iterator it2 = ((CopyOnWriteArrayList) this.G.c).iterator();
        if (it2.hasNext()) {
            throw AbstractC0407pi.f(it2);
        }
        ArrayList<MenuItem> currentMenuItems2 = getCurrentMenuItems();
        currentMenuItems2.removeAll(currentMenuItems);
        this.H = currentMenuItems2;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        v();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.Q);
        v();
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.C = false;
        }
        if (!this.C) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.C = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.C = false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:113:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x029b A[LOOP:0: B:40:0x0299->B:41:0x029b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x02b8 A[LOOP:1: B:44:0x02b6->B:45:0x02b8, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x02d6 A[LOOP:2: B:48:0x02d4->B:49:0x02d6, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0317  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0325 A[LOOP:3: B:57:0x0323->B:58:0x0325, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0222  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r19, int r20, int r21, int r22, int r23) {
        /*
            Method dump skipped, instructions count: 822
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        boolean a = Dn.a(this);
        int i10 = !a ? 1 : 0;
        int i11 = 0;
        if (u(this.d)) {
            t(this.d, i, 0, i2, this.o);
            i3 = l(this.d) + this.d.getMeasuredWidth();
            i4 = Math.max(0, m(this.d) + this.d.getMeasuredHeight());
            i5 = View.combineMeasuredStates(0, this.d.getMeasuredState());
        } else {
            i3 = 0;
            i4 = 0;
            i5 = 0;
        }
        if (u(this.h)) {
            t(this.h, i, 0, i2, this.o);
            i3 = l(this.h) + this.h.getMeasuredWidth();
            i4 = Math.max(i4, m(this.h) + this.h.getMeasuredHeight());
            i5 = View.combineMeasuredStates(i5, this.h.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int max = Math.max(currentContentInsetStart, i3);
        int max2 = Math.max(0, currentContentInsetStart - i3);
        int[] iArr = this.F;
        iArr[a ? 1 : 0] = max2;
        if (u(this.a)) {
            t(this.a, i, max, i2, this.o);
            i6 = l(this.a) + this.a.getMeasuredWidth();
            i4 = Math.max(i4, m(this.a) + this.a.getMeasuredHeight());
            i5 = View.combineMeasuredStates(i5, this.a.getMeasuredState());
        } else {
            i6 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int max3 = max + Math.max(currentContentInsetEnd, i6);
        iArr[i10] = Math.max(0, currentContentInsetEnd - i6);
        if (u(this.i)) {
            max3 += s(this.i, i, max3, i2, 0, iArr);
            i4 = Math.max(i4, m(this.i) + this.i.getMeasuredHeight());
            i5 = View.combineMeasuredStates(i5, this.i.getMeasuredState());
        }
        if (u(this.e)) {
            max3 += s(this.e, i, max3, i2, 0, iArr);
            i4 = Math.max(i4, m(this.e) + this.e.getMeasuredHeight());
            i5 = View.combineMeasuredStates(i5, this.e.getMeasuredState());
        }
        int childCount = getChildCount();
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (((C0659zk) childAt.getLayoutParams()).b == 0 && u(childAt)) {
                max3 += s(childAt, i, max3, i2, 0, iArr);
                i4 = Math.max(i4, m(childAt) + childAt.getMeasuredHeight());
                i5 = View.combineMeasuredStates(i5, childAt.getMeasuredState());
            }
        }
        int i13 = this.r + this.s;
        int i14 = this.p + this.q;
        if (u(this.b)) {
            s(this.b, i, max3 + i14, i2, i13, iArr);
            int l = l(this.b) + this.b.getMeasuredWidth();
            i7 = m(this.b) + this.b.getMeasuredHeight();
            i8 = View.combineMeasuredStates(i5, this.b.getMeasuredState());
            i9 = l;
        } else {
            i7 = 0;
            i8 = i5;
            i9 = 0;
        }
        if (u(this.c)) {
            i9 = Math.max(i9, s(this.c, i, max3 + i14, i2, i7 + i13, iArr));
            i7 += m(this.c) + this.c.getMeasuredHeight();
            i8 = View.combineMeasuredStates(i8, this.c.getMeasuredState());
        }
        int max4 = Math.max(i4, i7);
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop() + max4;
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(paddingRight + max3 + i9, getSuggestedMinimumWidth()), i, (-16777216) & i8);
        int resolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i2, i8 << 16);
        if (this.M) {
            int childCount2 = getChildCount();
            for (int i15 = 0; i15 < childCount2; i15++) {
                View childAt2 = getChildAt(i15);
                if (!u(childAt2) || childAt2.getMeasuredWidth() <= 0 || childAt2.getMeasuredHeight() <= 0) {
                }
            }
            setMeasuredDimension(resolveSizeAndState, i11);
        }
        i11 = resolveSizeAndState2;
        setMeasuredDimension(resolveSizeAndState, i11);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem findItem;
        if (!(parcelable instanceof Bk)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Bk bk = (Bk) parcelable;
        super.onRestoreInstanceState(bk.a);
        ActionMenuView actionMenuView = this.a;
        Ld ld = actionMenuView != null ? actionMenuView.p : null;
        int i = bk.c;
        if (i != 0 && this.L != null && ld != null && (findItem = ld.findItem(i)) != null) {
            findItem.expandActionView();
        }
        if (bk.d) {
            J2 j2 = this.Q;
            removeCallbacks(j2);
            post(j2);
        }
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        d();
        C0328mh c0328mh = this.t;
        boolean z = i == 1;
        if (z == c0328mh.g) {
            return;
        }
        c0328mh.g = z;
        if (!c0328mh.h) {
            c0328mh.a = c0328mh.e;
            c0328mh.b = c0328mh.f;
            return;
        }
        if (z) {
            int i2 = c0328mh.d;
            if (i2 == Integer.MIN_VALUE) {
                i2 = c0328mh.e;
            }
            c0328mh.a = i2;
            int i3 = c0328mh.c;
            if (i3 == Integer.MIN_VALUE) {
                i3 = c0328mh.f;
            }
            c0328mh.b = i3;
            return;
        }
        int i4 = c0328mh.c;
        if (i4 == Integer.MIN_VALUE) {
            i4 = c0328mh.e;
        }
        c0328mh.a = i4;
        int i5 = c0328mh.d;
        if (i5 == Integer.MIN_VALUE) {
            i5 = c0328mh.f;
        }
        c0328mh.b = i5;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [android.os.Parcelable, d, Bk] */
    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        C0285l0 c0285l0;
        Pd pd;
        ?? abstractC0078d = new AbstractC0078d(super.onSaveInstanceState());
        C0634yk c0634yk = this.L;
        if (c0634yk != null && (pd = c0634yk.b) != null) {
            abstractC0078d.c = pd.a;
        }
        ActionMenuView actionMenuView = this.a;
        abstractC0078d.d = (actionMenuView == null || (c0285l0 = actionMenuView.t) == null || !c0285l0.h()) ? false : true;
        return abstractC0078d;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.B = false;
        }
        if (!this.B) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.B = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.B = false;
        }
        return true;
    }

    public final boolean p(View view) {
        return view.getParent() == this || this.E.contains(view);
    }

    public final int q(View view, int i, int i2, int[] iArr) {
        C0659zk c0659zk = (C0659zk) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) c0659zk).leftMargin - iArr[0];
        int max = Math.max(0, i3) + i;
        iArr[0] = Math.max(0, -i3);
        int k = k(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max, k, max + measuredWidth, view.getMeasuredHeight() + k);
        return measuredWidth + ((ViewGroup.MarginLayoutParams) c0659zk).rightMargin + max;
    }

    public final int r(View view, int i, int i2, int[] iArr) {
        C0659zk c0659zk = (C0659zk) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) c0659zk).rightMargin - iArr[1];
        int max = i - Math.max(0, i3);
        iArr[1] = Math.max(0, -i3);
        int k = k(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max - measuredWidth, k, max, view.getMeasuredHeight() + k);
        return max - (measuredWidth + ((ViewGroup.MarginLayoutParams) c0659zk).leftMargin);
    }

    public final int s(View view, int i, int i2, int i3, int i4, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i5 = marginLayoutParams.leftMargin - iArr[0];
        int i6 = marginLayoutParams.rightMargin - iArr[1];
        int max = Math.max(0, i6) + Math.max(0, i5);
        iArr[0] = Math.max(0, -i5);
        iArr[1] = Math.max(0, -i6);
        view.measure(ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + max + i2, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i3, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height));
        return view.getMeasuredWidth() + max;
    }

    public void setBackInvokedCallbackEnabled(boolean z) {
        if (this.P != z) {
            this.P = z;
            v();
        }
    }

    public void setCollapseContentDescription(int i) {
        setCollapseContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setCollapseIcon(int i) {
        setCollapseIcon(C6.n(getContext(), i));
    }

    public void setCollapsible(boolean z) {
        this.M = z;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i) {
        if (i < 0) {
            i = Integer.MIN_VALUE;
        }
        if (i != this.v) {
            this.v = i;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int i) {
        if (i < 0) {
            i = Integer.MIN_VALUE;
        }
        if (i != this.u) {
            this.u = i;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setLogo(int i) {
        setLogo(C6.n(getContext(), i));
    }

    public void setLogoDescription(int i) {
        setLogoDescription(getContext().getText(i));
    }

    public void setNavigationContentDescription(int i) {
        setNavigationContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setNavigationIcon(int i) {
        setNavigationIcon(C6.n(getContext(), i));
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        g();
        this.d.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(Ak ak) {
    }

    public void setOverflowIcon(Drawable drawable) {
        e();
        this.a.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i) {
        if (this.k != i) {
            this.k = i;
            if (i == 0) {
                this.j = getContext();
            } else {
                this.j = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setSubtitle(int i) {
        setSubtitle(getContext().getText(i));
    }

    public void setSubtitleTextColor(int i) {
        setSubtitleTextColor(ColorStateList.valueOf(i));
    }

    public void setTitle(int i) {
        setTitle(getContext().getText(i));
    }

    public void setTitleMarginBottom(int i) {
        this.s = i;
        requestLayout();
    }

    public void setTitleMarginEnd(int i) {
        this.q = i;
        requestLayout();
    }

    public void setTitleMarginStart(int i) {
        this.p = i;
        requestLayout();
    }

    public void setTitleMarginTop(int i) {
        this.r = i;
        requestLayout();
    }

    public void setTitleTextColor(int i) {
        setTitleTextColor(ColorStateList.valueOf(i));
    }

    public final void t(View view, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i3, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i4 >= 0) {
            if (mode != 0) {
                i4 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i4);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    public final boolean u(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    public final void v() {
        boolean z;
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        int i = 0;
        if (Build.VERSION.SDK_INT >= 33) {
            OnBackInvokedDispatcher a = AbstractC0609xk.a(this);
            C0634yk c0634yk = this.L;
            if (c0634yk != null && c0634yk.b != null && a != null) {
                WeakHashMap weakHashMap = AbstractC0205hn.a;
                if (Um.b(this) && this.P) {
                    z = true;
                    if (!z && this.O == null) {
                        if (this.N == null) {
                            this.N = AbstractC0609xk.b(new RunnableC0559vk(this, i));
                        }
                        AbstractC0609xk.c(a, this.N);
                        this.O = a;
                        return;
                    }
                    if (!z || (onBackInvokedDispatcher = this.O) == null) {
                    }
                    AbstractC0609xk.d(onBackInvokedDispatcher, this.N);
                    this.O = null;
                    return;
                }
            }
            z = false;
            if (!z) {
            }
            if (z) {
            }
        }
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, R.attr.toolbarStyle);
        this.w = 8388627;
        this.D = new ArrayList();
        this.E = new ArrayList();
        this.F = new int[2];
        this.G = new K1(new RunnableC0559vk(this, 1));
        this.H = new ArrayList();
        this.I = new C0584wk(this);
        this.Q = new J2(15, this);
        Context context2 = getContext();
        int[] iArr = Zf.x;
        C0491t2 q = C0491t2.q(context2, attributeSet, iArr, R.attr.toolbarStyle);
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        AbstractC0076cn.d(this, context, iArr, attributeSet, (TypedArray) q.a, R.attr.toolbarStyle, 0);
        TypedArray typedArray = (TypedArray) q.a;
        this.l = typedArray.getResourceId(28, 0);
        this.m = typedArray.getResourceId(19, 0);
        this.w = typedArray.getInteger(0, 8388627);
        this.n = typedArray.getInteger(2, 48);
        int dimensionPixelOffset = typedArray.getDimensionPixelOffset(22, 0);
        dimensionPixelOffset = typedArray.hasValue(27) ? typedArray.getDimensionPixelOffset(27, dimensionPixelOffset) : dimensionPixelOffset;
        this.s = dimensionPixelOffset;
        this.r = dimensionPixelOffset;
        this.q = dimensionPixelOffset;
        this.p = dimensionPixelOffset;
        int dimensionPixelOffset2 = typedArray.getDimensionPixelOffset(25, -1);
        if (dimensionPixelOffset2 >= 0) {
            this.p = dimensionPixelOffset2;
        }
        int dimensionPixelOffset3 = typedArray.getDimensionPixelOffset(24, -1);
        if (dimensionPixelOffset3 >= 0) {
            this.q = dimensionPixelOffset3;
        }
        int dimensionPixelOffset4 = typedArray.getDimensionPixelOffset(26, -1);
        if (dimensionPixelOffset4 >= 0) {
            this.r = dimensionPixelOffset4;
        }
        int dimensionPixelOffset5 = typedArray.getDimensionPixelOffset(23, -1);
        if (dimensionPixelOffset5 >= 0) {
            this.s = dimensionPixelOffset5;
        }
        this.o = typedArray.getDimensionPixelSize(13, -1);
        int dimensionPixelOffset6 = typedArray.getDimensionPixelOffset(9, Integer.MIN_VALUE);
        int dimensionPixelOffset7 = typedArray.getDimensionPixelOffset(5, Integer.MIN_VALUE);
        int dimensionPixelSize = typedArray.getDimensionPixelSize(7, 0);
        int dimensionPixelSize2 = typedArray.getDimensionPixelSize(8, 0);
        d();
        C0328mh c0328mh = this.t;
        c0328mh.h = false;
        if (dimensionPixelSize != Integer.MIN_VALUE) {
            c0328mh.e = dimensionPixelSize;
            c0328mh.a = dimensionPixelSize;
        }
        if (dimensionPixelSize2 != Integer.MIN_VALUE) {
            c0328mh.f = dimensionPixelSize2;
            c0328mh.b = dimensionPixelSize2;
        }
        if (dimensionPixelOffset6 != Integer.MIN_VALUE || dimensionPixelOffset7 != Integer.MIN_VALUE) {
            c0328mh.a(dimensionPixelOffset6, dimensionPixelOffset7);
        }
        this.u = typedArray.getDimensionPixelOffset(10, Integer.MIN_VALUE);
        this.v = typedArray.getDimensionPixelOffset(6, Integer.MIN_VALUE);
        this.f = q.h(4);
        this.g = typedArray.getText(3);
        CharSequence text = typedArray.getText(21);
        if (!TextUtils.isEmpty(text)) {
            setTitle(text);
        }
        CharSequence text2 = typedArray.getText(18);
        if (!TextUtils.isEmpty(text2)) {
            setSubtitle(text2);
        }
        this.j = getContext();
        setPopupTheme(typedArray.getResourceId(17, 0));
        Drawable h = q.h(16);
        if (h != null) {
            setNavigationIcon(h);
        }
        CharSequence text3 = typedArray.getText(15);
        if (!TextUtils.isEmpty(text3)) {
            setNavigationContentDescription(text3);
        }
        Drawable h2 = q.h(11);
        if (h2 != null) {
            setLogo(h2);
        }
        CharSequence text4 = typedArray.getText(12);
        if (!TextUtils.isEmpty(text4)) {
            setLogoDescription(text4);
        }
        if (typedArray.hasValue(29)) {
            setTitleTextColor(q.g(29));
        }
        if (typedArray.hasValue(20)) {
            setSubtitleTextColor(q.g(20));
        }
        if (typedArray.hasValue(14)) {
            n(typedArray.getResourceId(14, 0));
        }
        q.r();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [zk, android.view.ViewGroup$LayoutParams, android.view.ViewGroup$MarginLayoutParams] */
    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        Context context = getContext();
        ?? marginLayoutParams = new ViewGroup.MarginLayoutParams(context, attributeSet);
        marginLayoutParams.a = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Zf.b);
        marginLayoutParams.a = obtainStyledAttributes.getInt(0, 0);
        obtainStyledAttributes.recycle();
        marginLayoutParams.b = 0;
        return marginLayoutParams;
    }

    public void setCollapseContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            c();
        }
        F1 f1 = this.h;
        if (f1 != null) {
            f1.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(Drawable drawable) {
        if (drawable != null) {
            c();
            this.h.setImageDrawable(drawable);
        } else {
            F1 f1 = this.h;
            if (f1 != null) {
                f1.setImageDrawable(this.f);
            }
        }
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            if (this.e == null) {
                this.e = new H1(getContext(), null, 0);
            }
            if (!p(this.e)) {
                b(this.e, true);
            }
        } else {
            H1 h1 = this.e;
            if (h1 != null && p(h1)) {
                removeView(this.e);
                this.E.remove(this.e);
            }
        }
        H1 h12 = this.e;
        if (h12 != null) {
            h12.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence) && this.e == null) {
            this.e = new H1(getContext(), null, 0);
        }
        H1 h1 = this.e;
        if (h1 != null) {
            h1.setContentDescription(charSequence);
        }
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            g();
        }
        F1 f1 = this.d;
        if (f1 != null) {
            f1.setContentDescription(charSequence);
            Ek.a(this.d, charSequence);
        }
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            g();
            if (!p(this.d)) {
                b(this.d, true);
            }
        } else {
            F1 f1 = this.d;
            if (f1 != null && p(f1)) {
                removeView(this.d);
                this.E.remove(this.d);
            }
        }
        F1 f12 = this.d;
        if (f12 != null) {
            f12.setImageDrawable(drawable);
        }
    }

    public void setSubtitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.c == null) {
                Context context = getContext();
                C0287l2 c0287l2 = new C0287l2(context, null);
                this.c = c0287l2;
                c0287l2.setSingleLine();
                this.c.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.m;
                if (i != 0) {
                    this.c.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.A;
                if (colorStateList != null) {
                    this.c.setTextColor(colorStateList);
                }
            }
            if (!p(this.c)) {
                b(this.c, true);
            }
        } else {
            C0287l2 c0287l22 = this.c;
            if (c0287l22 != null && p(c0287l22)) {
                removeView(this.c);
                this.E.remove(this.c);
            }
        }
        C0287l2 c0287l23 = this.c;
        if (c0287l23 != null) {
            c0287l23.setText(charSequence);
        }
        this.y = charSequence;
    }

    public void setSubtitleTextColor(ColorStateList colorStateList) {
        this.A = colorStateList;
        C0287l2 c0287l2 = this.c;
        if (c0287l2 != null) {
            c0287l2.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.b == null) {
                Context context = getContext();
                C0287l2 c0287l2 = new C0287l2(context, null);
                this.b = c0287l2;
                c0287l2.setSingleLine();
                this.b.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.l;
                if (i != 0) {
                    this.b.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.z;
                if (colorStateList != null) {
                    this.b.setTextColor(colorStateList);
                }
            }
            if (!p(this.b)) {
                b(this.b, true);
            }
        } else {
            C0287l2 c0287l22 = this.b;
            if (c0287l22 != null && p(c0287l22)) {
                removeView(this.b);
                this.E.remove(this.b);
            }
        }
        C0287l2 c0287l23 = this.b;
        if (c0287l23 != null) {
            c0287l23.setText(charSequence);
        }
        this.x = charSequence;
    }

    public void setTitleTextColor(ColorStateList colorStateList) {
        this.z = colorStateList;
        C0287l2 c0287l2 = this.b;
        if (c0287l2 != null) {
            c0287l2.setTextColor(colorStateList);
        }
    }
}
