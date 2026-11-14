package com.google.android.material.button;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Parcelable;
import android.text.Layout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import defpackage.AbstractC0078d;
import defpackage.AbstractC0145ff;
import defpackage.AbstractC0152fm;
import defpackage.AbstractC0205hn;
import defpackage.AbstractC0348nb;
import defpackage.AbstractC0407pi;
import defpackage.B7;
import defpackage.C0080d1;
import defpackage.C0103e;
import defpackage.C0350nd;
import defpackage.C0376od;
import defpackage.C6;
import defpackage.InterfaceC0148fi;
import defpackage.InterfaceC0324md;
import defpackage.L;
import defpackage.Qj;
import defpackage.Sm;
import defpackage.Uh;
import defpackage.Vh;
import defpackage.Yf;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class MaterialButton extends C0080d1 implements Checkable, InterfaceC0148fi {
    public static final int[] r = {R.attr.state_checkable};
    public static final int[] s = {R.attr.state_checked};
    public final C0376od d;
    public final LinkedHashSet e;
    public InterfaceC0324md f;
    public PorterDuff.Mode g;
    public ColorStateList h;
    public Drawable i;
    public String j;
    public int k;
    public int l;
    public int m;
    public int n;
    public boolean o;
    public boolean p;
    public int q;

    public MaterialButton(Context context, AttributeSet attributeSet) {
        super(AbstractC0152fm.R(context, attributeSet, com.omoda.launcher.R.attr.materialButtonStyle, com.omoda.launcher.R.style.Widget_MaterialComponents_Button), attributeSet, com.omoda.launcher.R.attr.materialButtonStyle);
        this.e = new LinkedHashSet();
        this.o = false;
        this.p = false;
        Context context2 = getContext();
        TypedArray Q = AbstractC0348nb.Q(context2, attributeSet, Yf.j, com.omoda.launcher.R.attr.materialButtonStyle, com.omoda.launcher.R.style.Widget_MaterialComponents_Button, new int[0]);
        this.n = Q.getDimensionPixelSize(12, 0);
        int i = Q.getInt(15, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        this.g = AbstractC0145ff.B(i, mode);
        this.h = AbstractC0348nb.B(getContext(), Q, 14);
        this.i = AbstractC0348nb.D(getContext(), Q, 10);
        this.q = Q.getInteger(11, 1);
        this.k = Q.getDimensionPixelSize(13, 0);
        C0376od c0376od = new C0376od(this, Vh.b(context2, attributeSet, com.omoda.launcher.R.attr.materialButtonStyle, com.omoda.launcher.R.style.Widget_MaterialComponents_Button).a());
        this.d = c0376od;
        c0376od.c = Q.getDimensionPixelOffset(1, 0);
        c0376od.d = Q.getDimensionPixelOffset(2, 0);
        c0376od.e = Q.getDimensionPixelOffset(3, 0);
        c0376od.f = Q.getDimensionPixelOffset(4, 0);
        if (Q.hasValue(8)) {
            int dimensionPixelSize = Q.getDimensionPixelSize(8, -1);
            c0376od.g = dimensionPixelSize;
            float f = dimensionPixelSize;
            Uh e = c0376od.b.e();
            e.e = new C0103e(f);
            e.f = new C0103e(f);
            e.g = new C0103e(f);
            e.h = new C0103e(f);
            c0376od.c(e.a());
            c0376od.p = true;
        }
        c0376od.h = Q.getDimensionPixelSize(20, 0);
        c0376od.i = AbstractC0145ff.B(Q.getInt(7, -1), mode);
        c0376od.j = AbstractC0348nb.B(getContext(), Q, 6);
        c0376od.k = AbstractC0348nb.B(getContext(), Q, 19);
        c0376od.l = AbstractC0348nb.B(getContext(), Q, 16);
        c0376od.q = Q.getBoolean(5, false);
        c0376od.t = Q.getDimensionPixelSize(9, 0);
        c0376od.r = Q.getBoolean(21, true);
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        int f2 = Sm.f(this);
        int paddingTop = getPaddingTop();
        int e2 = Sm.e(this);
        int paddingBottom = getPaddingBottom();
        if (Q.hasValue(0)) {
            c0376od.o = true;
            setSupportBackgroundTintList(c0376od.j);
            setSupportBackgroundTintMode(c0376od.i);
        } else {
            c0376od.e();
        }
        Sm.k(this, f2 + c0376od.c, paddingTop + c0376od.e, e2 + c0376od.d, paddingBottom + c0376od.f);
        Q.recycle();
        setCompoundDrawablePadding(this.n);
        d(this.i != null);
    }

    private Layout.Alignment getActualTextAlignment() {
        int textAlignment = getTextAlignment();
        return textAlignment != 1 ? (textAlignment == 6 || textAlignment == 3) ? Layout.Alignment.ALIGN_OPPOSITE : textAlignment != 4 ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_CENTER : getGravityTextAlignment();
    }

    private Layout.Alignment getGravityTextAlignment() {
        int gravity = getGravity() & 8388615;
        return gravity != 1 ? (gravity == 5 || gravity == 8388613) ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_CENTER;
    }

    private int getTextHeight() {
        if (getLineCount() > 1) {
            return getLayout().getHeight();
        }
        TextPaint paint = getPaint();
        String charSequence = getText().toString();
        if (getTransformationMethod() != null) {
            charSequence = getTransformationMethod().getTransformation(charSequence, this).toString();
        }
        Rect rect = new Rect();
        paint.getTextBounds(charSequence, 0, charSequence.length(), rect);
        return Math.min(rect.height(), getLayout().getHeight());
    }

    private int getTextLayoutWidth() {
        int lineCount = getLineCount();
        float f = 0.0f;
        for (int i = 0; i < lineCount; i++) {
            f = Math.max(f, getLayout().getLineWidth(i));
        }
        return (int) Math.ceil(f);
    }

    public final boolean a() {
        C0376od c0376od = this.d;
        return c0376od != null && c0376od.q;
    }

    public final boolean b() {
        C0376od c0376od = this.d;
        return (c0376od == null || c0376od.o) ? false : true;
    }

    public final void c() {
        int i = this.q;
        boolean z = true;
        if (i != 1 && i != 2) {
            z = false;
        }
        if (z) {
            Qj.e(this, this.i, null, null, null);
            return;
        }
        if (i == 3 || i == 4) {
            Qj.e(this, null, null, this.i, null);
        } else if (i == 16 || i == 32) {
            Qj.e(this, null, this.i, null, null);
        }
    }

    public final void d(boolean z) {
        Drawable drawable = this.i;
        if (drawable != null) {
            Drawable mutate = drawable.mutate();
            this.i = mutate;
            B7.h(mutate, this.h);
            PorterDuff.Mode mode = this.g;
            if (mode != null) {
                B7.i(this.i, mode);
            }
            int i = this.k;
            if (i == 0) {
                i = this.i.getIntrinsicWidth();
            }
            int i2 = this.k;
            if (i2 == 0) {
                i2 = this.i.getIntrinsicHeight();
            }
            Drawable drawable2 = this.i;
            int i3 = this.l;
            int i4 = this.m;
            drawable2.setBounds(i3, i4, i + i3, i2 + i4);
            this.i.setVisible(true, z);
        }
        if (z) {
            c();
            return;
        }
        Drawable[] a = Qj.a(this);
        Drawable drawable3 = a[0];
        Drawable drawable4 = a[1];
        Drawable drawable5 = a[2];
        int i5 = this.q;
        if (((i5 == 1 || i5 == 2) && drawable3 != this.i) || (((i5 == 3 || i5 == 4) && drawable5 != this.i) || ((i5 == 16 || i5 == 32) && drawable4 != this.i))) {
            c();
        }
    }

    public final void e(int i, int i2) {
        if (this.i == null || getLayout() == null) {
            return;
        }
        int i3 = this.q;
        if (!(i3 == 1 || i3 == 2) && i3 != 3 && i3 != 4) {
            if (i3 == 16 || i3 == 32) {
                this.l = 0;
                if (i3 == 16) {
                    this.m = 0;
                    d(false);
                    return;
                }
                int i4 = this.k;
                if (i4 == 0) {
                    i4 = this.i.getIntrinsicHeight();
                }
                int max = Math.max(0, (((((i2 - getTextHeight()) - getPaddingTop()) - i4) - this.n) - getPaddingBottom()) / 2);
                if (this.m != max) {
                    this.m = max;
                    d(false);
                    return;
                }
                return;
            }
            return;
        }
        this.m = 0;
        Layout.Alignment actualTextAlignment = getActualTextAlignment();
        int i5 = this.q;
        if (i5 == 1 || i5 == 3 || ((i5 == 2 && actualTextAlignment == Layout.Alignment.ALIGN_NORMAL) || (i5 == 4 && actualTextAlignment == Layout.Alignment.ALIGN_OPPOSITE))) {
            this.l = 0;
            d(false);
            return;
        }
        int i6 = this.k;
        if (i6 == 0) {
            i6 = this.i.getIntrinsicWidth();
        }
        int textLayoutWidth = i - getTextLayoutWidth();
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        int e = (((textLayoutWidth - Sm.e(this)) - i6) - this.n) - Sm.f(this);
        if (actualTextAlignment == Layout.Alignment.ALIGN_CENTER) {
            e /= 2;
        }
        if ((Sm.d(this) == 1) != (this.q == 4)) {
            e = -e;
        }
        if (this.l != e) {
            this.l = e;
            d(false);
        }
    }

    public String getA11yClassName() {
        if (TextUtils.isEmpty(this.j)) {
            return (a() ? CompoundButton.class : Button.class).getName();
        }
        return this.j;
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    public int getCornerRadius() {
        if (b()) {
            return this.d.g;
        }
        return 0;
    }

    public Drawable getIcon() {
        return this.i;
    }

    public int getIconGravity() {
        return this.q;
    }

    public int getIconPadding() {
        return this.n;
    }

    public int getIconSize() {
        return this.k;
    }

    public ColorStateList getIconTint() {
        return this.h;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.g;
    }

    public int getInsetBottom() {
        return this.d.f;
    }

    public int getInsetTop() {
        return this.d.e;
    }

    public ColorStateList getRippleColor() {
        if (b()) {
            return this.d.l;
        }
        return null;
    }

    public Vh getShapeAppearanceModel() {
        if (b()) {
            return this.d.b;
        }
        throw new IllegalStateException("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
    }

    public ColorStateList getStrokeColor() {
        if (b()) {
            return this.d.k;
        }
        return null;
    }

    public int getStrokeWidth() {
        if (b()) {
            return this.d.h;
        }
        return 0;
    }

    @Override // defpackage.C0080d1
    public ColorStateList getSupportBackgroundTintList() {
        return b() ? this.d.j : super.getSupportBackgroundTintList();
    }

    @Override // defpackage.C0080d1
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return b() ? this.d.i : super.getSupportBackgroundTintMode();
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.o;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (b()) {
            AbstractC0152fm.N(this, this.d.b(false));
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (a()) {
            View.mergeDrawableStates(onCreateDrawableState, r);
        }
        if (this.o) {
            View.mergeDrawableStates(onCreateDrawableState, s);
        }
        return onCreateDrawableState;
    }

    @Override // defpackage.C0080d1, android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(getA11yClassName());
        accessibilityEvent.setChecked(this.o);
    }

    @Override // defpackage.C0080d1, android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getA11yClassName());
        accessibilityNodeInfo.setCheckable(a());
        accessibilityNodeInfo.setChecked(this.o);
        accessibilityNodeInfo.setClickable(isClickable());
    }

    @Override // defpackage.C0080d1, android.widget.TextView, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        e(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C0350nd)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C0350nd c0350nd = (C0350nd) parcelable;
        super.onRestoreInstanceState(c0350nd.a);
        setChecked(c0350nd.c);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [android.os.Parcelable, d, nd] */
    @Override // android.widget.TextView, android.view.View
    public final Parcelable onSaveInstanceState() {
        ?? abstractC0078d = new AbstractC0078d(super.onSaveInstanceState());
        abstractC0078d.c = this.o;
        return abstractC0078d;
    }

    @Override // defpackage.C0080d1, android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        e(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public final boolean performClick() {
        if (this.d.r) {
            toggle();
        }
        return super.performClick();
    }

    @Override // android.view.View
    public final void refreshDrawableState() {
        super.refreshDrawableState();
        if (this.i != null) {
            if (this.i.setState(getDrawableState())) {
                invalidate();
            }
        }
    }

    public void setA11yClassName(String str) {
        this.j = str;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        if (!b()) {
            super.setBackgroundColor(i);
            return;
        }
        C0376od c0376od = this.d;
        if (c0376od.b(false) != null) {
            c0376od.b(false).setTint(i);
        }
    }

    @Override // defpackage.C0080d1, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (!b()) {
            super.setBackgroundDrawable(drawable);
            return;
        }
        if (drawable == getBackground()) {
            getBackground().setState(drawable.getState());
            return;
        }
        Log.w("MaterialButton", "MaterialButton manages its own background to control elevation, shape, color and states. Consider using backgroundTint, shapeAppearance and other attributes where available. A custom background will ignore these attributes and you should consider handling interaction states such as pressed, focused and disabled");
        C0376od c0376od = this.d;
        c0376od.o = true;
        ColorStateList colorStateList = c0376od.j;
        MaterialButton materialButton = c0376od.a;
        materialButton.setSupportBackgroundTintList(colorStateList);
        materialButton.setSupportBackgroundTintMode(c0376od.i);
        super.setBackgroundDrawable(drawable);
    }

    @Override // defpackage.C0080d1, android.view.View
    public void setBackgroundResource(int i) {
        setBackgroundDrawable(i != 0 ? C6.n(getContext(), i) : null);
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    public void setCheckable(boolean z) {
        if (b()) {
            this.d.q = z;
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (a() && isEnabled() && this.o != z) {
            this.o = z;
            refreshDrawableState();
            if (getParent() instanceof MaterialButtonToggleGroup) {
                MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) getParent();
                boolean z2 = this.o;
                if (!materialButtonToggleGroup.f) {
                    materialButtonToggleGroup.b(getId(), z2);
                }
            }
            if (this.p) {
                return;
            }
            this.p = true;
            Iterator it = this.e.iterator();
            if (it.hasNext()) {
                throw AbstractC0407pi.f(it);
            }
            this.p = false;
        }
    }

    public void setCornerRadius(int i) {
        if (b()) {
            C0376od c0376od = this.d;
            if (c0376od.p && c0376od.g == i) {
                return;
            }
            c0376od.g = i;
            c0376od.p = true;
            float f = i;
            Uh e = c0376od.b.e();
            e.e = new C0103e(f);
            e.f = new C0103e(f);
            e.g = new C0103e(f);
            e.h = new C0103e(f);
            c0376od.c(e.a());
        }
    }

    public void setCornerRadiusResource(int i) {
        if (b()) {
            setCornerRadius(getResources().getDimensionPixelSize(i));
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        if (b()) {
            this.d.b(false).h(f);
        }
    }

    public void setIcon(Drawable drawable) {
        if (this.i != drawable) {
            this.i = drawable;
            d(true);
            e(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconGravity(int i) {
        if (this.q != i) {
            this.q = i;
            e(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconPadding(int i) {
        if (this.n != i) {
            this.n = i;
            setCompoundDrawablePadding(i);
        }
    }

    public void setIconResource(int i) {
        setIcon(i != 0 ? C6.n(getContext(), i) : null);
    }

    public void setIconSize(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("iconSize cannot be less than 0");
        }
        if (this.k != i) {
            this.k = i;
            d(true);
        }
    }

    public void setIconTint(ColorStateList colorStateList) {
        if (this.h != colorStateList) {
            this.h = colorStateList;
            d(false);
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.g != mode) {
            this.g = mode;
            d(false);
        }
    }

    public void setIconTintResource(int i) {
        setIconTint(AbstractC0152fm.m(getContext(), i));
    }

    public void setInsetBottom(int i) {
        C0376od c0376od = this.d;
        c0376od.d(c0376od.e, i);
    }

    public void setInsetTop(int i) {
        C0376od c0376od = this.d;
        c0376od.d(i, c0376od.f);
    }

    public void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    public void setOnPressedChangeListenerInternal(InterfaceC0324md interfaceC0324md) {
        this.f = interfaceC0324md;
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        InterfaceC0324md interfaceC0324md = this.f;
        if (interfaceC0324md != null) {
            ((MaterialButtonToggleGroup) ((L) interfaceC0324md).b).invalidate();
        }
        super.setPressed(z);
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (b()) {
            C0376od c0376od = this.d;
            if (c0376od.l != colorStateList) {
                c0376od.l = colorStateList;
                MaterialButton materialButton = c0376od.a;
                if (materialButton.getBackground() instanceof RippleDrawable) {
                    RippleDrawable rippleDrawable = (RippleDrawable) materialButton.getBackground();
                    if (colorStateList == null) {
                        colorStateList = ColorStateList.valueOf(0);
                    }
                    rippleDrawable.setColor(colorStateList);
                }
            }
        }
    }

    public void setRippleColorResource(int i) {
        if (b()) {
            setRippleColor(AbstractC0152fm.m(getContext(), i));
        }
    }

    @Override // defpackage.InterfaceC0148fi
    public void setShapeAppearanceModel(Vh vh) {
        if (!b()) {
            throw new IllegalStateException("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
        }
        this.d.c(vh);
    }

    public void setShouldDrawSurfaceColorStroke(boolean z) {
        if (b()) {
            C0376od c0376od = this.d;
            c0376od.n = z;
            c0376od.f();
        }
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        if (b()) {
            C0376od c0376od = this.d;
            if (c0376od.k != colorStateList) {
                c0376od.k = colorStateList;
                c0376od.f();
            }
        }
    }

    public void setStrokeColorResource(int i) {
        if (b()) {
            setStrokeColor(AbstractC0152fm.m(getContext(), i));
        }
    }

    public void setStrokeWidth(int i) {
        if (b()) {
            C0376od c0376od = this.d;
            if (c0376od.h != i) {
                c0376od.h = i;
                c0376od.f();
            }
        }
    }

    public void setStrokeWidthResource(int i) {
        if (b()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i));
        }
    }

    @Override // defpackage.C0080d1
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (!b()) {
            super.setSupportBackgroundTintList(colorStateList);
            return;
        }
        C0376od c0376od = this.d;
        if (c0376od.j != colorStateList) {
            c0376od.j = colorStateList;
            if (c0376od.b(false) != null) {
                B7.h(c0376od.b(false), c0376od.j);
            }
        }
    }

    @Override // defpackage.C0080d1
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (!b()) {
            super.setSupportBackgroundTintMode(mode);
            return;
        }
        C0376od c0376od = this.d;
        if (c0376od.i != mode) {
            c0376od.i = mode;
            if (c0376od.b(false) == null || c0376od.i == null) {
                return;
            }
            B7.i(c0376od.b(false), c0376od.i);
        }
    }

    @Override // android.view.View
    public void setTextAlignment(int i) {
        super.setTextAlignment(i);
        e(getMeasuredWidth(), getMeasuredHeight());
    }

    public void setToggleCheckedStateOnClick(boolean z) {
        this.d.r = z;
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.o);
    }
}
