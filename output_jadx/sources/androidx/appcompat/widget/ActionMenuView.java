package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.ActionMenuItemView;
import defpackage.AbstractC0168gc;
import defpackage.C0142fc;
import defpackage.C0182h0;
import defpackage.C0259k0;
import defpackage.C0285l0;
import defpackage.C0337n0;
import defpackage.C0584wk;
import defpackage.Dn;
import defpackage.InterfaceC0170ge;
import defpackage.InterfaceC0311m0;
import defpackage.InterfaceC0363o0;
import defpackage.Kd;
import defpackage.L;
import defpackage.Ld;
import defpackage.Pd;
import defpackage.T7;

/* loaded from: classes.dex */
public class ActionMenuView extends AbstractC0168gc implements Kd, InterfaceC0170ge {
    public Ld p;
    public Context q;
    public int r;
    public boolean s;
    public C0285l0 t;
    public C0584wk u;
    public boolean v;
    public int w;
    public final int x;
    public final int y;
    public InterfaceC0363o0 z;

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        setBaselineAligned(false);
        float f = context.getResources().getDisplayMetrics().density;
        this.x = (int) (56.0f * f);
        this.y = (int) (f * 4.0f);
        this.q = context;
        this.r = 0;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [n0, android.widget.LinearLayout$LayoutParams] */
    public static C0337n0 l() {
        ?? layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.a = false;
        ((LinearLayout.LayoutParams) layoutParams).gravity = 16;
        return layoutParams;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [n0, android.widget.LinearLayout$LayoutParams] */
    public static C0337n0 m(ViewGroup.LayoutParams layoutParams) {
        C0337n0 c0337n0;
        if (layoutParams == null) {
            return l();
        }
        if (layoutParams instanceof C0337n0) {
            C0337n0 c0337n02 = (C0337n0) layoutParams;
            ?? layoutParams2 = new LinearLayout.LayoutParams((ViewGroup.LayoutParams) c0337n02);
            layoutParams2.a = c0337n02.a;
            c0337n0 = layoutParams2;
        } else {
            c0337n0 = new LinearLayout.LayoutParams(layoutParams);
        }
        if (((LinearLayout.LayoutParams) c0337n0).gravity <= 0) {
            ((LinearLayout.LayoutParams) c0337n0).gravity = 16;
        }
        return c0337n0;
    }

    @Override // defpackage.InterfaceC0170ge
    public final void b(Ld ld) {
        this.p = ld;
    }

    @Override // defpackage.Kd
    public final boolean c(Pd pd) {
        return this.p.q(pd, null, 0);
    }

    @Override // defpackage.AbstractC0168gc, android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0337n0;
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    @Override // defpackage.AbstractC0168gc, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return l();
    }

