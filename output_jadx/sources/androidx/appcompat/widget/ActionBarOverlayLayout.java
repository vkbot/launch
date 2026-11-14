package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.OverScroller;
import com.omoda.launcher.R;
import defpackage.AbstractC0205hn;
import defpackage.Ae;
import defpackage.Be;
import defpackage.C0001a0;
import defpackage.C0079d0;
import defpackage.C0090db;
import defpackage.C0128eo;
import defpackage.C0285l0;
import defpackage.C0387oo;
import defpackage.C0413po;
import defpackage.C0612xn;
import defpackage.C0634yk;
import defpackage.C6;
import defpackage.D6;
import defpackage.Dk;
import defpackage.E6;
import defpackage.InterfaceC0053c0;
import defpackage.InterfaceC0093de;
import defpackage.InterfaceC0653ze;
import defpackage.Ld;
import defpackage.Rm;
import defpackage.RunnableC0027b0;
import defpackage.Vm;
import defpackage.Xm;
import defpackage.qo;
import defpackage.wo;
import defpackage.yo;
import java.util.WeakHashMap;

@SuppressLint({"UnknownNullness"})
/* loaded from: classes.dex */
public class ActionBarOverlayLayout extends ViewGroup implements D6, InterfaceC0653ze, Ae {
    public static final int[] B = {R.attr.actionBarSize, android.R.attr.windowContentOverlay};
    public final Be A;
    public int a;
    public int b;
    public ContentFrameLayout c;
    public ActionBarContainer d;
    public E6 e;
    public Drawable f;
    public boolean g;
    public boolean h;
    public boolean i;
    public boolean j;
    public boolean k;
    public int l;
    public int m;
    public final Rect n;
    public final Rect o;
    public final Rect p;
    public yo q;
    public yo r;
    public yo s;
    public yo t;
    public InterfaceC0053c0 u;
    public OverScroller v;
    public ViewPropertyAnimator w;
    public final C0001a0 x;
    public final RunnableC0027b0 y;
    public final RunnableC0027b0 z;

