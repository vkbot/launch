package com.google.android.material.chip;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.TextView;
import defpackage.AbstractC0152fm;
import defpackage.AbstractC0205hn;
import defpackage.AbstractC0348nb;
import defpackage.C0131f1;
import defpackage.C0393p4;
import defpackage.C0403pe;
import defpackage.C0419q4;
import defpackage.C0442r3;
import defpackage.C0443r4;
import defpackage.C0493t4;
import defpackage.C0642z3;
import defpackage.C6;
import defpackage.C7;
import defpackage.Fj;
import defpackage.Gj;
import defpackage.Ij;
import defpackage.InterfaceC0148fi;
import defpackage.InterfaceC0468s4;
import defpackage.InterfaceC0652zd;
import defpackage.Lo;
import defpackage.Nj;
import defpackage.Nk;
import defpackage.Oj;
import defpackage.Rm;
import defpackage.Sm;
import defpackage.Vh;
import defpackage.Xm;
import defpackage.Yf;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Locale;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class Chip extends C0131f1 implements InterfaceC0468s4, InterfaceC0148fi, Checkable {
    public static final Rect w = new Rect();
    public static final int[] x = {R.attr.state_selected};
    public static final int[] y = {R.attr.state_checkable};
    public C0493t4 e;
    public InsetDrawable f;
    public RippleDrawable g;
    public View.OnClickListener h;
    public CompoundButton.OnCheckedChangeListener i;
    public boolean j;
    public boolean k;
    public boolean l;
    public boolean m;
    public boolean n;
    public int o;
    public int p;
    public CharSequence q;
    public final C0443r4 r;
    public boolean s;
    public final Rect t;
    public final RectF u;
    public final C0393p4 v;

    public Chip(Context context, AttributeSet attributeSet) {
        super(AbstractC0152fm.R(context, attributeSet, com.omoda.launcher.R.attr.chipStyle, com.omoda.launcher.R.style.Widget_MaterialComponents_Chip_Action), attributeSet, com.omoda.launcher.R.attr.chipStyle);
        int resourceId;
        int resourceId2;
        int resourceId3;
        this.t = new Rect();
        this.u = new RectF();
        this.v = new C0393p4(0, this);
        Context context2 = getContext();
        if (attributeSet != null) {
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "background") != null) {
                Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableLeft") != null) {
                throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableStart") != null) {
                throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableEnd") != null) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableRight") != null) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            }
            if (!attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res/android", "singleLine", true) || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "lines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "minLines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "maxLines", 1) != 1) {
                throw new UnsupportedOperationException("Chip does not support multi-line text");
            }
            if (attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "gravity", 8388627) != 8388627) {
                Log.w("Chip", "Chip text must be vertically center and start aligned");
            }
        }
        C0493t4 c0493t4 = new C0493t4(context2, attributeSet);
        int[] iArr = Yf.c;
        TypedArray Q = AbstractC0348nb.Q(c0493t4.c0, attributeSet, iArr, com.omoda.launcher.R.attr.chipStyle, com.omoda.launcher.R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        c0493t4.C0 = Q.hasValue(37);
        Context context3 = c0493t4.c0;
        ColorStateList B = AbstractC0348nb.B(context3, Q, 24);
        if (c0493t4.v != B) {
            c0493t4.v = B;
            c0493t4.onStateChange(c0493t4.getState());
        }
        ColorStateList B2 = AbstractC0348nb.B(context3, Q, 11);
        if (c0493t4.w != B2) {
            c0493t4.w = B2;
            c0493t4.onStateChange(c0493t4.getState());
        }
        float dimension = Q.getDimension(19, 0.0f);
        if (c0493t4.x != dimension) {
            c0493t4.x = dimension;
            c0493t4.invalidateSelf();
            c0493t4.t();
        }
        if (Q.hasValue(12)) {
            c0493t4.z(Q.getDimension(12, 0.0f));
        }
        c0493t4.E(AbstractC0348nb.B(context3, Q, 22));
        c0493t4.F(Q.getDimension(23, 0.0f));
        c0493t4.O(AbstractC0348nb.B(context3, Q, 36));
        String text = Q.getText(5);
        text = text == null ? "" : text;
        if (!TextUtils.equals(c0493t4.C, text)) {
            c0493t4.C = text;
            c0493t4.i0.d = true;
            c0493t4.invalidateSelf();
            c0493t4.t();
        }
        Fj fj = (!Q.hasValue(0) || (resourceId3 = Q.getResourceId(0, 0)) == 0) ? null : new Fj(context3, resourceId3);
        fj.k = Q.getDimension(1, fj.k);
        c0493t4.P(fj);
        int i = Q.getInt(3, 0);
        if (i == 1) {
            c0493t4.z0 = TextUtils.TruncateAt.START;
        } else if (i == 2) {
            c0493t4.z0 = TextUtils.TruncateAt.MIDDLE;
        } else if (i == 3) {
            c0493t4.z0 = TextUtils.TruncateAt.END;
        }
        c0493t4.D(Q.getBoolean(18, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconVisible") == null) {
            c0493t4.D(Q.getBoolean(15, false));
        }
        c0493t4.A(AbstractC0348nb.D(context3, Q, 14));
        if (Q.hasValue(17)) {
            c0493t4.C(AbstractC0348nb.B(context3, Q, 17));
        }
        c0493t4.B(Q.getDimension(16, -1.0f));
        c0493t4.L(Q.getBoolean(31, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconVisible") == null) {
            c0493t4.L(Q.getBoolean(26, false));
        }
        c0493t4.G(AbstractC0348nb.D(context3, Q, 25));
        c0493t4.K(AbstractC0348nb.B(context3, Q, 30));
        c0493t4.I(Q.getDimension(28, 0.0f));
        c0493t4.v(Q.getBoolean(6, false));
        c0493t4.y(Q.getBoolean(10, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconVisible") == null) {
            c0493t4.y(Q.getBoolean(8, false));
        }
        c0493t4.w(AbstractC0348nb.D(context3, Q, 7));
        if (Q.hasValue(9)) {
            c0493t4.x(AbstractC0348nb.B(context3, Q, 9));
        }
        c0493t4.S = (!Q.hasValue(39) || (resourceId2 = Q.getResourceId(39, 0)) == 0) ? null : C0403pe.a(context3, resourceId2);
        c0493t4.T = (!Q.hasValue(33) || (resourceId = Q.getResourceId(33, 0)) == 0) ? null : C0403pe.a(context3, resourceId);
        float dimension2 = Q.getDimension(21, 0.0f);
        if (c0493t4.U != dimension2) {
            c0493t4.U = dimension2;
            c0493t4.invalidateSelf();
            c0493t4.t();
        }
        c0493t4.N(Q.getDimension(35, 0.0f));
        c0493t4.M(Q.getDimension(34, 0.0f));
        float dimension3 = Q.getDimension(41, 0.0f);
        if (c0493t4.X != dimension3) {
            c0493t4.X = dimension3;
            c0493t4.invalidateSelf();
            c0493t4.t();
        }
        float dimension4 = Q.getDimension(40, 0.0f);
        if (c0493t4.Y != dimension4) {
            c0493t4.Y = dimension4;
            c0493t4.invalidateSelf();
            c0493t4.t();
        }
        c0493t4.J(Q.getDimension(29, 0.0f));
        c0493t4.H(Q.getDimension(27, 0.0f));
        float dimension5 = Q.getDimension(13, 0.0f);
        if (c0493t4.b0 != dimension5) {
            c0493t4.b0 = dimension5;
            c0493t4.invalidateSelf();
            c0493t4.t();
        }
        c0493t4.B0 = Q.getDimensionPixelSize(4, Integer.MAX_VALUE);
        Q.recycle();
        AbstractC0348nb.m(context2, attributeSet, com.omoda.launcher.R.attr.chipStyle, com.omoda.launcher.R.style.Widget_MaterialComponents_Chip_Action);
        AbstractC0348nb.t(context2, attributeSet, iArr, com.omoda.launcher.R.attr.chipStyle, com.omoda.launcher.R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, com.omoda.launcher.R.attr.chipStyle, com.omoda.launcher.R.style.Widget_MaterialComponents_Chip_Action);
        this.n = obtainStyledAttributes.getBoolean(32, false);
        this.p = (int) Math.ceil(obtainStyledAttributes.getDimension(20, (float) Math.ceil(TypedValue.applyDimension(1, 48, getContext().getResources().getDisplayMetrics()))));
        obtainStyledAttributes.recycle();
        setChipDrawable(c0493t4);
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        c0493t4.h(Xm.i(this));
        AbstractC0348nb.m(context2, attributeSet, com.omoda.launcher.R.attr.chipStyle, com.omoda.launcher.R.style.Widget_MaterialComponents_Chip_Action);
        AbstractC0348nb.t(context2, attributeSet, iArr, com.omoda.launcher.R.attr.chipStyle, com.omoda.launcher.R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        TypedArray obtainStyledAttributes2 = context2.obtainStyledAttributes(attributeSet, iArr, com.omoda.launcher.R.attr.chipStyle, com.omoda.launcher.R.style.Widget_MaterialComponents_Chip_Action);
        boolean hasValue = obtainStyledAttributes2.hasValue(37);
        obtainStyledAttributes2.recycle();
        this.r = new C0443r4(this, this);
        e();
        if (!hasValue) {
            setOutlineProvider(new C0419q4(this));
        }
        setChecked(this.j);
        setText(c0493t4.C);
        setEllipsize(c0493t4.z0);
        h();
        if (!this.e.A0) {
            setLines(1);
            setHorizontallyScrolling(true);
        }
        setGravity(8388627);
        g();
        if (this.n) {
            setMinHeight(this.p);
        }
        this.o = Sm.d(this);
        super.setOnCheckedChangeListener(new Nk(2, this));
    }

    private RectF getCloseIconTouchBounds() {
        RectF rectF = this.u;
        rectF.setEmpty();
        if (c() && this.h != null) {
            C0493t4 c0493t4 = this.e;
            Rect bounds = c0493t4.getBounds();
            rectF.setEmpty();
            if (c0493t4.S()) {
                float f = c0493t4.b0 + c0493t4.a0 + c0493t4.M + c0493t4.Z + c0493t4.Y;
                if (C7.a(c0493t4) == 0) {
                    float f2 = bounds.right;
                    rectF.right = f2;
                    rectF.left = f2 - f;
                } else {
                    float f3 = bounds.left;
                    rectF.left = f3;
                    rectF.right = f3 + f;
                }
                rectF.top = bounds.top;
                rectF.bottom = bounds.bottom;
            }
        }
        return rectF;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Rect getCloseIconTouchBoundsInt() {
        RectF closeIconTouchBounds = getCloseIconTouchBounds();
        int i = (int) closeIconTouchBounds.left;
        int i2 = (int) closeIconTouchBounds.top;
        int i3 = (int) closeIconTouchBounds.right;
        int i4 = (int) closeIconTouchBounds.bottom;
        Rect rect = this.t;
        rect.set(i, i2, i3, i4);
        return rect;
    }

    private Fj getTextAppearance() {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            return c0493t4.i0.f;
        }
        return null;
    }

    private void setCloseIconHovered(boolean z) {
        if (this.l != z) {
            this.l = z;
            refreshDrawableState();
        }
    }

    private void setCloseIconPressed(boolean z) {
        if (this.k != z) {
            this.k = z;
            refreshDrawableState();
        }
    }

    public final void b(int i) {
        this.p = i;
        if (!this.n) {
            InsetDrawable insetDrawable = this.f;
            if (insetDrawable == null) {
                f();
                return;
            } else {
                if (insetDrawable != null) {
                    this.f = null;
                    setMinWidth(0);
                    setMinHeight((int) getChipMinHeight());
                    f();
                    return;
                }
                return;
            }
        }
        int max = Math.max(0, i - ((int) this.e.x));
        int max2 = Math.max(0, i - this.e.getIntrinsicWidth());
        if (max2 <= 0 && max <= 0) {
            InsetDrawable insetDrawable2 = this.f;
            if (insetDrawable2 == null) {
                f();
                return;
            } else {
                if (insetDrawable2 != null) {
                    this.f = null;
                    setMinWidth(0);
                    setMinHeight((int) getChipMinHeight());
                    f();
                    return;
                }
                return;
            }
        }
        int i2 = max2 > 0 ? max2 / 2 : 0;
        int i3 = max > 0 ? max / 2 : 0;
        if (this.f != null) {
            Rect rect = new Rect();
            this.f.getPadding(rect);
            if (rect.top == i3 && rect.bottom == i3 && rect.left == i2 && rect.right == i2) {
                f();
                return;
            }
        }
        if (getMinHeight() != i) {
            setMinHeight(i);
        }
        if (getMinWidth() != i) {
            setMinWidth(i);
        }
        this.f = new InsetDrawable((Drawable) this.e, i2, i3, i2, i3);
        f();
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0011 A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean c() {
        /*
            r1 = this;
            t4 r1 = r1.e
            if (r1 == 0) goto L13
            android.graphics.drawable.Drawable r1 = r1.J
            if (r1 == 0) goto Le
            boolean r0 = r1 instanceof defpackage.Lo
            if (r0 == 0) goto Lf
            Lo r1 = (defpackage.Lo) r1
        Le:
            r1 = 0
        Lf:
            if (r1 == 0) goto L13
            r1 = 1
            goto L14
        L13:
            r1 = 0
        L14:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.Chip.c():boolean");
    }

    public final boolean d() {
        C0493t4 c0493t4 = this.e;
        return c0493t4 != null && c0493t4.O;
    }

    @Override // android.view.View
    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        int i;
        if (!this.s) {
            return super.dispatchHoverEvent(motionEvent);
        }
        C0443r4 c0443r4 = this.r;
        AccessibilityManager accessibilityManager = c0443r4.h;
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            int action = motionEvent.getAction();
            if (action == 7 || action == 9) {
                float x2 = motionEvent.getX();
                float y2 = motionEvent.getY();
                Chip chip = c0443r4.n;
                int i2 = (chip.c() && chip.getCloseIconTouchBounds().contains(x2, y2)) ? 1 : 0;
                int i3 = c0443r4.m;
                if (i3 != i2) {
                    c0443r4.m = i2;
                    c0443r4.p(i2, 128);
                    c0443r4.p(i3, 256);
                }
                if (i2 != Integer.MIN_VALUE) {
                    return true;
                }
            } else if (action == 10 && (i = c0443r4.m) != Integer.MIN_VALUE) {
                if (i == Integer.MIN_VALUE) {
                    return true;
                }
                c0443r4.m = Integer.MIN_VALUE;
                c0443r4.p(i, 256);
                return true;
            }
        }
        return super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!this.s) {
            return super.dispatchKeyEvent(keyEvent);
        }
        C0443r4 c0443r4 = this.r;
        c0443r4.getClass();
        boolean z = false;
        int i = 0;
        z = false;
        z = false;
        z = false;
        z = false;
        z = false;
        if (keyEvent.getAction() != 1) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 61) {
                int i2 = 66;
                if (keyCode != 66) {
                    switch (keyCode) {
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                            if (keyEvent.hasNoModifiers()) {
                                if (keyCode == 19) {
                                    i2 = 33;
                                } else if (keyCode == 21) {
                                    i2 = 17;
                                } else if (keyCode != 22) {
                                    i2 = 130;
                                }
                                int repeatCount = keyEvent.getRepeatCount() + 1;
                                boolean z2 = false;
                                while (i < repeatCount && c0443r4.m(i2, null)) {
                                    i++;
                                    z2 = true;
                                }
                                z = z2;
                                break;
                            }
                            break;
                    }
                }
                if (keyEvent.hasNoModifiers() && keyEvent.getRepeatCount() == 0) {
                    int i3 = c0443r4.l;
                    if (i3 != Integer.MIN_VALUE) {
                        Chip chip = c0443r4.n;
                        if (i3 == 0) {
                            chip.performClick();
                        } else if (i3 == 1) {
                            chip.playSoundEffect(0);
                            View.OnClickListener onClickListener = chip.h;
                            if (onClickListener != null) {
                                onClickListener.onClick(chip);
                            }
                            if (chip.s) {
                                chip.r.p(1, 1);
                            }
                        }
                    }
                    z = true;
                }
            } else if (keyEvent.hasNoModifiers()) {
                z = c0443r4.m(2, null);
            } else if (keyEvent.hasModifiers(1)) {
                z = c0443r4.m(1, null);
            }
        }
        if (!z || c0443r4.l == Integer.MIN_VALUE) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [int, boolean] */
    @Override // defpackage.C0131f1, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        int i;
        super.drawableStateChanged();
        C0493t4 c0493t4 = this.e;
        boolean z = false;
        if (c0493t4 != null && C0493t4.s(c0493t4.J)) {
            C0493t4 c0493t42 = this.e;
            ?? isEnabled = isEnabled();
            int i2 = isEnabled;
            if (this.m) {
                i2 = isEnabled + 1;
            }
            int i3 = i2;
            if (this.l) {
                i3 = i2 + 1;
            }
            int i4 = i3;
            if (this.k) {
                i4 = i3 + 1;
            }
            int i5 = i4;
            if (isChecked()) {
                i5 = i4 + 1;
            }
            int[] iArr = new int[i5];
            if (isEnabled()) {
                iArr[0] = 16842910;
                i = 1;
            } else {
                i = 0;
            }
            if (this.m) {
                iArr[i] = 16842908;
                i++;
            }
            if (this.l) {
                iArr[i] = 16843623;
                i++;
            }
            if (this.k) {
                iArr[i] = 16842919;
                i++;
            }
            if (isChecked()) {
                iArr[i] = 16842913;
            }
            if (!Arrays.equals(c0493t42.w0, iArr)) {
                c0493t42.w0 = iArr;
                if (c0493t42.S()) {
                    z = c0493t42.u(c0493t42.getState(), iArr);
                }
            }
        }
        if (z) {
            invalidate();
        }
    }

    public final void e() {
        C0493t4 c0493t4;
        if (!c() || (c0493t4 = this.e) == null || !c0493t4.I || this.h == null) {
            AbstractC0205hn.h(this, null);
            this.s = false;
        } else {
            AbstractC0205hn.h(this, this.r);
            this.s = true;
        }
    }

    public final void f() {
        ColorStateList colorStateList = this.e.B;
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.g = new RippleDrawable(colorStateList, getBackgroundDrawable(), null);
        this.e.getClass();
        RippleDrawable rippleDrawable = this.g;
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        Rm.q(this, rippleDrawable);
        g();
    }

    public final void g() {
        C0493t4 c0493t4;
        if (TextUtils.isEmpty(getText()) || (c0493t4 = this.e) == null) {
            return;
        }
        int p = (int) (c0493t4.p() + c0493t4.b0 + c0493t4.Y);
        C0493t4 c0493t42 = this.e;
        int o = (int) (c0493t42.o() + c0493t42.U + c0493t42.X);
        if (this.f != null) {
            Rect rect = new Rect();
            this.f.getPadding(rect);
            o += rect.left;
            p += rect.right;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        Sm.k(this, o, paddingTop, p, paddingBottom);
    }

    @Override // android.widget.CheckBox, android.widget.CompoundButton, android.widget.Button, android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        if (!TextUtils.isEmpty(this.q)) {
            return this.q;
        }
        if (!d()) {
            return isClickable() ? "android.widget.Button" : "android.view.View";
        }
        getParent();
        return "android.widget.Button";
    }

    public Drawable getBackgroundDrawable() {
        InsetDrawable insetDrawable = this.f;
        return insetDrawable == null ? this.e : insetDrawable;
    }

    public Drawable getCheckedIcon() {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            return c0493t4.Q;
        }
        return null;
    }

    public ColorStateList getCheckedIconTint() {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            return c0493t4.R;
        }
        return null;
    }

    public ColorStateList getChipBackgroundColor() {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            return c0493t4.w;
        }
        return null;
    }

    public float getChipCornerRadius() {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            return Math.max(0.0f, c0493t4.q());
        }
        return 0.0f;
    }

    public Drawable getChipDrawable() {
        return this.e;
    }

    public float getChipEndPadding() {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            return c0493t4.b0;
        }
        return 0.0f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Drawable getChipIcon() {
        Drawable drawable;
        C0493t4 c0493t4 = this.e;
        if (c0493t4 == null || (drawable = c0493t4.E) == 0) {
            return null;
        }
        boolean z = drawable instanceof Lo;
        Drawable drawable2 = drawable;
        if (z) {
            drawable2 = null;
        }
        return drawable2;
    }

    public float getChipIconSize() {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            return c0493t4.G;
        }
        return 0.0f;
    }

    public ColorStateList getChipIconTint() {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            return c0493t4.F;
        }
        return null;
    }

    public float getChipMinHeight() {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            return c0493t4.x;
        }
        return 0.0f;
    }

    public float getChipStartPadding() {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            return c0493t4.U;
        }
        return 0.0f;
    }

    public ColorStateList getChipStrokeColor() {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            return c0493t4.z;
        }
        return null;
    }

    public float getChipStrokeWidth() {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            return c0493t4.A;
        }
        return 0.0f;
    }

    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Drawable getCloseIcon() {
        Drawable drawable;
        C0493t4 c0493t4 = this.e;
        if (c0493t4 == null || (drawable = c0493t4.J) == 0) {
            return null;
        }
        boolean z = drawable instanceof Lo;
        Drawable drawable2 = drawable;
        if (z) {
            drawable2 = null;
        }
        return drawable2;
    }

    public CharSequence getCloseIconContentDescription() {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            return c0493t4.N;
        }
        return null;
    }

    public float getCloseIconEndPadding() {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            return c0493t4.a0;
        }
        return 0.0f;
    }

    public float getCloseIconSize() {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            return c0493t4.M;
        }
        return 0.0f;
    }

    public float getCloseIconStartPadding() {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            return c0493t4.Z;
        }
        return 0.0f;
    }

    public ColorStateList getCloseIconTint() {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            return c0493t4.L;
        }
        return null;
    }

    @Override // android.widget.TextView
    public TextUtils.TruncateAt getEllipsize() {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            return c0493t4.z0;
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public final void getFocusedRect(Rect rect) {
        if (this.s) {
            C0443r4 c0443r4 = this.r;
            if (c0443r4.l == 1 || c0443r4.k == 1) {
                rect.set(getCloseIconTouchBoundsInt());
                return;
            }
        }
        super.getFocusedRect(rect);
    }

    public C0403pe getHideMotionSpec() {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            return c0493t4.T;
        }
        return null;
    }

    public float getIconEndPadding() {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            return c0493t4.W;
        }
        return 0.0f;
    }

    public float getIconStartPadding() {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            return c0493t4.V;
        }
        return 0.0f;
    }

    public ColorStateList getRippleColor() {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            return c0493t4.B;
        }
        return null;
    }

    public Vh getShapeAppearanceModel() {
        return this.e.a.a;
    }

    public C0403pe getShowMotionSpec() {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            return c0493t4.S;
        }
        return null;
    }

    public float getTextEndPadding() {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            return c0493t4.Y;
        }
        return 0.0f;
    }

    public float getTextStartPadding() {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            return c0493t4.X;
        }
        return 0.0f;
    }

    public final void h() {
        TextPaint paint = getPaint();
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            paint.drawableState = c0493t4.getState();
        }
        Fj textAppearance = getTextAppearance();
        if (textAppearance != null) {
            textAppearance.e(getContext(), paint, this.v);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        AbstractC0152fm.N(this, this.e);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (isChecked()) {
            View.mergeDrawableStates(onCreateDrawableState, x);
        }
        if (d()) {
            View.mergeDrawableStates(onCreateDrawableState, y);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (this.s) {
            C0443r4 c0443r4 = this.r;
            int i2 = c0443r4.l;
            if (i2 != Integer.MIN_VALUE) {
                c0443r4.j(i2);
            }
            if (z) {
                c0443r4.m(i, rect);
            }
        }
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 7) {
            setCloseIconHovered(getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()));
        } else if (actionMasked == 10) {
            setCloseIconHovered(false);
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getAccessibilityClassName());
        accessibilityNodeInfo.setCheckable(d());
        accessibilityNodeInfo.setClickable(isClickable());
        getParent();
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    public final PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i) {
        return (getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()) && isEnabled()) ? PointerIcon.getSystemIcon(getContext(), 1002) : super.onResolvePointerIcon(motionEvent, i);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        if (this.o != i) {
            this.o = i;
            g();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001e, code lost:
    
        if (r0 != 3) goto L28;
     */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            int r0 = r6.getActionMasked()
            android.graphics.RectF r1 = r5.getCloseIconTouchBounds()
            float r2 = r6.getX()
            float r3 = r6.getY()
            boolean r1 = r1.contains(r2, r3)
            r2 = 0
            r3 = 1
            if (r0 == 0) goto L4a
            if (r0 == r3) goto L2c
            r4 = 2
            if (r0 == r4) goto L21
            r1 = 3
            if (r0 == r1) goto L45
            goto L50
        L21:
            boolean r0 = r5.k
            if (r0 == 0) goto L50
            if (r1 != 0) goto L2a
            r5.setCloseIconPressed(r2)
        L2a:
            r0 = r3
            goto L51
        L2c:
            boolean r0 = r5.k
            if (r0 == 0) goto L45
            r5.playSoundEffect(r2)
            android.view.View$OnClickListener r0 = r5.h
            if (r0 == 0) goto L3a
            r0.onClick(r5)
        L3a:
            boolean r0 = r5.s
            if (r0 == 0) goto L43
            r4 r0 = r5.r
            r0.p(r3, r3)
        L43:
            r0 = r3
            goto L46
        L45:
            r0 = r2
        L46:
            r5.setCloseIconPressed(r2)
            goto L51
        L4a:
            if (r1 == 0) goto L50
            r5.setCloseIconPressed(r3)
            goto L2a
        L50:
            r0 = r2
        L51:
            if (r0 != 0) goto L59
            boolean r5 = super.onTouchEvent(r6)
            if (r5 == 0) goto L5a
        L59:
            r2 = r3
        L5a:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.Chip.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void setAccessibilityClassName(CharSequence charSequence) {
        this.q = charSequence;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.g) {
            super.setBackground(drawable);
        } else {
            Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        Log.w("Chip", "Do not set the background color; Chip manages its own background drawable.");
    }

    @Override // defpackage.C0131f1, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.g) {
            super.setBackgroundDrawable(drawable);
        } else {
            Log.w("Chip", "Do not set the background drawable; Chip manages its own background drawable.");
        }
    }

    @Override // defpackage.C0131f1, android.view.View
    public void setBackgroundResource(int i) {
        Log.w("Chip", "Do not set the background resource; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        Log.w("Chip", "Do not set the background tint list; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        Log.w("Chip", "Do not set the background tint mode; Chip manages its own background drawable.");
    }

    public void setCheckable(boolean z) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.v(z);
        }
    }

    public void setCheckableResource(int i) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.v(c0493t4.c0.getResources().getBoolean(i));
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 == null) {
            this.j = z;
        } else if (c0493t4.O) {
            super.setChecked(z);
        }
    }

    public void setCheckedIcon(Drawable drawable) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.w(drawable);
        }
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z) {
        setCheckedIconVisible(z);
    }

    @Deprecated
    public void setCheckedIconEnabledResource(int i) {
        setCheckedIconVisible(i);
    }

    public void setCheckedIconResource(int i) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.w(C6.n(c0493t4.c0, i));
        }
    }

    public void setCheckedIconTint(ColorStateList colorStateList) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.x(colorStateList);
        }
    }

    public void setCheckedIconTintResource(int i) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.x(AbstractC0152fm.m(c0493t4.c0, i));
        }
    }

    public void setCheckedIconVisible(int i) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.y(c0493t4.c0.getResources().getBoolean(i));
        }
    }

    public void setChipBackgroundColor(ColorStateList colorStateList) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 == null || c0493t4.w == colorStateList) {
            return;
        }
        c0493t4.w = colorStateList;
        c0493t4.onStateChange(c0493t4.getState());
    }

    public void setChipBackgroundColorResource(int i) {
        ColorStateList m;
        C0493t4 c0493t4 = this.e;
        if (c0493t4 == null || c0493t4.w == (m = AbstractC0152fm.m(c0493t4.c0, i))) {
            return;
        }
        c0493t4.w = m;
        c0493t4.onStateChange(c0493t4.getState());
    }

    @Deprecated
    public void setChipCornerRadius(float f) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.z(f);
        }
    }

    @Deprecated
    public void setChipCornerRadiusResource(int i) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.z(c0493t4.c0.getResources().getDimension(i));
        }
    }

    public void setChipDrawable(C0493t4 c0493t4) {
        C0493t4 c0493t42 = this.e;
        if (c0493t42 != c0493t4) {
            if (c0493t42 != null) {
                c0493t42.y0 = new WeakReference(null);
            }
            this.e = c0493t4;
            c0493t4.A0 = false;
            c0493t4.y0 = new WeakReference(this);
            b(this.p);
        }
    }

    public void setChipEndPadding(float f) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 == null || c0493t4.b0 == f) {
            return;
        }
        c0493t4.b0 = f;
        c0493t4.invalidateSelf();
        c0493t4.t();
    }

    public void setChipEndPaddingResource(int i) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            float dimension = c0493t4.c0.getResources().getDimension(i);
            if (c0493t4.b0 != dimension) {
                c0493t4.b0 = dimension;
                c0493t4.invalidateSelf();
                c0493t4.t();
            }
        }
    }

    public void setChipIcon(Drawable drawable) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.A(drawable);
        }
    }

    @Deprecated
    public void setChipIconEnabled(boolean z) {
        setChipIconVisible(z);
    }

    @Deprecated
    public void setChipIconEnabledResource(int i) {
        setChipIconVisible(i);
    }

    public void setChipIconResource(int i) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.A(C6.n(c0493t4.c0, i));
        }
    }

    public void setChipIconSize(float f) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.B(f);
        }
    }

    public void setChipIconSizeResource(int i) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.B(c0493t4.c0.getResources().getDimension(i));
        }
    }

    public void setChipIconTint(ColorStateList colorStateList) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.C(colorStateList);
        }
    }

    public void setChipIconTintResource(int i) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.C(AbstractC0152fm.m(c0493t4.c0, i));
        }
    }

    public void setChipIconVisible(int i) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.D(c0493t4.c0.getResources().getBoolean(i));
        }
    }

    public void setChipMinHeight(float f) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 == null || c0493t4.x == f) {
            return;
        }
        c0493t4.x = f;
        c0493t4.invalidateSelf();
        c0493t4.t();
    }

    public void setChipMinHeightResource(int i) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            float dimension = c0493t4.c0.getResources().getDimension(i);
            if (c0493t4.x != dimension) {
                c0493t4.x = dimension;
                c0493t4.invalidateSelf();
                c0493t4.t();
            }
        }
    }

    public void setChipStartPadding(float f) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 == null || c0493t4.U == f) {
            return;
        }
        c0493t4.U = f;
        c0493t4.invalidateSelf();
        c0493t4.t();
    }

    public void setChipStartPaddingResource(int i) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            float dimension = c0493t4.c0.getResources().getDimension(i);
            if (c0493t4.U != dimension) {
                c0493t4.U = dimension;
                c0493t4.invalidateSelf();
                c0493t4.t();
            }
        }
    }

    public void setChipStrokeColor(ColorStateList colorStateList) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.E(colorStateList);
        }
    }

    public void setChipStrokeColorResource(int i) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.E(AbstractC0152fm.m(c0493t4.c0, i));
        }
    }

    public void setChipStrokeWidth(float f) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.F(f);
        }
    }

    public void setChipStrokeWidthResource(int i) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.F(c0493t4.c0.getResources().getDimension(i));
        }
    }

    @Deprecated
    public void setChipText(CharSequence charSequence) {
        setText(charSequence);
    }

    @Deprecated
    public void setChipTextResource(int i) {
        setText(getResources().getString(i));
    }

    public void setCloseIcon(Drawable drawable) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.G(drawable);
        }
        e();
    }

    public void setCloseIconContentDescription(CharSequence charSequence) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 == null || c0493t4.N == charSequence) {
            return;
        }
        String str = C0442r3.b;
        Locale locale = Locale.getDefault();
        int i = Oj.a;
        C0442r3 c0442r3 = Nj.a(locale) == 1 ? C0442r3.e : C0442r3.d;
        c0442r3.getClass();
        C0642z3 c0642z3 = Gj.a;
        c0493t4.N = c0442r3.c(charSequence);
        c0493t4.invalidateSelf();
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z) {
        setCloseIconVisible(z);
    }

    @Deprecated
    public void setCloseIconEnabledResource(int i) {
        setCloseIconVisible(i);
    }

    public void setCloseIconEndPadding(float f) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.H(f);
        }
    }

    public void setCloseIconEndPaddingResource(int i) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.H(c0493t4.c0.getResources().getDimension(i));
        }
    }

    public void setCloseIconResource(int i) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.G(C6.n(c0493t4.c0, i));
        }
        e();
    }

    public void setCloseIconSize(float f) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.I(f);
        }
    }

    public void setCloseIconSizeResource(int i) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.I(c0493t4.c0.getResources().getDimension(i));
        }
    }

    public void setCloseIconStartPadding(float f) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.J(f);
        }
    }

    public void setCloseIconStartPaddingResource(int i) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.J(c0493t4.c0.getResources().getDimension(i));
        }
    }

    public void setCloseIconTint(ColorStateList colorStateList) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.K(colorStateList);
        }
    }

    public void setCloseIconTintResource(int i) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.K(AbstractC0152fm.m(c0493t4.c0, i));
        }
    }

    public void setCloseIconVisible(int i) {
        setCloseIconVisible(getResources().getBoolean(i));
    }

    @Override // defpackage.C0131f1, android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
    }

    @Override // defpackage.C0131f1, android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i3 == 0) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(i, i2, i3, i4);
            return;
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i3 == 0) {
            super.setCompoundDrawablesWithIntrinsicBounds(i, i2, i3, i4);
            return;
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.h(f);
        }
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.e == null) {
            return;
        }
        if (truncateAt == TextUtils.TruncateAt.MARQUEE) {
            throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
        }
        super.setEllipsize(truncateAt);
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.z0 = truncateAt;
        }
    }

    public void setEnsureMinTouchTargetSize(boolean z) {
        this.n = z;
        b(this.p);
    }

    @Override // android.widget.TextView
    public void setGravity(int i) {
        if (i != 8388627) {
            Log.w("Chip", "Chip text must be vertically center and start aligned");
        } else {
            super.setGravity(i);
        }
    }

    public void setHideMotionSpec(C0403pe c0403pe) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.T = c0403pe;
        }
    }

    public void setHideMotionSpecResource(int i) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.T = C0403pe.a(c0493t4.c0, i);
        }
    }

    public void setIconEndPadding(float f) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.M(f);
        }
    }

    public void setIconEndPaddingResource(int i) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.M(c0493t4.c0.getResources().getDimension(i));
        }
    }

    public void setIconStartPadding(float f) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.N(f);
        }
    }

    public void setIconStartPaddingResource(int i) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.N(c0493t4.c0.getResources().getDimension(i));
        }
    }

    public void setInternalOnCheckedChangeListener(InterfaceC0652zd interfaceC0652zd) {
    }

    @Override // android.view.View
    public void setLayoutDirection(int i) {
        if (this.e == null) {
            return;
        }
        super.setLayoutDirection(i);
    }

    @Override // android.widget.TextView
    public void setLines(int i) {
        if (i > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setLines(i);
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i) {
        if (i > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMaxLines(i);
    }

    @Override // android.widget.TextView
    public void setMaxWidth(int i) {
        super.setMaxWidth(i);
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.B0 = i;
        }
    }

    @Override // android.widget.TextView
    public void setMinLines(int i) {
        if (i > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMinLines(i);
    }

    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.i = onCheckedChangeListener;
    }

    public void setOnCloseIconClickListener(View.OnClickListener onClickListener) {
        this.h = onClickListener;
        e();
    }

    public void setRippleColor(ColorStateList colorStateList) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.O(colorStateList);
        }
        this.e.getClass();
        f();
    }

    public void setRippleColorResource(int i) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.O(AbstractC0152fm.m(c0493t4.c0, i));
            this.e.getClass();
            f();
        }
    }

    @Override // defpackage.InterfaceC0148fi
    public void setShapeAppearanceModel(Vh vh) {
        this.e.setShapeAppearanceModel(vh);
    }

    public void setShowMotionSpec(C0403pe c0403pe) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.S = c0403pe;
        }
    }

    public void setShowMotionSpecResource(int i) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.S = C0403pe.a(c0493t4.c0, i);
        }
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean z) {
        if (!z) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setSingleLine(z);
    }

    @Override // android.widget.TextView
    public final void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 == null) {
            return;
        }
        if (charSequence == null) {
            charSequence = "";
        }
        super.setText(c0493t4.A0 ? null : charSequence, bufferType);
        C0493t4 c0493t42 = this.e;
        if (c0493t42 == null || TextUtils.equals(c0493t42.C, charSequence)) {
            return;
        }
        c0493t42.C = charSequence;
        c0493t42.i0.d = true;
        c0493t42.invalidateSelf();
        c0493t42.t();
    }

    public void setTextAppearance(Fj fj) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.P(fj);
        }
        h();
    }

    public void setTextAppearanceResource(int i) {
        setTextAppearance(getContext(), i);
    }

    public void setTextEndPadding(float f) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 == null || c0493t4.Y == f) {
            return;
        }
        c0493t4.Y = f;
        c0493t4.invalidateSelf();
        c0493t4.t();
    }

    public void setTextEndPaddingResource(int i) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            float dimension = c0493t4.c0.getResources().getDimension(i);
            if (c0493t4.Y != dimension) {
                c0493t4.Y = dimension;
                c0493t4.invalidateSelf();
                c0493t4.t();
            }
        }
    }

    @Override // android.widget.TextView
    public final void setTextSize(int i, float f) {
        super.setTextSize(i, f);
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            float applyDimension = TypedValue.applyDimension(i, f, getResources().getDisplayMetrics());
            Ij ij = c0493t4.i0;
            Fj fj = ij.f;
            if (fj != null) {
                fj.k = applyDimension;
                ij.a.setTextSize(applyDimension);
                c0493t4.t();
                c0493t4.invalidateSelf();
            }
        }
        h();
    }

    public void setTextStartPadding(float f) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 == null || c0493t4.X == f) {
            return;
        }
        c0493t4.X = f;
        c0493t4.invalidateSelf();
        c0493t4.t();
    }

    public void setTextStartPaddingResource(int i) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            float dimension = c0493t4.c0.getResources().getDimension(i);
            if (c0493t4.X != dimension) {
                c0493t4.X = dimension;
                c0493t4.invalidateSelf();
                c0493t4.t();
            }
        }
    }

    public void setCloseIconVisible(boolean z) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.L(z);
        }
        e();
    }

    public void setCheckedIconVisible(boolean z) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.y(z);
        }
    }

    public void setChipIconVisible(boolean z) {
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.D(z);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.P(new Fj(c0493t4.c0, i));
        }
        h();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i) {
        super.setTextAppearance(i);
        C0493t4 c0493t4 = this.e;
        if (c0493t4 != null) {
            c0493t4.P(new Fj(c0493t4.c0, i));
        }
        h();
    }
}