    @Override // defpackage.AbstractC0168gc, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return m(layoutParams);
    }

    public Menu getMenu() {
        if (this.p == null) {
            Context context = getContext();
            Ld ld = new Ld(context);
            this.p = ld;
            ld.e = new L(2, this);
            C0285l0 c0285l0 = new C0285l0(context);
            this.t = c0285l0;
            c0285l0.l = true;
            c0285l0.m = true;
            c0285l0.e = new T7(12);
            this.p.b(c0285l0, this.q);
            C0285l0 c0285l02 = this.t;
            c0285l02.h = this;
            this.p = c0285l02.c;
        }
        return this.p;
    }

    public Drawable getOverflowIcon() {
        getMenu();
        C0285l0 c0285l0 = this.t;
        C0259k0 c0259k0 = c0285l0.i;
        if (c0259k0 != null) {
            return c0259k0.getDrawable();
        }
        if (c0285l0.k) {
            return c0285l0.j;
        }
        return null;
    }

    public int getPopupTheme() {
        return this.r;
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // defpackage.AbstractC0168gc
    /* renamed from: h */
    public final /* bridge */ /* synthetic */ C0142fc generateDefaultLayoutParams() {
        return l();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [android.widget.LinearLayout$LayoutParams, fc] */
    @Override // defpackage.AbstractC0168gc
    /* renamed from: i */
    public final C0142fc generateLayoutParams(AttributeSet attributeSet) {
        return new LinearLayout.LayoutParams(getContext(), attributeSet);
    }

    @Override // defpackage.AbstractC0168gc
    /* renamed from: j */
    public final /* bridge */ /* synthetic */ C0142fc generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return m(layoutParams);
    }

    public final boolean n(int i) {
        boolean z = false;
        if (i == 0) {
            return false;
        }
        KeyEvent.Callback childAt = getChildAt(i - 1);
        KeyEvent.Callback childAt2 = getChildAt(i);
        if (i < getChildCount() && (childAt instanceof InterfaceC0311m0)) {
            z = ((InterfaceC0311m0) childAt).b();
        }
        return (i <= 0 || !(childAt2 instanceof InterfaceC0311m0)) ? z : z | ((InterfaceC0311m0) childAt2).a();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        C0285l0 c0285l0 = this.t;
        if (c0285l0 != null) {
            c0285l0.c();
            if (this.t.h()) {
                this.t.e();
                this.t.l();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C0285l0 c0285l0 = this.t;
        if (c0285l0 != null) {
            c0285l0.e();
            C0182h0 c0182h0 = c0285l0.t;
            if (c0182h0 == null || !c0182h0.b()) {
                return;
            }
            c0182h0.i.dismiss();
        }
    }

    @Override // defpackage.AbstractC0168gc, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int width;
        int i5;
        if (!this.v) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        int childCount = getChildCount();
        int i6 = (i4 - i2) / 2;
        int dividerWidth = getDividerWidth();
        int i7 = i3 - i;
        int paddingRight = (i7 - getPaddingRight()) - getPaddingLeft();
        boolean a = Dn.a(this);
        int i8 = 0;
        int i9 = 0;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8) {
                C0337n0 c0337n0 = (C0337n0) childAt.getLayoutParams();
                if (c0337n0.a) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (n(i10)) {
                        measuredWidth += dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (a) {
                        i5 = getPaddingLeft() + ((LinearLayout.LayoutParams) c0337n0).leftMargin;
                        width = i5 + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - ((LinearLayout.LayoutParams) c0337n0).rightMargin;
                        i5 = width - measuredWidth;
                    }
                    int i11 = i6 - (measuredHeight / 2);
                    childAt.layout(i5, i11, width, measuredHeight + i11);
                    paddingRight -= measuredWidth;
                    i8 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ((LinearLayout.LayoutParams) c0337n0).leftMargin) + ((LinearLayout.LayoutParams) c0337n0).rightMargin;
                    n(i10);
                    i9++;
                }
            }
        }
        if (childCount == 1 && i8 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i12 = (i7 / 2) - (measuredWidth2 / 2);
            int i13 = i6 - (measuredHeight2 / 2);
            childAt2.layout(i12, i13, measuredWidth2 + i12, measuredHeight2 + i13);
            return;
        }
        int i14 = i9 - (i8 ^ 1);
        int max = Math.max(0, i14 > 0 ? paddingRight / i14 : 0);
        if (a) {
            int width2 = getWidth() - getPaddingRight();
            for (int i15 = 0; i15 < childCount; i15++) {
                View childAt3 = getChildAt(i15);
                C0337n0 c0337n02 = (C0337n0) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !c0337n02.a) {
                    int i16 = width2 - ((LinearLayout.LayoutParams) c0337n02).rightMargin;
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i17 = i6 - (measuredHeight3 / 2);
                    childAt3.layout(i16 - measuredWidth3, i17, i16, measuredHeight3 + i17);
                    width2 = i16 - ((measuredWidth3 + ((LinearLayout.LayoutParams) c0337n02).leftMargin) + max);
                }
            }
            return;
        }
        int paddingLeft = getPaddingLeft();
        for (int i18 = 0; i18 < childCount; i18++) {
            View childAt4 = getChildAt(i18);
            C0337n0 c0337n03 = (C0337n0) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !c0337n03.a) {
                int i19 = paddingLeft + ((LinearLayout.LayoutParams) c0337n03).leftMargin;
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i20 = i6 - (measuredHeight4 / 2);
                childAt4.layout(i19, i20, i19 + measuredWidth4, measuredHeight4 + i20);
                paddingLeft = measuredWidth4 + ((LinearLayout.LayoutParams) c0337n03).rightMargin + max + i19;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r4v28 */
    /* JADX WARN: Type inference failed for: r4v29, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r4v31 */
    /* JADX WARN: Type inference failed for: r4v36 */
    @Override // defpackage.AbstractC0168gc, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        boolean z;
        int i4;
        boolean z2;
        int i5;
        int i6;
        int i7;
        ?? r4;
        int i8;
        int i9;
        int i10;
        Ld ld;
        boolean z3 = this.v;
        boolean z4 = View.MeasureSpec.getMode(i) == 1073741824;
        this.v = z4;
        if (z3 != z4) {
            this.w = 0;
        }
        int size = View.MeasureSpec.getSize(i);
        if (this.v && (ld = this.p) != null && size != this.w) {
            this.w = size;
            ld.p(true);
        }
        int childCount = getChildCount();
        if (!this.v || childCount <= 0) {
            for (int i11 = 0; i11 < childCount; i11++) {
                C0337n0 c0337n0 = (C0337n0) getChildAt(i11).getLayoutParams();
                ((LinearLayout.LayoutParams) c0337n0).rightMargin = 0;
                ((LinearLayout.LayoutParams) c0337n0).leftMargin = 0;
            }
            super.onMeasure(i, i2);
            return;
        }
        int mode = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i);
        int size3 = View.MeasureSpec.getSize(i2);
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, paddingBottom, -2);
        int i12 = size2 - paddingRight;
        int i13 = this.x;
        int i14 = i12 / i13;
        int i15 = i12 % i13;
        if (i14 == 0) {
            setMeasuredDimension(i12, 0);
            return;
        }
        int i16 = (i15 / i14) + i13;
        int childCount2 = getChildCount();
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        boolean z5 = false;
        int i21 = 0;
        long j = 0;
        while (true) {
            i3 = this.y;
            if (i20 >= childCount2) {
                break;
            }
            View childAt = getChildAt(i20);
            int i22 = size3;
            int i23 = i12;
            if (childAt.getVisibility() == 8) {
                i8 = mode;
                i9 = paddingBottom;
            } else {
                boolean z6 = childAt instanceof ActionMenuItemView;
                int i24 = i18 + 1;
                if (z6) {
                    childAt.setPadding(i3, 0, i3, 0);
                }
                C0337n0 c0337n02 = (C0337n0) childAt.getLayoutParams();
                c0337n02.f = false;
                c0337n02.c = 0;
                c0337n02.b = 0;
                c0337n02.d = false;
                ((LinearLayout.LayoutParams) c0337n02).leftMargin = 0;
                ((LinearLayout.LayoutParams) c0337n02).rightMargin = 0;
                c0337n02.e = z6 && !TextUtils.isEmpty(((ActionMenuItemView) childAt).getText());
                int i25 = c0337n02.a ? 1 : i14;
                C0337n0 c0337n03 = (C0337n0) childAt.getLayoutParams();
                i8 = mode;
                i9 = paddingBottom;
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(childMeasureSpec) - paddingBottom, View.MeasureSpec.getMode(childMeasureSpec));
                ActionMenuItemView actionMenuItemView = z6 ? (ActionMenuItemView) childAt : null;
                boolean z7 = (actionMenuItemView == null || TextUtils.isEmpty(actionMenuItemView.getText())) ? false : true;
                if (i25 <= 0 || (z7 && i25 < 2)) {
                    i10 = 0;
                } else {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(i25 * i16, Integer.MIN_VALUE), makeMeasureSpec);
                    int measuredWidth = childAt.getMeasuredWidth();
                    i10 = measuredWidth / i16;
                    if (measuredWidth % i16 != 0) {
                        i10++;
                    }
                    if (z7 && i10 < 2) {
                        i10 = 2;
                    }
                }
                c0337n03.d = !c0337n03.a && z7;
                c0337n03.b = i10;
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i10 * i16, 1073741824), makeMeasureSpec);
                i19 = Math.max(i19, i10);
                if (c0337n02.d) {
                    i21++;
                }
                if (c0337n02.a) {
                    z5 = true;
                }
                i14 -= i10;
                i17 = Math.max(i17, childAt.getMeasuredHeight());
                if (i10 == 1) {
                    j |= 1 << i20;
                }
                i18 = i24;
            }
            i20++;
            size3 = i22;
            i12 = i23;
            paddingBottom = i9;
            mode = i8;
        }
        int i26 = mode;
        int i27 = i12;
        int i28 = size3;
        boolean z8 = z5 && i18 == 2;
        boolean z9 = false;
        while (i21 > 0 && i14 > 0) {
            int i29 = Integer.MAX_VALUE;
            int i30 = 0;
            int i31 = 0;
            long j2 = 0;
            while (i31 < childCount2) {
                C0337n0 c0337n04 = (C0337n0) getChildAt(i31).getLayoutParams();
                boolean z10 = z9;
                if (c0337n04.d) {
                    int i32 = c0337n04.b;
                    if (i32 < i29) {
                        j2 = 1 << i31;
                        i29 = i32;
                        i30 = 1;
                    } else if (i32 == i29) {
                        j2 |= 1 << i31;
                        i30++;
                    }
                }
                i31++;
                z9 = z10;
            }
            z = z9;
            j |= j2;
            if (i30 > i14) {
                break;
            }
            int i33 = i29 + 1;
            int i34 = 0;
            while (i34 < childCount2) {
                View childAt2 = getChildAt(i34);
                C0337n0 c0337n05 = (C0337n0) childAt2.getLayoutParams();
                int i35 = i17;
                int i36 = childMeasureSpec;
                int i37 = childCount2;
                long j3 = 1 << i34;
                if ((j2 & j3) != 0) {
                    if (z8 && c0337n05.e) {
                        r4 = 1;
                        r4 = 1;
                        if (i14 == 1) {
                            childAt2.setPadding(i3 + i16, 0, i3, 0);
                        }
                    } else {
                        r4 = 1;
                    }
                    c0337n05.b += r4;
                    c0337n05.f = r4;
                    i14--;
                } else if (c0337n05.b == i33) {
                    j |= j3;
                }
                i34++;
                childMeasureSpec = i36;
                i17 = i35;
                childCount2 = i37;
            }
            z9 = true;
        }
        z = z9;
        int i38 = i17;
        int i39 = childMeasureSpec;
        int i40 = childCount2;
        boolean z11 = !z5 && i18 == 1;
        if (i14 <= 0 || j == 0 || (i14 >= i18 - 1 && !z11 && i19 <= 1)) {
            i4 = i40;
            z2 = z;
        } else {
            float bitCount = Long.bitCount(j);
            if (!z11) {
                if ((j & 1) != 0 && !((C0337n0) getChildAt(0).getLayoutParams()).e) {
                    bitCount -= 0.5f;
                }
                int i41 = i40 - 1;
                if ((j & (1 << i41)) != 0 && !((C0337n0) getChildAt(i41).getLayoutParams()).e) {
                    bitCount -= 0.5f;
                }
            }
            int i42 = bitCount > 0.0f ? (int) ((i14 * i16) / bitCount) : 0;
            boolean z12 = z;
            i4 = i40;
            for (int i43 = 0; i43 < i4; i43++) {
                if ((j & (1 << i43)) != 0) {
                    View childAt3 = getChildAt(i43);
                    C0337n0 c0337n06 = (C0337n0) childAt3.getLayoutParams();
                    if (childAt3 instanceof ActionMenuItemView) {
                        c0337n06.c = i42;
                        c0337n06.f = true;
                        if (i43 == 0 && !c0337n06.e) {
                            ((LinearLayout.LayoutParams) c0337n06).leftMargin = (-i42) / 2;
                        }
                        z12 = true;
                    } else {
                        if (c0337n06.a) {
                            c0337n06.c = i42;
                            c0337n06.f = true;
                            ((LinearLayout.LayoutParams) c0337n06).rightMargin = (-i42) / 2;
                            z12 = true;
                        } else {
                            if (i43 != 0) {
                                ((LinearLayout.LayoutParams) c0337n06).leftMargin = i42 / 2;
                            }
                            if (i43 != i4 - 1) {
                                ((LinearLayout.LayoutParams) c0337n06).rightMargin = i42 / 2;
                            }
                        }
                    }
                }
            }
            z2 = z12;
        }
        if (z2) {
            int i44 = 0;
            while (i44 < i4) {
                View childAt4 = getChildAt(i44);
                C0337n0 c0337n07 = (C0337n0) childAt4.getLayoutParams();
                if (c0337n07.f) {
                    i7 = i39;
                    childAt4.measure(View.MeasureSpec.makeMeasureSpec((c0337n07.b * i16) + c0337n07.c, 1073741824), i7);
                } else {
                    i7 = i39;
                }
                i44++;
                i39 = i7;
            }
        }
        if (i26 != 1073741824) {
            i6 = i27;
            i5 = i38;
        } else {
            i5 = i28;
            i6 = i27;
        }
        setMeasuredDimension(i6, i5);
    }

    public void setExpandedActionViewsExclusive(boolean z) {
        this.t.q = z;
    }

    public void setOnMenuItemClickListener(InterfaceC0363o0 interfaceC0363o0) {
        this.z = interfaceC0363o0;
    }

    public void setOverflowIcon(Drawable drawable) {
        getMenu();
        C0285l0 c0285l0 = this.t;
        C0259k0 c0259k0 = c0285l0.i;
        if (c0259k0 != null) {
            c0259k0.setImageDrawable(drawable);
        } else {
            c0285l0.k = true;
            c0285l0.j = drawable;
        }
    }

    public void setOverflowReserved(boolean z) {
        this.s = z;
    }

    public void setPopupTheme(int i) {
        if (this.r != i) {
            this.r = i;
            if (i == 0) {
                this.q = getContext();
            } else {
                this.q = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setPresenter(C0285l0 c0285l0) {
        this.t = c0285l0;
        c0285l0.h = this;
        this.p = c0285l0.c;
    }

    @Override // defpackage.AbstractC0168gc, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LinearLayout.LayoutParams(getContext(), attributeSet);
    }
}