    /* JADX WARN: Type inference failed for: r2v1, types: [Be, java.lang.Object] */
    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = 0;
        this.n = new Rect();
        this.o = new Rect();
        this.p = new Rect();
        new Rect();
        new Rect();
        new Rect();
        new Rect();
        yo yoVar = yo.b;
        this.q = yoVar;
        this.r = yoVar;
        this.s = yoVar;
        this.t = yoVar;
        this.x = new C0001a0(0, this);
        this.y = new RunnableC0027b0(this, 0);
        this.z = new RunnableC0027b0(this, 1);
        i(context);
        this.A = new Object();
    }

    public static boolean g(View view, Rect rect, boolean z) {
        boolean z2;
        C0079d0 c0079d0 = (C0079d0) view.getLayoutParams();
        int i = ((ViewGroup.MarginLayoutParams) c0079d0).leftMargin;
        int i2 = rect.left;
        if (i != i2) {
            ((ViewGroup.MarginLayoutParams) c0079d0).leftMargin = i2;
            z2 = true;
        } else {
            z2 = false;
        }
        int i3 = ((ViewGroup.MarginLayoutParams) c0079d0).topMargin;
        int i4 = rect.top;
        if (i3 != i4) {
            ((ViewGroup.MarginLayoutParams) c0079d0).topMargin = i4;
            z2 = true;
        }
        int i5 = ((ViewGroup.MarginLayoutParams) c0079d0).rightMargin;
        int i6 = rect.right;
        if (i5 != i6) {
            ((ViewGroup.MarginLayoutParams) c0079d0).rightMargin = i6;
            z2 = true;
        }
        if (z) {
            int i7 = ((ViewGroup.MarginLayoutParams) c0079d0).bottomMargin;
            int i8 = rect.bottom;
            if (i7 != i8) {
                ((ViewGroup.MarginLayoutParams) c0079d0).bottomMargin = i8;
                return true;
            }
        }
        return z2;
    }

    @Override // defpackage.InterfaceC0653ze
    public final void a(View view, View view2, int i, int i2) {
        if (i2 == 0) {
            onNestedScrollAccepted(view, view2, i);
        }
    }

    @Override // defpackage.Ae
    public final void b(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        c(view, i, i2, i3, i4, i5);
    }

    @Override // defpackage.InterfaceC0653ze
    public final void c(View view, int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            onNestedScroll(view, i, i2, i3, i4);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0079d0;
    }

    @Override // defpackage.InterfaceC0653ze
    public final void d(View view, int i) {
        if (i == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int i;
        super.draw(canvas);
        if (this.f == null || this.g) {
            return;
        }
        if (this.d.getVisibility() == 0) {
            i = (int) (this.d.getTranslationY() + this.d.getBottom() + 0.5f);
        } else {
            i = 0;
        }
        this.f.setBounds(0, i, getWidth(), this.f.getIntrinsicHeight() + i);
        this.f.draw(canvas);
    }

    @Override // defpackage.InterfaceC0653ze
    public final void e(View view, int i, int i2, int[] iArr, int i3) {
    }

    @Override // defpackage.InterfaceC0653ze
    public final boolean f(View view, View view2, int i, int i2) {
        return i2 == 0 && onStartNestedScroll(view, view2, i);
    }

    @Override // android.view.View
    public final boolean fitSystemWindows(Rect rect) {
        return super.fitSystemWindows(rect);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.d;
        if (actionBarContainer != null) {
            return -((int) actionBarContainer.getTranslationY());
        }
        return 0;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        Be be = this.A;
        return be.b | be.a;
    }

    public CharSequence getTitle() {
        k();
        return ((Dk) this.e).a.getTitle();
    }

    public final void h() {
        removeCallbacks(this.y);
        removeCallbacks(this.z);
        ViewPropertyAnimator viewPropertyAnimator = this.w;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    public final void i(Context context) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(B);
        this.a = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        this.f = drawable;
        setWillNotDraw(drawable == null);
        obtainStyledAttributes.recycle();
        this.g = context.getApplicationInfo().targetSdkVersion < 19;
        this.v = new OverScroller(context);
    }

    public final void j(int i) {
        k();
        if (i == 2) {
            ((Dk) this.e).getClass();
            Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
        } else if (i == 5) {
            ((Dk) this.e).getClass();
            Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
        } else {
            if (i != 109) {
                return;
            }
            setOverlayMode(true);
        }
    }

    public final void k() {
        E6 wrapper;
        if (this.c == null) {
            this.c = (ContentFrameLayout) findViewById(R.id.action_bar_activity_content);
            this.d = (ActionBarContainer) findViewById(R.id.action_bar_container);
            KeyEvent.Callback findViewById = findViewById(R.id.action_bar);
            if (findViewById instanceof E6) {
                wrapper = (E6) findViewById;
            } else {
                if (!(findViewById instanceof Toolbar)) {
                    throw new IllegalStateException("Can't make a decor toolbar out of ".concat(findViewById.getClass().getSimpleName()));
                }
                wrapper = ((Toolbar) findViewById).getWrapper();
            }
            this.e = wrapper;
        }
    }

    public final void l(Ld ld, InterfaceC0093de interfaceC0093de) {
        k();
        Dk dk = (Dk) this.e;
        C0285l0 c0285l0 = dk.m;
        Toolbar toolbar = dk.a;
        if (c0285l0 == null) {
            dk.m = new C0285l0(toolbar.getContext());
        }
        C0285l0 c0285l02 = dk.m;
        c0285l02.e = interfaceC0093de;
        if (ld == null && toolbar.a == null) {
            return;
        }
        toolbar.f();
        Ld ld2 = toolbar.a.p;
        if (ld2 == ld) {
            return;
        }
        if (ld2 != null) {
            ld2.r(toolbar.K);
            ld2.r(toolbar.L);
        }
        if (toolbar.L == null) {
            toolbar.L = new C0634yk(toolbar);
        }
        c0285l02.q = true;
        if (ld != null) {
            ld.b(c0285l02, toolbar.j);
            ld.b(toolbar.L, toolbar.j);
        } else {
            c0285l02.f(toolbar.j, null);
            toolbar.L.f(toolbar.j, null);
            c0285l02.c();
            toolbar.L.c();
        }
        toolbar.a.setPopupTheme(toolbar.k);
        toolbar.a.setPresenter(c0285l02);
        toolbar.K = c0285l02;
        toolbar.v();
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        k();
        yo f = yo.f(this, windowInsets);
        boolean g = g(this.d, new Rect(f.b(), f.d(), f.c(), f.a()), false);
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        Rect rect = this.n;
        Xm.b(this, f, rect);
        int i = rect.left;
        int i2 = rect.top;
        int i3 = rect.right;
        int i4 = rect.bottom;
        wo woVar = f.a;
        yo l = woVar.l(i, i2, i3, i4);
        this.q = l;
        boolean z = true;
        if (!this.r.equals(l)) {
            this.r = this.q;
            g = true;
        }
        Rect rect2 = this.o;
        if (rect2.equals(rect)) {
            z = g;
        } else {
            rect2.set(rect);
        }
        if (z) {
            requestLayout();
        }
        return woVar.a().a.c().a.b().e();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        i(getContext());
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        Vm.c(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        h();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                C0079d0 c0079d0 = (C0079d0) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i6 = ((ViewGroup.MarginLayoutParams) c0079d0).leftMargin + paddingLeft;
                int i7 = ((ViewGroup.MarginLayoutParams) c0079d0).topMargin + paddingTop;
                childAt.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
            }
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int measuredHeight;
        k();
        measureChildWithMargins(this.d, i, 0, i2, 0);
        C0079d0 c0079d0 = (C0079d0) this.d.getLayoutParams();
        int max = Math.max(0, this.d.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) c0079d0).leftMargin + ((ViewGroup.MarginLayoutParams) c0079d0).rightMargin);
        int max2 = Math.max(0, this.d.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) c0079d0).topMargin + ((ViewGroup.MarginLayoutParams) c0079d0).bottomMargin);
        int combineMeasuredStates = View.combineMeasuredStates(0, this.d.getMeasuredState());
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        boolean z = (Rm.g(this) & 256) != 0;
        if (z) {
            measuredHeight = this.a;
            if (this.i && this.d.getTabContainer() != null) {
                measuredHeight += this.a;
            }
        } else {
            measuredHeight = this.d.getVisibility() != 8 ? this.d.getMeasuredHeight() : 0;
        }
        Rect rect = this.n;
        Rect rect2 = this.p;
        rect2.set(rect);
        yo yoVar = this.q;
        this.s = yoVar;
        if (this.h || z) {
            C0090db b = C0090db.b(yoVar.b(), this.s.d() + measuredHeight, this.s.c(), this.s.a());
            yo yoVar2 = this.s;
            qo c0413po = Build.VERSION.SDK_INT >= 30 ? new C0413po(yoVar2) : new C0387oo(yoVar2);
            c0413po.f(b);
            this.s = c0413po.b();
        } else {
            rect2.top += measuredHeight;
            rect2.bottom = rect2.bottom;
            this.s = yoVar.a.l(0, measuredHeight, 0, 0);
        }
        g(this.c, rect2, true);
        if (!this.t.equals(this.s)) {
            yo yoVar3 = this.s;
            this.t = yoVar3;
            ContentFrameLayout contentFrameLayout = this.c;
            WindowInsets e = yoVar3.e();
            if (e != null) {
                WindowInsets a = Vm.a(contentFrameLayout, e);
                if (!a.equals(e)) {
                    yo.f(contentFrameLayout, a);
                }
            }
        }
        measureChildWithMargins(this.c, i, 0, i2, 0);
        C0079d0 c0079d02 = (C0079d0) this.c.getLayoutParams();
        int max3 = Math.max(max, this.c.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) c0079d02).leftMargin + ((ViewGroup.MarginLayoutParams) c0079d02).rightMargin);
        int max4 = Math.max(max2, this.c.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) c0079d02).topMargin + ((ViewGroup.MarginLayoutParams) c0079d02).bottomMargin);
        int combineMeasuredStates2 = View.combineMeasuredStates(combineMeasuredStates, this.c.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(getPaddingRight() + getPaddingLeft() + max3, getSuggestedMinimumWidth()), i, combineMeasuredStates2), View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + max4, getSuggestedMinimumHeight()), i2, combineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (!this.j || !z) {
            return false;
        }
        this.v.fling(0, 0, 0, (int) f2, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
        if (this.v.getFinalY() > this.d.getHeight()) {
            h();
            this.z.run();
        } else {
            h();
            this.y.run();
        }
        this.k = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        int i5 = this.l + i2;
        this.l = i5;
        setActionBarHideOffset(i5);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i) {
        C0128eo c0128eo;
        C0612xn c0612xn;
        this.A.a = i;
        this.l = getActionBarHideOffset();
        h();
        InterfaceC0053c0 interfaceC0053c0 = this.u;
        if (interfaceC0053c0 == null || (c0612xn = (c0128eo = (C0128eo) interfaceC0053c0).I) == null) {
            return;
        }
        c0612xn.a();
        c0128eo.I = null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i) {
        if ((i & 2) == 0 || this.d.getVisibility() != 0) {
            return false;
        }
        return this.j;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        if (!this.j || this.k) {
            return;
        }
        if (this.l <= this.d.getHeight()) {
            h();
            postDelayed(this.y, 600L);
        } else {
            h();
            postDelayed(this.z, 600L);
        }
    }

    @Override // android.view.View
    public final void onWindowSystemUiVisibilityChanged(int i) {
        super.onWindowSystemUiVisibilityChanged(i);
        k();
        int i2 = this.m ^ i;
        this.m = i;
        boolean z = (i & 4) == 0;
        boolean z2 = (i & 256) != 0;
        InterfaceC0053c0 interfaceC0053c0 = this.u;
        if (interfaceC0053c0 != null) {
            C0128eo c0128eo = (C0128eo) interfaceC0053c0;
            c0128eo.E = !z2;
            if (z || !z2) {
                if (c0128eo.F) {
                    c0128eo.F = false;
                    c0128eo.Z(true);
                }
            } else if (!c0128eo.F) {
                c0128eo.F = true;
                c0128eo.Z(true);
            }
        }
        if ((i2 & 256) == 0 || this.u == null) {
            return;
        }
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        Vm.c(this);
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        this.b = i;
        InterfaceC0053c0 interfaceC0053c0 = this.u;
        if (interfaceC0053c0 != null) {
            ((C0128eo) interfaceC0053c0).D = i;
        }
    }

    public void setActionBarHideOffset(int i) {
        h();
        this.d.setTranslationY(-Math.max(0, Math.min(i, this.d.getHeight())));
    }

    public void setActionBarVisibilityCallback(InterfaceC0053c0 interfaceC0053c0) {
        this.u = interfaceC0053c0;
        if (getWindowToken() != null) {
            ((C0128eo) this.u).D = this.b;
            int i = this.m;
            if (i != 0) {
                onWindowSystemUiVisibilityChanged(i);
                WeakHashMap weakHashMap = AbstractC0205hn.a;
                Vm.c(this);
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean z) {
        this.i = z;
    }

    public void setHideOnContentScrollEnabled(boolean z) {
        if (z != this.j) {
            this.j = z;
            if (z) {
                return;
            }
            h();
            setActionBarHideOffset(0);
        }
    }

    public void setIcon(int i) {
        k();
        Dk dk = (Dk) this.e;
        dk.d = i != 0 ? C6.n(dk.a.getContext(), i) : null;
        dk.c();
    }

    public void setLogo(int i) {
        k();
        Dk dk = (Dk) this.e;
        dk.e = i != 0 ? C6.n(dk.a.getContext(), i) : null;
        dk.c();
    }

    public void setOverlayMode(boolean z) {
        this.h = z;
        this.g = z && getContext().getApplicationInfo().targetSdkVersion < 19;
    }

    public void setShowingForActionMode(boolean z) {
    }

    public void setUiOptions(int i) {
    }

    @Override // defpackage.D6
    public void setWindowCallback(Window.Callback callback) {
        k();
        ((Dk) this.e).k = callback;
    }

    @Override // defpackage.D6
    public void setWindowTitle(CharSequence charSequence) {
        k();
        Dk dk = (Dk) this.e;
        if (dk.g) {
            return;
        }
        dk.h = charSequence;
        if ((dk.b & 8) != 0) {
            Toolbar toolbar = dk.a;
            toolbar.setTitle(charSequence);
            if (dk.g) {
                AbstractC0205hn.i(toolbar.getRootView(), charSequence);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ViewGroup.MarginLayoutParams(layoutParams);
    }

    public void setIcon(Drawable drawable) {
        k();
        Dk dk = (Dk) this.e;
        dk.d = drawable;
        dk.c();
    }
}
