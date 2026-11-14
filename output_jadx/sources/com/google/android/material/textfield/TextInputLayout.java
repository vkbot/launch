package com.google.android.material.textfield;

import android.R;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.view.ViewTreeObserver;
import android.view.animation.LinearInterpolator;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.internal.CheckableImageButton;
import defpackage.AbstractC0049bm;
import defpackage.AbstractC0078d;
import defpackage.AbstractC0145ff;
import defpackage.AbstractC0152fm;
import defpackage.AbstractC0189h7;
import defpackage.AbstractC0205hn;
import defpackage.AbstractC0246jd;
import defpackage.AbstractC0348nb;
import defpackage.B1;
import defpackage.B7;
import defpackage.B8;
import defpackage.C0103e;
import defpackage.C0287l2;
import defpackage.C0298ld;
import defpackage.C0442r3;
import defpackage.C0491t2;
import defpackage.C0595x6;
import defpackage.C0617y3;
import defpackage.C0620y6;
import defpackage.C0642z3;
import defpackage.C0647z8;
import defpackage.C6;
import defpackage.Ch;
import defpackage.D7;
import defpackage.Dd;
import defpackage.Ed;
import defpackage.Ei;
import defpackage.Fj;
import defpackage.Gj;
import defpackage.InterfaceC0033b6;
import defpackage.J2;
import defpackage.Jj;
import defpackage.K4;
import defpackage.Kj;
import defpackage.L;
import defpackage.L3;
import defpackage.Lj;
import defpackage.Mj;
import defpackage.Nj;
import defpackage.O;
import defpackage.O0;
import defpackage.O5;
import defpackage.Oj;
import defpackage.P7;
import defpackage.Rm;
import defpackage.S8;
import defpackage.Sm;
import defpackage.T7;
import defpackage.U4;
import defpackage.Uh;
import defpackage.Um;
import defpackage.Vh;
import defpackage.Wa;
import defpackage.Xa;
import defpackage.Yf;
import defpackage.Zm;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class TextInputLayout extends LinearLayout implements ViewTreeObserver.OnGlobalLayoutListener {
    public static final int[][] B0 = {new int[]{R.attr.state_pressed}, new int[0]};
    public ColorStateList A;
    public boolean A0;
    public ColorStateList B;
    public boolean C;
    public CharSequence D;
    public boolean E;
    public Ed F;
    public Ed G;
    public StateListDrawable H;
    public boolean I;
    public Ed J;
    public Ed K;
    public Vh L;
    public boolean M;
    public final int N;
    public int O;
    public int P;
    public int Q;
    public int R;
    public int S;
    public int T;
    public int U;
    public final Rect V;
    public final Rect W;
    public final FrameLayout a;
    public final RectF a0;
    public final Ei b;
    public Typeface b0;
    public final B8 c;
    public ColorDrawable c0;
    public EditText d;
    public int d0;
    public CharSequence e;
    public final LinkedHashSet e0;
    public int f;
    public ColorDrawable f0;
    public int g;
    public int g0;
    public int h;
    public Drawable h0;
    public int i;
    public ColorStateList i0;
    public final Xa j;
    public ColorStateList j0;
    public boolean k;
    public int k0;
    public int l;
    public int l0;
    public boolean m;
    public int m0;
    public Lj n;
    public ColorStateList n0;
    public C0287l2 o;
    public int o0;
    public int p;
    public int p0;
    public int q;
    public int q0;
    public CharSequence r;
    public int r0;
    public boolean s;
    public int s0;
    public C0287l2 t;
    public boolean t0;
    public ColorStateList u;
    public final K4 u0;
    public int v;
    public boolean v0;
    public S8 w;
    public boolean w0;
    public S8 x;
    public ValueAnimator x0;
    public ColorStateList y;
    public boolean y0;
    public ColorStateList z;
    public boolean z0;

    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, Lj] */
    public TextInputLayout(Context context, AttributeSet attributeSet) {
        super(AbstractC0152fm.R(context, attributeSet, com.omoda.launcher.R.attr.textInputStyle, com.omoda.launcher.R.style.Widget_Design_TextInputLayout), attributeSet, com.omoda.launcher.R.attr.textInputStyle);
        this.f = -1;
        this.g = -1;
        this.h = -1;
        this.i = -1;
        this.j = new Xa(this);
        this.n = new Object();
        this.V = new Rect();
        this.W = new Rect();
        this.a0 = new RectF();
        this.e0 = new LinkedHashSet();
        K4 k4 = new K4(this);
        this.u0 = k4;
        this.A0 = false;
        Context context2 = getContext();
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        FrameLayout frameLayout = new FrameLayout(context2);
        this.a = frameLayout;
        frameLayout.setAddStatesFromChildren(true);
        LinearInterpolator linearInterpolator = O0.a;
        k4.Q = linearInterpolator;
        k4.h(false);
        k4.P = linearInterpolator;
        k4.h(false);
        if (k4.g != 8388659) {
            k4.g = 8388659;
            k4.h(false);
        }
        int[] iArr = Yf.A;
        AbstractC0348nb.m(context2, attributeSet, com.omoda.launcher.R.attr.textInputStyle, com.omoda.launcher.R.style.Widget_Design_TextInputLayout);
        AbstractC0348nb.t(context2, attributeSet, iArr, com.omoda.launcher.R.attr.textInputStyle, com.omoda.launcher.R.style.Widget_Design_TextInputLayout, 22, 20, 40, 45, 49);
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, com.omoda.launcher.R.attr.textInputStyle, com.omoda.launcher.R.style.Widget_Design_TextInputLayout);
        C0491t2 c0491t2 = new C0491t2(context2, obtainStyledAttributes);
        Ei ei = new Ei(this, c0491t2);
        this.b = ei;
        this.C = obtainStyledAttributes.getBoolean(48, true);
        setHint(obtainStyledAttributes.getText(4));
        this.w0 = obtainStyledAttributes.getBoolean(47, true);
        this.v0 = obtainStyledAttributes.getBoolean(42, true);
        if (obtainStyledAttributes.hasValue(6)) {
            setMinEms(obtainStyledAttributes.getInt(6, -1));
        } else if (obtainStyledAttributes.hasValue(3)) {
            setMinWidth(obtainStyledAttributes.getDimensionPixelSize(3, -1));
        }
        if (obtainStyledAttributes.hasValue(5)) {
            setMaxEms(obtainStyledAttributes.getInt(5, -1));
        } else if (obtainStyledAttributes.hasValue(2)) {
            setMaxWidth(obtainStyledAttributes.getDimensionPixelSize(2, -1));
        }
        this.L = Vh.b(context2, attributeSet, com.omoda.launcher.R.attr.textInputStyle, com.omoda.launcher.R.style.Widget_Design_TextInputLayout).a();
        this.N = context2.getResources().getDimensionPixelOffset(com.omoda.launcher.R.dimen.mtrl_textinput_box_label_cutout_padding);
        this.P = obtainStyledAttributes.getDimensionPixelOffset(9, 0);
        this.R = obtainStyledAttributes.getDimensionPixelSize(16, context2.getResources().getDimensionPixelSize(com.omoda.launcher.R.dimen.mtrl_textinput_box_stroke_width_default));
        this.S = obtainStyledAttributes.getDimensionPixelSize(17, context2.getResources().getDimensionPixelSize(com.omoda.launcher.R.dimen.mtrl_textinput_box_stroke_width_focused));
        this.Q = this.R;
        float dimension = obtainStyledAttributes.getDimension(13, -1.0f);
        float dimension2 = obtainStyledAttributes.getDimension(12, -1.0f);
        float dimension3 = obtainStyledAttributes.getDimension(10, -1.0f);
        float dimension4 = obtainStyledAttributes.getDimension(11, -1.0f);
        Uh e = this.L.e();
        if (dimension >= 0.0f) {
            e.e = new C0103e(dimension);
        }
        if (dimension2 >= 0.0f) {
            e.f = new C0103e(dimension2);
        }
        if (dimension3 >= 0.0f) {
            e.g = new C0103e(dimension3);
        }
        if (dimension4 >= 0.0f) {
            e.h = new C0103e(dimension4);
        }
        this.L = e.a();
        ColorStateList A = AbstractC0348nb.A(context2, c0491t2, 7);
        if (A != null) {
            int defaultColor = A.getDefaultColor();
            this.o0 = defaultColor;
            this.U = defaultColor;
            if (A.isStateful()) {
                this.p0 = A.getColorForState(new int[]{-16842910}, -1);
                this.q0 = A.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
                this.r0 = A.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            } else {
                this.q0 = this.o0;
                ColorStateList m = AbstractC0152fm.m(context2, com.omoda.launcher.R.color.mtrl_filled_background_color);
                this.p0 = m.getColorForState(new int[]{-16842910}, -1);
                this.r0 = m.getColorForState(new int[]{R.attr.state_hovered}, -1);
            }
        } else {
            this.U = 0;
            this.o0 = 0;
            this.p0 = 0;
            this.q0 = 0;
            this.r0 = 0;
        }
        if (obtainStyledAttributes.hasValue(1)) {
            ColorStateList g = c0491t2.g(1);
            this.j0 = g;
            this.i0 = g;
        }
        ColorStateList A2 = AbstractC0348nb.A(context2, c0491t2, 14);
        this.m0 = obtainStyledAttributes.getColor(14, 0);
        this.k0 = O5.a(context2, com.omoda.launcher.R.color.mtrl_textinput_default_box_stroke_color);
        this.s0 = O5.a(context2, com.omoda.launcher.R.color.mtrl_textinput_disabled_color);
        this.l0 = O5.a(context2, com.omoda.launcher.R.color.mtrl_textinput_hovered_box_stroke_color);
        if (A2 != null) {
            setBoxStrokeColorStateList(A2);
        }
        if (obtainStyledAttributes.hasValue(15)) {
            setBoxStrokeErrorColor(AbstractC0348nb.A(context2, c0491t2, 15));
        }
        if (obtainStyledAttributes.getResourceId(49, -1) != -1) {
            setHintTextAppearance(obtainStyledAttributes.getResourceId(49, 0));
        }
        this.A = c0491t2.g(24);
        this.B = c0491t2.g(25);
        int resourceId = obtainStyledAttributes.getResourceId(40, 0);
        CharSequence text = obtainStyledAttributes.getText(35);
        int i = obtainStyledAttributes.getInt(34, 1);
        boolean z = obtainStyledAttributes.getBoolean(36, false);
        int resourceId2 = obtainStyledAttributes.getResourceId(45, 0);
        boolean z2 = obtainStyledAttributes.getBoolean(44, false);
        CharSequence text2 = obtainStyledAttributes.getText(43);
        int resourceId3 = obtainStyledAttributes.getResourceId(57, 0);
        CharSequence text3 = obtainStyledAttributes.getText(56);
        boolean z3 = obtainStyledAttributes.getBoolean(18, false);
        setCounterMaxLength(obtainStyledAttributes.getInt(19, -1));
        this.q = obtainStyledAttributes.getResourceId(22, 0);
        this.p = obtainStyledAttributes.getResourceId(20, 0);
        setBoxBackgroundMode(obtainStyledAttributes.getInt(8, 0));
        setErrorContentDescription(text);
        setErrorAccessibilityLiveRegion(i);
        setCounterOverflowTextAppearance(this.p);
        setHelperTextTextAppearance(resourceId2);
        setErrorTextAppearance(resourceId);
        setCounterTextAppearance(this.q);
        setPlaceholderText(text3);
        setPlaceholderTextAppearance(resourceId3);
        if (obtainStyledAttributes.hasValue(41)) {
            setErrorTextColor(c0491t2.g(41));
        }
        if (obtainStyledAttributes.hasValue(46)) {
            setHelperTextColor(c0491t2.g(46));
        }
        if (obtainStyledAttributes.hasValue(50)) {
            setHintTextColor(c0491t2.g(50));
        }
        if (obtainStyledAttributes.hasValue(23)) {
            setCounterTextColor(c0491t2.g(23));
        }
        if (obtainStyledAttributes.hasValue(21)) {
            setCounterOverflowTextColor(c0491t2.g(21));
        }
        if (obtainStyledAttributes.hasValue(58)) {
            setPlaceholderTextColor(c0491t2.g(58));
        }
        B8 b8 = new B8(this, c0491t2);
        this.c = b8;
        boolean z4 = obtainStyledAttributes.getBoolean(0, true);
        c0491t2.r();
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        Rm.s(this, 2);
        Zm.m(this, 1);
        frameLayout.addView(ei);
        frameLayout.addView(b8);
        addView(frameLayout);
        setEnabled(z4);
        setHelperTextEnabled(z2);
        setErrorEnabled(z);
        setCounterEnabled(z3);
        setHelperText(text2);
    }

    private Drawable getEditTextBoxBackground() {
        EditText editText = this.d;
        if (!(editText instanceof AutoCompleteTextView) || C6.x(editText)) {
            return this.F;
        }
        int m = C6.m(this.d, com.omoda.launcher.R.attr.colorControlHighlight);
        int i = this.O;
        int[][] iArr = B0;
        if (i != 2) {
            if (i != 1) {
                return null;
            }
            Ed ed = this.F;
            int i2 = this.U;
            return new RippleDrawable(new ColorStateList(iArr, new int[]{C6.A(m, i2, 0.1f), i2}), ed, ed);
        }
        Context context = getContext();
        Ed ed2 = this.F;
        TypedValue J = AbstractC0152fm.J(context, com.omoda.launcher.R.attr.colorSurface, "TextInputLayout");
        int i3 = J.resourceId;
        int a = i3 != 0 ? O5.a(context, i3) : J.data;
        Ed ed3 = new Ed(ed2.a.a);
        int A = C6.A(m, a, 0.1f);
        ed3.i(new ColorStateList(iArr, new int[]{A, 0}));
        ed3.setTint(a);
        ColorStateList colorStateList = new ColorStateList(iArr, new int[]{A, a});
        Ed ed4 = new Ed(ed2.a.a);
        ed4.setTint(-1);
        return new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, ed3, ed4), ed2});
    }

    private Drawable getOrCreateFilledDropDownMenuBackground() {
        if (this.H == null) {
            StateListDrawable stateListDrawable = new StateListDrawable();
            this.H = stateListDrawable;
            stateListDrawable.addState(new int[]{R.attr.state_above_anchor}, getOrCreateOutlinedDropDownMenuBackground());
            this.H.addState(new int[0], f(false));
        }
        return this.H;
    }

    private Drawable getOrCreateOutlinedDropDownMenuBackground() {
        if (this.G == null) {
            this.G = f(true);
        }
        return this.G;
    }

    public static void k(ViewGroup viewGroup, boolean z) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            childAt.setEnabled(z);
            if (childAt instanceof ViewGroup) {
                k((ViewGroup) childAt, z);
            }
        }
    }

    private void setEditText(EditText editText) {
        if (this.d != null) {
            throw new IllegalArgumentException("We already have an EditText, can only have one");
        }
        if (getEndIconMode() != 3 && !(editText instanceof TextInputEditText)) {
            Log.i("TextInputLayout", "EditText added is not a TextInputEditText. Please switch to using that class instead.");
        }
        this.d = editText;
        int i = this.f;
        if (i != -1) {
            setMinEms(i);
        } else {
            setMinWidth(this.h);
        }
        int i2 = this.g;
        if (i2 != -1) {
            setMaxEms(i2);
        } else {
            setMaxWidth(this.i);
        }
        this.I = false;
        i();
        setTextInputAccessibilityDelegate(new Kj(this));
        Typeface typeface = this.d.getTypeface();
        K4 k4 = this.u0;
        k4.m(typeface);
        float textSize = this.d.getTextSize();
        if (k4.h != textSize) {
            k4.h = textSize;
            k4.h(false);
        }
        float letterSpacing = this.d.getLetterSpacing();
        if (k4.W != letterSpacing) {
            k4.W = letterSpacing;
            k4.h(false);
        }
        int gravity = this.d.getGravity();
        int i3 = (gravity & (-113)) | 48;
        if (k4.g != i3) {
            k4.g = i3;
            k4.h(false);
        }
        if (k4.f != gravity) {
            k4.f = gravity;
            k4.h(false);
        }
        this.d.addTextChangedListener(new Ch(this, 1));
        if (this.i0 == null) {
            this.i0 = this.d.getHintTextColors();
        }
        if (this.C) {
            if (TextUtils.isEmpty(this.D)) {
                CharSequence hint = this.d.getHint();
                this.e = hint;
                setHint(hint);
                this.d.setHint((CharSequence) null);
            }
            this.E = true;
        }
        p();
        if (this.o != null) {
            n(this.d.getText());
        }
        r();
        this.j.b();
        this.b.bringToFront();
        B8 b8 = this.c;
        b8.bringToFront();
        Iterator it = this.e0.iterator();
        while (it.hasNext()) {
            ((C0647z8) it.next()).a(this);
        }
        b8.m();
        if (!isEnabled()) {
            editText.setEnabled(false);
        }
        u(false, true);
    }

    private void setHintInternal(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.D)) {
            return;
        }
        this.D = charSequence;
        K4 k4 = this.u0;
        if (charSequence == null || !TextUtils.equals(k4.A, charSequence)) {
            k4.A = charSequence;
            k4.B = null;
            Bitmap bitmap = k4.E;
            if (bitmap != null) {
                bitmap.recycle();
                k4.E = null;
            }
            k4.h(false);
        }
        if (this.t0) {
            return;
        }
        j();
    }

    private void setPlaceholderTextEnabled(boolean z) {
        if (this.s == z) {
            return;
        }
        if (z) {
            C0287l2 c0287l2 = this.t;
            if (c0287l2 != null) {
                this.a.addView(c0287l2);
                this.t.setVisibility(0);
            }
        } else {
            C0287l2 c0287l22 = this.t;
            if (c0287l22 != null) {
                c0287l22.setVisibility(8);
            }
            this.t = null;
        }
        this.s = z;
    }

    public final void a(float f) {
        K4 k4 = this.u0;
        if (k4.b == f) {
            return;
        }
        if (this.x0 == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.x0 = valueAnimator;
            valueAnimator.setInterpolator(C6.M(getContext(), com.omoda.launcher.R.attr.motionEasingEmphasizedInterpolator, O0.b));
            this.x0.setDuration(C6.L(getContext(), com.omoda.launcher.R.attr.motionDurationMedium4, 167));
            this.x0.addUpdateListener(new C0617y3(3, this));
        }
        this.x0.setFloatValues(k4.b, f);
        this.x0.start();
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof EditText)) {
            super.addView(view, i, layoutParams);
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
        layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
        FrameLayout frameLayout = this.a;
        frameLayout.addView(view, layoutParams2);
        frameLayout.setLayoutParams(layoutParams);
        t();
        setEditText((EditText) view);
    }

    public final void b() {
        int i;
        int i2;
        Ed ed = this.F;
        if (ed == null) {
            return;
        }
        Vh vh = ed.a.a;
        Vh vh2 = this.L;
        if (vh != vh2) {
            ed.setShapeAppearanceModel(vh2);
        }
        if (this.O == 2 && (i = this.Q) > -1 && (i2 = this.T) != 0) {
            Ed ed2 = this.F;
            ed2.a.j = i;
            ed2.invalidateSelf();
            ColorStateList valueOf = ColorStateList.valueOf(i2);
            Dd dd = ed2.a;
            if (dd.d != valueOf) {
                dd.d = valueOf;
                ed2.onStateChange(ed2.getState());
            }
        }
        int i3 = this.U;
        if (this.O == 1) {
            i3 = U4.b(this.U, C6.l(getContext(), com.omoda.launcher.R.attr.colorSurface, 0));
        }
        this.U = i3;
        this.F.i(ColorStateList.valueOf(i3));
        Ed ed3 = this.J;
        if (ed3 != null && this.K != null) {
            if (this.Q > -1 && this.T != 0) {
                ed3.i(this.d.isFocused() ? ColorStateList.valueOf(this.k0) : ColorStateList.valueOf(this.T));
                this.K.i(ColorStateList.valueOf(this.T));
            }
            invalidate();
        }
        s();
    }

    public final int c() {
        float d;
        if (!this.C) {
            return 0;
        }
        int i = this.O;
        K4 k4 = this.u0;
        if (i == 0) {
            d = k4.d();
        } else {
            if (i != 2) {
                return 0;
            }
            d = k4.d() / 2.0f;
        }
        return (int) d;
    }

    public final S8 d() {
        S8 s8 = new S8();
        s8.c = C6.L(getContext(), com.omoda.launcher.R.attr.motionDurationShort2, 87);
        s8.d = C6.M(getContext(), com.omoda.launcher.R.attr.motionEasingLinearInterpolator, O0.a);
        return s8;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i) {
        EditText editText = this.d;
        if (editText == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i);
            return;
        }
        if (this.e != null) {
            boolean z = this.E;
            this.E = false;
            CharSequence hint = editText.getHint();
            this.d.setHint(this.e);
            try {
                super.dispatchProvideAutofillStructure(viewStructure, i);
                return;
            } finally {
                this.d.setHint(hint);
                this.E = z;
            }
        }
        viewStructure.setAutofillId(getAutofillId());
        onProvideAutofillStructure(viewStructure, i);
        onProvideAutofillVirtualStructure(viewStructure, i);
        FrameLayout frameLayout = this.a;
        viewStructure.setChildCount(frameLayout.getChildCount());
        for (int i2 = 0; i2 < frameLayout.getChildCount(); i2++) {
            View childAt = frameLayout.getChildAt(i2);
            ViewStructure newChild = viewStructure.newChild(i2);
            childAt.dispatchProvideAutofillStructure(newChild, i);
            if (childAt == this.d) {
                newChild.setHint(getHint());
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        this.z0 = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.z0 = false;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        Ed ed;
        int i;
        super.draw(canvas);
        boolean z = this.C;
        K4 k4 = this.u0;
        if (z) {
            k4.getClass();
            int save = canvas.save();
            if (k4.B != null) {
                RectF rectF = k4.e;
                if (rectF.width() > 0.0f && rectF.height() > 0.0f) {
                    TextPaint textPaint = k4.N;
                    textPaint.setTextSize(k4.G);
                    float f = k4.p;
                    float f2 = k4.q;
                    float f3 = k4.F;
                    if (f3 != 1.0f) {
                        canvas.scale(f3, f3, f, f2);
                    }
                    if (k4.d0 <= 1 || k4.C) {
                        canvas.translate(f, f2);
                        k4.Y.draw(canvas);
                    } else {
                        float lineStart = k4.p - k4.Y.getLineStart(0);
                        int alpha = textPaint.getAlpha();
                        canvas.translate(lineStart, f2);
                        float f4 = alpha;
                        textPaint.setAlpha((int) (k4.b0 * f4));
                        int i2 = Build.VERSION.SDK_INT;
                        if (i2 >= 31) {
                            float f5 = k4.H;
                            float f6 = k4.I;
                            float f7 = k4.J;
                            int i3 = k4.K;
                            textPaint.setShadowLayer(f5, f6, f7, U4.d(i3, (textPaint.getAlpha() * Color.alpha(i3)) / 255));
                        }
                        k4.Y.draw(canvas);
                        textPaint.setAlpha((int) (k4.a0 * f4));
                        if (i2 >= 31) {
                            float f8 = k4.H;
                            float f9 = k4.I;
                            float f10 = k4.J;
                            int i4 = k4.K;
                            textPaint.setShadowLayer(f8, f9, f10, U4.d(i4, (Color.alpha(i4) * textPaint.getAlpha()) / 255));
                        }
                        int lineBaseline = k4.Y.getLineBaseline(0);
                        CharSequence charSequence = k4.c0;
                        float f11 = lineBaseline;
                        canvas.drawText(charSequence, 0, charSequence.length(), 0.0f, f11, textPaint);
                        if (i2 >= 31) {
                            textPaint.setShadowLayer(k4.H, k4.I, k4.J, k4.K);
                        }
                        String trim = k4.c0.toString().trim();
                        if (trim.endsWith("…")) {
                            i = 0;
                            trim = trim.substring(0, trim.length() - 1);
                        } else {
                            i = 0;
                        }
                        String str = trim;
                        textPaint.setAlpha(alpha);
                        canvas.drawText(str, 0, Math.min(k4.Y.getLineEnd(i), str.length()), 0.0f, f11, (Paint) textPaint);
                    }
                    canvas.restoreToCount(save);
                }
            }
        }
        if (this.K == null || (ed = this.J) == null) {
            return;
        }
        ed.draw(canvas);
        if (this.d.isFocused()) {
            Rect bounds = this.K.getBounds();
            Rect bounds2 = this.J.getBounds();
            float f12 = k4.b;
            int centerX = bounds2.centerX();
            bounds.left = O0.c(centerX, bounds2.left, f12);
            bounds.right = O0.c(centerX, bounds2.right, f12);
            this.K.draw(canvas);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004f  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void drawableStateChanged() {
        /*
            r4 = this;
            boolean r0 = r4.y0
            if (r0 == 0) goto L5
            return
        L5:
            r0 = 1
            r4.y0 = r0
            super.drawableStateChanged()
            int[] r1 = r4.getDrawableState()
            r2 = 0
            K4 r3 = r4.u0
            if (r3 == 0) goto L2f
            r3.L = r1
            android.content.res.ColorStateList r1 = r3.k
            if (r1 == 0) goto L20
            boolean r1 = r1.isStateful()
            if (r1 != 0) goto L2a
        L20:
            android.content.res.ColorStateList r1 = r3.j
            if (r1 == 0) goto L2f
            boolean r1 = r1.isStateful()
            if (r1 == 0) goto L2f
        L2a:
            r3.h(r2)
            r1 = r0
            goto L30
        L2f:
            r1 = r2
        L30:
            android.widget.EditText r3 = r4.d
            if (r3 == 0) goto L47
            java.util.WeakHashMap r3 = defpackage.AbstractC0205hn.a
            boolean r3 = defpackage.Um.c(r4)
            if (r3 == 0) goto L43
            boolean r3 = r4.isEnabled()
            if (r3 == 0) goto L43
            goto L44
        L43:
            r0 = r2
        L44:
            r4.u(r0, r2)
        L47:
            r4.r()
            r4.x()
            if (r1 == 0) goto L52
            r4.invalidate()
        L52:
            r4.y0 = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.drawableStateChanged():void");
    }

    public final boolean e() {
        return this.C && !TextUtils.isEmpty(this.D) && (this.F instanceof C0620y6);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3, types: [Vh, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v1, types: [nb, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v0, types: [nb, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v0, types: [nb, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v0, types: [nb, java.lang.Object] */
    public final Ed f(boolean z) {
        int i = 0;
        float dimensionPixelOffset = getResources().getDimensionPixelOffset(com.omoda.launcher.R.dimen.mtrl_shape_corner_size_small_component);
        float f = z ? dimensionPixelOffset : 0.0f;
        EditText editText = this.d;
        float popupElevation = editText instanceof C0298ld ? ((C0298ld) editText).getPopupElevation() : getResources().getDimensionPixelOffset(com.omoda.launcher.R.dimen.m3_comp_outlined_autocomplete_menu_container_elevation);
        int dimensionPixelOffset2 = getResources().getDimensionPixelOffset(com.omoda.launcher.R.dimen.mtrl_exposed_dropdown_menu_popup_vertical_padding);
        ?? obj = new Object();
        ?? obj2 = new Object();
        ?? obj3 = new Object();
        ?? obj4 = new Object();
        T7 t7 = new T7(i);
        T7 t72 = new T7(i);
        T7 t73 = new T7(i);
        T7 t74 = new T7(i);
        C0103e c0103e = new C0103e(f);
        C0103e c0103e2 = new C0103e(f);
        C0103e c0103e3 = new C0103e(dimensionPixelOffset);
        C0103e c0103e4 = new C0103e(dimensionPixelOffset);
        ?? obj5 = new Object();
        obj5.a = obj;
        obj5.b = obj2;
        obj5.c = obj3;
        obj5.d = obj4;
        obj5.e = c0103e;
        obj5.f = c0103e2;
        obj5.g = c0103e4;
        obj5.h = c0103e3;
        obj5.i = t7;
        obj5.j = t72;
        obj5.k = t73;
        obj5.l = t74;
        EditText editText2 = this.d;
        ColorStateList dropDownBackgroundTintList = editText2 instanceof C0298ld ? ((C0298ld) editText2).getDropDownBackgroundTintList() : null;
        Context context = getContext();
        if (dropDownBackgroundTintList == null) {
            int i2 = Ed.u;
            TypedValue J = AbstractC0152fm.J(context, com.omoda.launcher.R.attr.colorSurface, Ed.class.getSimpleName());
            int i3 = J.resourceId;
            dropDownBackgroundTintList = ColorStateList.valueOf(i3 != 0 ? O5.a(context, i3) : J.data);
        }
        Ed ed = new Ed();
        ed.g(context);
        ed.i(dropDownBackgroundTintList);
        ed.h(popupElevation);
        ed.setShapeAppearanceModel(obj5);
        Dd dd = ed.a;
        if (dd.g == null) {
            dd.g = new Rect();
        }
        ed.a.g.set(0, dimensionPixelOffset2, 0, dimensionPixelOffset2);
        ed.invalidateSelf();
        return ed;
    }

    public final int g(int i, boolean z) {
        return ((z || getPrefixText() == null) ? (!z || getSuffixText() == null) ? this.d.getCompoundPaddingLeft() : this.c.c() : this.b.a()) + i;
    }

    @Override // android.widget.LinearLayout, android.view.View
    public int getBaseline() {
        EditText editText = this.d;
        if (editText == null) {
            return super.getBaseline();
        }
        return c() + getPaddingTop() + editText.getBaseline();
    }

    public Ed getBoxBackground() {
        int i = this.O;
        if (i == 1 || i == 2) {
            return this.F;
        }
        throw new IllegalStateException();
    }

    public int getBoxBackgroundColor() {
        return this.U;
    }

    public int getBoxBackgroundMode() {
        return this.O;
    }

    public int getBoxCollapsedPaddingTop() {
        return this.P;
    }

    public float getBoxCornerRadiusBottomEnd() {
        boolean v = AbstractC0145ff.v(this);
        RectF rectF = this.a0;
        return v ? this.L.h.a(rectF) : this.L.g.a(rectF);
    }

    public float getBoxCornerRadiusBottomStart() {
        boolean v = AbstractC0145ff.v(this);
        RectF rectF = this.a0;
        return v ? this.L.g.a(rectF) : this.L.h.a(rectF);
    }

    public float getBoxCornerRadiusTopEnd() {
        boolean v = AbstractC0145ff.v(this);
        RectF rectF = this.a0;
        return v ? this.L.e.a(rectF) : this.L.f.a(rectF);
    }

    public float getBoxCornerRadiusTopStart() {
        boolean v = AbstractC0145ff.v(this);
        RectF rectF = this.a0;
        return v ? this.L.f.a(rectF) : this.L.e.a(rectF);
    }

    public int getBoxStrokeColor() {
        return this.m0;
    }

    public ColorStateList getBoxStrokeErrorColor() {
        return this.n0;
    }

    public int getBoxStrokeWidth() {
        return this.R;
    }

    public int getBoxStrokeWidthFocused() {
        return this.S;
    }

    public int getCounterMaxLength() {
        return this.l;
    }

    public CharSequence getCounterOverflowDescription() {
        C0287l2 c0287l2;
        if (this.k && this.m && (c0287l2 = this.o) != null) {
            return c0287l2.getContentDescription();
        }
        return null;
    }

    public ColorStateList getCounterOverflowTextColor() {
        return this.z;
    }

    public ColorStateList getCounterTextColor() {
        return this.y;
    }

    public ColorStateList getCursorColor() {
        return this.A;
    }

    public ColorStateList getCursorErrorColor() {
        return this.B;
    }

    public ColorStateList getDefaultHintTextColor() {
        return this.i0;
    }

    public EditText getEditText() {
        return this.d;
    }

    public CharSequence getEndIconContentDescription() {
        return this.c.g.getContentDescription();
    }

    public Drawable getEndIconDrawable() {
        return this.c.g.getDrawable();
    }

    public int getEndIconMinSize() {
        return this.c.m;
    }

    public int getEndIconMode() {
        return this.c.i;
    }

    public ImageView.ScaleType getEndIconScaleType() {
        return this.c.n;
    }

    public CheckableImageButton getEndIconView() {
        return this.c.g;
    }

    public CharSequence getError() {
        Xa xa = this.j;
        if (xa.q) {
            return xa.p;
        }
        return null;
    }

    public int getErrorAccessibilityLiveRegion() {
        return this.j.t;
    }

    public CharSequence getErrorContentDescription() {
        return this.j.s;
    }

    public int getErrorCurrentTextColors() {
        C0287l2 c0287l2 = this.j.r;
        if (c0287l2 != null) {
            return c0287l2.getCurrentTextColor();
        }
        return -1;
    }

    public Drawable getErrorIconDrawable() {
        return this.c.c.getDrawable();
    }

    public CharSequence getHelperText() {
        Xa xa = this.j;
        if (xa.x) {
            return xa.w;
        }
        return null;
    }

    public int getHelperTextCurrentTextColor() {
        C0287l2 c0287l2 = this.j.y;
        if (c0287l2 != null) {
            return c0287l2.getCurrentTextColor();
        }
        return -1;
    }

    public CharSequence getHint() {
        if (this.C) {
            return this.D;
        }
        return null;
    }

    public final float getHintCollapsedTextHeight() {
        return this.u0.d();
    }

    public final int getHintCurrentCollapsedTextColor() {
        K4 k4 = this.u0;
        return k4.e(k4.k);
    }

    public ColorStateList getHintTextColor() {
        return this.j0;
    }

    public Lj getLengthCounter() {
        return this.n;
    }

    public int getMaxEms() {
        return this.g;
    }

    public int getMaxWidth() {
        return this.i;
    }

    public int getMinEms() {
        return this.f;
    }

    public int getMinWidth() {
        return this.h;
    }

    @Deprecated
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.c.g.getContentDescription();
    }

    @Deprecated
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.c.g.getDrawable();
    }

    public CharSequence getPlaceholderText() {
        if (this.s) {
            return this.r;
        }
        return null;
    }

    public int getPlaceholderTextAppearance() {
        return this.v;
    }

    public ColorStateList getPlaceholderTextColor() {
        return this.u;
    }

    public CharSequence getPrefixText() {
        return this.b.c;
    }

    public ColorStateList getPrefixTextColor() {
        return this.b.b.getTextColors();
    }

    public TextView getPrefixTextView() {
        return this.b.b;
    }

    public Vh getShapeAppearanceModel() {
        return this.L;
    }

    public CharSequence getStartIconContentDescription() {
        return this.b.d.getContentDescription();
    }

    public Drawable getStartIconDrawable() {
        return this.b.d.getDrawable();
    }

    public int getStartIconMinSize() {
        return this.b.g;
    }

    public ImageView.ScaleType getStartIconScaleType() {
        return this.b.h;
    }

    public CharSequence getSuffixText() {
        return this.c.p;
    }

    public ColorStateList getSuffixTextColor() {
        return this.c.q.getTextColors();
    }

    public TextView getSuffixTextView() {
        return this.c.q;
    }

    public Typeface getTypeface() {
        return this.b0;
    }

    public final int h(int i, boolean z) {
        return i - ((z || getSuffixText() == null) ? (!z || getPrefixText() == null) ? this.d.getCompoundPaddingRight() : this.b.a() : this.c.c());
    }

    /* JADX WARN: Type inference failed for: r0v37, types: [y6, Ed] */
    public final void i() {
        int i = this.O;
        if (i == 0) {
            this.F = null;
            this.J = null;
            this.K = null;
        } else if (i == 1) {
            this.F = new Ed(this.L);
            this.J = new Ed();
            this.K = new Ed();
        } else {
            if (i != 2) {
                throw new IllegalArgumentException(this.O + " is illegal; only @BoxBackgroundMode constants are supported.");
            }
            if (!this.C || (this.F instanceof C0620y6)) {
                this.F = new Ed(this.L);
            } else {
                Vh vh = this.L;
                int i2 = C0620y6.w;
                if (vh == null) {
                    vh = new Vh();
                }
                C0595x6 c0595x6 = new C0595x6(vh, new RectF());
                ?? ed = new Ed(c0595x6);
                ed.v = c0595x6;
                this.F = ed;
            }
            this.J = null;
            this.K = null;
        }
        s();
        x();
        if (this.O == 1) {
            if (getContext().getResources().getConfiguration().fontScale >= 2.0f) {
                this.P = getResources().getDimensionPixelSize(com.omoda.launcher.R.dimen.material_font_2_0_box_collapsed_padding_top);
            } else if (AbstractC0348nb.L(getContext())) {
                this.P = getResources().getDimensionPixelSize(com.omoda.launcher.R.dimen.material_font_1_3_box_collapsed_padding_top);
            }
        }
        if (this.d != null && this.O == 1) {
            if (getContext().getResources().getConfiguration().fontScale >= 2.0f) {
                EditText editText = this.d;
                WeakHashMap weakHashMap = AbstractC0205hn.a;
                Sm.k(editText, Sm.f(editText), getResources().getDimensionPixelSize(com.omoda.launcher.R.dimen.material_filled_edittext_font_2_0_padding_top), Sm.e(this.d), getResources().getDimensionPixelSize(com.omoda.launcher.R.dimen.material_filled_edittext_font_2_0_padding_bottom));
            } else if (AbstractC0348nb.L(getContext())) {
                EditText editText2 = this.d;
                WeakHashMap weakHashMap2 = AbstractC0205hn.a;
                Sm.k(editText2, Sm.f(editText2), getResources().getDimensionPixelSize(com.omoda.launcher.R.dimen.material_filled_edittext_font_1_3_padding_top), Sm.e(this.d), getResources().getDimensionPixelSize(com.omoda.launcher.R.dimen.material_filled_edittext_font_1_3_padding_bottom));
            }
        }
        if (this.O != 0) {
            t();
        }
        EditText editText3 = this.d;
        if (editText3 instanceof AutoCompleteTextView) {
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText3;
            if (autoCompleteTextView.getDropDownBackground() == null) {
                int i3 = this.O;
                if (i3 == 2) {
                    autoCompleteTextView.setDropDownBackgroundDrawable(getOrCreateOutlinedDropDownMenuBackground());
                } else if (i3 == 1) {
                    autoCompleteTextView.setDropDownBackgroundDrawable(getOrCreateFilledDropDownMenuBackground());
                }
            }
        }
    }

    public final void j() {
        float f;
        float f2;
        float f3;
        RectF rectF;
        float f4;
        int i;
        int i2;
        if (e()) {
            int width = this.d.getWidth();
            int gravity = this.d.getGravity();
            K4 k4 = this.u0;
            boolean b = k4.b(k4.A);
            k4.C = b;
            Rect rect = k4.d;
            if (gravity != 17 && (gravity & 7) != 1) {
                if ((gravity & 8388613) == 8388613 || (gravity & 5) == 5) {
                    if (b) {
                        i2 = rect.left;
                        f3 = i2;
                    } else {
                        f = rect.right;
                        f2 = k4.Z;
                    }
                } else if (b) {
                    f = rect.right;
                    f2 = k4.Z;
                } else {
                    i2 = rect.left;
                    f3 = i2;
                }
                float max = Math.max(f3, rect.left);
                rectF = this.a0;
                rectF.left = max;
                rectF.top = rect.top;
                if (gravity != 17 || (gravity & 7) == 1) {
                    f4 = (width / 2.0f) + (k4.Z / 2.0f);
                } else if ((gravity & 8388613) == 8388613 || (gravity & 5) == 5) {
                    if (k4.C) {
                        f4 = max + k4.Z;
                    } else {
                        i = rect.right;
                        f4 = i;
                    }
                } else if (k4.C) {
                    i = rect.right;
                    f4 = i;
                } else {
                    f4 = k4.Z + max;
                }
                rectF.right = Math.min(f4, rect.right);
                rectF.bottom = k4.d() + rect.top;
                if (rectF.width() > 0.0f || rectF.height() <= 0.0f) {
                }
                float f5 = rectF.left;
                float f6 = this.N;
                rectF.left = f5 - f6;
                rectF.right += f6;
                rectF.offset(-getPaddingLeft(), ((-getPaddingTop()) - (rectF.height() / 2.0f)) + this.Q);
                C0620y6 c0620y6 = (C0620y6) this.F;
                c0620y6.getClass();
                c0620y6.m(rectF.left, rectF.top, rectF.right, rectF.bottom);
                return;
            }
            f = width / 2.0f;
            f2 = k4.Z / 2.0f;
            f3 = f - f2;
            float max2 = Math.max(f3, rect.left);
            rectF = this.a0;
            rectF.left = max2;
            rectF.top = rect.top;
            if (gravity != 17) {
            }
            f4 = (width / 2.0f) + (k4.Z / 2.0f);
            rectF.right = Math.min(f4, rect.right);
            rectF.bottom = k4.d() + rect.top;
            if (rectF.width() > 0.0f) {
            }
        }
    }

    public final void l(C0287l2 c0287l2, int i) {
        try {
            c0287l2.setTextAppearance(i);
            if (c0287l2.getTextColors().getDefaultColor() != -65281) {
                return;
            }
        } catch (Exception unused) {
        }
        c0287l2.setTextAppearance(com.omoda.launcher.R.style.TextAppearance_AppCompat_Caption);
        c0287l2.setTextColor(O5.a(getContext(), com.omoda.launcher.R.color.design_error));
    }

    public final boolean m() {
        Xa xa = this.j;
        return (xa.o != 1 || xa.r == null || TextUtils.isEmpty(xa.p)) ? false : true;
    }

    public final void n(Editable editable) {
        ((Jj) this.n).getClass();
        int length = editable != null ? editable.length() : 0;
        boolean z = this.m;
        int i = this.l;
        String str = null;
        if (i == -1) {
            this.o.setText(String.valueOf(length));
            this.o.setContentDescription(null);
            this.m = false;
        } else {
            this.m = length > i;
            Context context = getContext();
            this.o.setContentDescription(context.getString(this.m ? com.omoda.launcher.R.string.character_counter_overflowed_content_description : com.omoda.launcher.R.string.character_counter_content_description, Integer.valueOf(length), Integer.valueOf(this.l)));
            if (z != this.m) {
                o();
            }
            String str2 = C0442r3.b;
            Locale locale = Locale.getDefault();
            int i2 = Oj.a;
            C0442r3 c0442r3 = Nj.a(locale) == 1 ? C0442r3.e : C0442r3.d;
            C0287l2 c0287l2 = this.o;
            String string = getContext().getString(com.omoda.launcher.R.string.character_counter_pattern, Integer.valueOf(length), Integer.valueOf(this.l));
            if (string == null) {
                c0442r3.getClass();
            } else {
                c0442r3.getClass();
                C0642z3 c0642z3 = Gj.a;
                str = c0442r3.c(string).toString();
            }
            c0287l2.setText(str);
        }
        if (this.d == null || z == this.m) {
            return;
        }
        u(false, false);
        x();
        r();
    }

    public final void o() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        C0287l2 c0287l2 = this.o;
        if (c0287l2 != null) {
            l(c0287l2, this.m ? this.p : this.q);
            if (!this.m && (colorStateList2 = this.y) != null) {
                this.o.setTextColor(colorStateList2);
            }
            if (!this.m || (colorStateList = this.z) == null) {
                return;
            }
            this.o.setTextColor(colorStateList);
        }
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.u0.g(configuration);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        int max;
        B8 b8 = this.c;
        b8.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        boolean z = false;
        this.A0 = false;
        if (this.d != null && this.d.getMeasuredHeight() < (max = Math.max(b8.getMeasuredHeight(), this.b.getMeasuredHeight()))) {
            this.d.setMinimumHeight(max);
            z = true;
        }
        boolean q = q();
        if (z || q) {
            this.d.post(new O(17, this));
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        EditText editText = this.d;
        if (editText != null) {
            ThreadLocal threadLocal = AbstractC0189h7.a;
            int width = editText.getWidth();
            int height = editText.getHeight();
            Rect rect = this.V;
            rect.set(0, 0, width, height);
            ThreadLocal threadLocal2 = AbstractC0189h7.a;
            Matrix matrix = (Matrix) threadLocal2.get();
            if (matrix == null) {
                matrix = new Matrix();
                threadLocal2.set(matrix);
            } else {
                matrix.reset();
            }
            AbstractC0189h7.a(this, editText, matrix);
            ThreadLocal threadLocal3 = AbstractC0189h7.b;
            RectF rectF = (RectF) threadLocal3.get();
            if (rectF == null) {
                rectF = new RectF();
                threadLocal3.set(rectF);
            }
            rectF.set(rect);
            matrix.mapRect(rectF);
            rect.set((int) (rectF.left + 0.5f), (int) (rectF.top + 0.5f), (int) (rectF.right + 0.5f), (int) (rectF.bottom + 0.5f));
            Ed ed = this.J;
            if (ed != null) {
                int i5 = rect.bottom;
                ed.setBounds(rect.left, i5 - this.R, rect.right, i5);
            }
            Ed ed2 = this.K;
            if (ed2 != null) {
                int i6 = rect.bottom;
                ed2.setBounds(rect.left, i6 - this.S, rect.right, i6);
            }
            if (this.C) {
                float textSize = this.d.getTextSize();
                K4 k4 = this.u0;
                if (k4.h != textSize) {
                    k4.h = textSize;
                    k4.h(false);
                }
                int gravity = this.d.getGravity();
                int i7 = (gravity & (-113)) | 48;
                if (k4.g != i7) {
                    k4.g = i7;
                    k4.h(false);
                }
                if (k4.f != gravity) {
                    k4.f = gravity;
                    k4.h(false);
                }
                if (this.d == null) {
                    throw new IllegalStateException();
                }
                boolean v = AbstractC0145ff.v(this);
                int i8 = rect.bottom;
                Rect rect2 = this.W;
                rect2.bottom = i8;
                int i9 = this.O;
                if (i9 == 1) {
                    rect2.left = g(rect.left, v);
                    rect2.top = rect.top + this.P;
                    rect2.right = h(rect.right, v);
                } else if (i9 != 2) {
                    rect2.left = g(rect.left, v);
                    rect2.top = getPaddingTop();
                    rect2.right = h(rect.right, v);
                } else {
                    rect2.left = this.d.getPaddingLeft() + rect.left;
                    rect2.top = rect.top - c();
                    rect2.right = rect.right - this.d.getPaddingRight();
                }
                int i10 = rect2.left;
                int i11 = rect2.top;
                int i12 = rect2.right;
                int i13 = rect2.bottom;
                Rect rect3 = k4.d;
                if (rect3.left != i10 || rect3.top != i11 || rect3.right != i12 || rect3.bottom != i13) {
                    rect3.set(i10, i11, i12, i13);
                    k4.M = true;
                }
                if (this.d == null) {
                    throw new IllegalStateException();
                }
                TextPaint textPaint = k4.O;
                textPaint.setTextSize(k4.h);
                textPaint.setTypeface(k4.u);
                textPaint.setLetterSpacing(k4.W);
                float f = -textPaint.ascent();
                rect2.left = this.d.getCompoundPaddingLeft() + rect.left;
                rect2.top = (this.O != 1 || this.d.getMinLines() > 1) ? rect.top + this.d.getCompoundPaddingTop() : (int) (rect.centerY() - (f / 2.0f));
                rect2.right = rect.right - this.d.getCompoundPaddingRight();
                int compoundPaddingBottom = (this.O != 1 || this.d.getMinLines() > 1) ? rect.bottom - this.d.getCompoundPaddingBottom() : (int) (rect2.top + f);
                rect2.bottom = compoundPaddingBottom;
                int i14 = rect2.left;
                int i15 = rect2.top;
                int i16 = rect2.right;
                Rect rect4 = k4.c;
                if (rect4.left != i14 || rect4.top != i15 || rect4.right != i16 || rect4.bottom != compoundPaddingBottom) {
                    rect4.set(i14, i15, i16, compoundPaddingBottom);
                    k4.M = true;
                }
                k4.h(false);
                if (!e() || this.t0) {
                    return;
                }
                j();
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        EditText editText;
        super.onMeasure(i, i2);
        boolean z = this.A0;
        B8 b8 = this.c;
        if (!z) {
            b8.getViewTreeObserver().addOnGlobalLayoutListener(this);
            this.A0 = true;
        }
        if (this.t != null && (editText = this.d) != null) {
            this.t.setGravity(editText.getGravity());
            this.t.setPadding(this.d.getCompoundPaddingLeft(), this.d.getCompoundPaddingTop(), this.d.getCompoundPaddingRight(), this.d.getCompoundPaddingBottom());
        }
        b8.m();
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof Mj)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Mj mj = (Mj) parcelable;
        super.onRestoreInstanceState(mj.a);
        setError(mj.c);
        if (mj.d) {
            post(new J2(13, this));
        }
        requestLayout();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v3, types: [Vh, java.lang.Object] */
    @Override // android.widget.LinearLayout, android.view.View
    public final void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        boolean z = i == 1;
        if (z != this.M) {
            InterfaceC0033b6 interfaceC0033b6 = this.L.e;
            RectF rectF = this.a0;
            float a = interfaceC0033b6.a(rectF);
            float a2 = this.L.f.a(rectF);
            float a3 = this.L.h.a(rectF);
            float a4 = this.L.g.a(rectF);
            Vh vh = this.L;
            AbstractC0348nb abstractC0348nb = vh.a;
            AbstractC0348nb abstractC0348nb2 = vh.b;
            AbstractC0348nb abstractC0348nb3 = vh.d;
            AbstractC0348nb abstractC0348nb4 = vh.c;
            T7 t7 = new T7(0);
            T7 t72 = new T7(0);
            T7 t73 = new T7(0);
            T7 t74 = new T7(0);
            Uh.b(abstractC0348nb2);
            Uh.b(abstractC0348nb);
            Uh.b(abstractC0348nb4);
            Uh.b(abstractC0348nb3);
            C0103e c0103e = new C0103e(a2);
            C0103e c0103e2 = new C0103e(a);
            C0103e c0103e3 = new C0103e(a4);
            C0103e c0103e4 = new C0103e(a3);
            ?? obj = new Object();
            obj.a = abstractC0348nb2;
            obj.b = abstractC0348nb;
            obj.c = abstractC0348nb3;
            obj.d = abstractC0348nb4;
            obj.e = c0103e;
            obj.f = c0103e2;
            obj.g = c0103e4;
            obj.h = c0103e3;
            obj.i = t7;
            obj.j = t72;
            obj.k = t73;
            obj.l = t74;
            this.M = z;
            setShapeAppearanceModel(obj);
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [android.os.Parcelable, d, Mj] */
    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        ?? abstractC0078d = new AbstractC0078d(super.onSaveInstanceState());
        if (m()) {
            abstractC0078d.c = getError();
        }
        B8 b8 = this.c;
        abstractC0078d.d = b8.i != 0 && b8.g.d;
        return abstractC0078d;
    }

    public final void p() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.A;
        if (colorStateList2 == null) {
            Context context = getContext();
            TypedValue H = AbstractC0152fm.H(context, com.omoda.launcher.R.attr.colorControlActivated);
            if (H != null) {
                int i = H.resourceId;
                if (i != 0) {
                    colorStateList2 = AbstractC0152fm.m(context, i);
                } else {
                    int i2 = H.data;
                    if (i2 != 0) {
                        colorStateList2 = ColorStateList.valueOf(i2);
                    }
                }
            }
            colorStateList2 = null;
        }
        EditText editText = this.d;
        if (editText == null || editText.getTextCursorDrawable() == null) {
            return;
        }
        Drawable mutate = this.d.getTextCursorDrawable().mutate();
        if ((m() || (this.o != null && this.m)) && (colorStateList = this.B) != null) {
            colorStateList2 = colorStateList;
        }
        B7.h(mutate, colorStateList2);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean q() {
        /*
            Method dump skipped, instructions count: 307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.q():boolean");
    }

    public final void r() {
        Drawable background;
        C0287l2 c0287l2;
        EditText editText = this.d;
        if (editText == null || this.O != 0 || (background = editText.getBackground()) == null) {
            return;
        }
        int[] iArr = D7.a;
        Drawable mutate = background.mutate();
        if (m()) {
            mutate.setColorFilter(B1.c(getErrorCurrentTextColors(), PorterDuff.Mode.SRC_IN));
        } else if (this.m && (c0287l2 = this.o) != null) {
            mutate.setColorFilter(B1.c(c0287l2.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        } else {
            mutate.clearColorFilter();
            this.d.refreshDrawableState();
        }
    }

    public final void s() {
        EditText editText = this.d;
        if (editText == null || this.F == null) {
            return;
        }
        if ((this.I || editText.getBackground() == null) && this.O != 0) {
            Drawable editTextBoxBackground = getEditTextBoxBackground();
            EditText editText2 = this.d;
            WeakHashMap weakHashMap = AbstractC0205hn.a;
            Rm.q(editText2, editTextBoxBackground);
            this.I = true;
        }
    }

    public void setBoxBackgroundColor(int i) {
        if (this.U != i) {
            this.U = i;
            this.o0 = i;
            this.q0 = i;
            this.r0 = i;
            b();
        }
    }

    public void setBoxBackgroundColorResource(int i) {
        setBoxBackgroundColor(O5.a(getContext(), i));
    }

    public void setBoxBackgroundColorStateList(ColorStateList colorStateList) {
        int defaultColor = colorStateList.getDefaultColor();
        this.o0 = defaultColor;
        this.U = defaultColor;
        this.p0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
        this.q0 = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        this.r0 = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
        b();
    }

    public void setBoxBackgroundMode(int i) {
        if (i == this.O) {
            return;
        }
        this.O = i;
        if (this.d != null) {
            i();
        }
    }

    public void setBoxCollapsedPaddingTop(int i) {
        this.P = i;
    }

    public void setBoxCornerFamily(int i) {
        Uh e = this.L.e();
        InterfaceC0033b6 interfaceC0033b6 = this.L.e;
        AbstractC0348nb i2 = AbstractC0152fm.i(i);
        e.a = i2;
        Uh.b(i2);
        e.e = interfaceC0033b6;
        InterfaceC0033b6 interfaceC0033b62 = this.L.f;
        AbstractC0348nb i3 = AbstractC0152fm.i(i);
        e.b = i3;
        Uh.b(i3);
        e.f = interfaceC0033b62;
        InterfaceC0033b6 interfaceC0033b63 = this.L.h;
        AbstractC0348nb i4 = AbstractC0152fm.i(i);
        e.d = i4;
        Uh.b(i4);
        e.h = interfaceC0033b63;
        InterfaceC0033b6 interfaceC0033b64 = this.L.g;
        AbstractC0348nb i5 = AbstractC0152fm.i(i);
        e.c = i5;
        Uh.b(i5);
        e.g = interfaceC0033b64;
        this.L = e.a();
        b();
    }

    public void setBoxStrokeColor(int i) {
        if (this.m0 != i) {
            this.m0 = i;
            x();
        }
    }

    public void setBoxStrokeColorStateList(ColorStateList colorStateList) {
        if (colorStateList.isStateful()) {
            this.k0 = colorStateList.getDefaultColor();
            this.s0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
            this.l0 = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            this.m0 = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        } else if (this.m0 != colorStateList.getDefaultColor()) {
            this.m0 = colorStateList.getDefaultColor();
        }
        x();
    }

    public void setBoxStrokeErrorColor(ColorStateList colorStateList) {
        if (this.n0 != colorStateList) {
            this.n0 = colorStateList;
            x();
        }
    }

    public void setBoxStrokeWidth(int i) {
        this.R = i;
        x();
    }

    public void setBoxStrokeWidthFocused(int i) {
        this.S = i;
        x();
    }

    public void setBoxStrokeWidthFocusedResource(int i) {
        setBoxStrokeWidthFocused(getResources().getDimensionPixelSize(i));
    }

    public void setBoxStrokeWidthResource(int i) {
        setBoxStrokeWidth(getResources().getDimensionPixelSize(i));
    }

    public void setCounterEnabled(boolean z) {
        if (this.k != z) {
            Xa xa = this.j;
            if (z) {
                C0287l2 c0287l2 = new C0287l2(getContext(), null);
                this.o = c0287l2;
                c0287l2.setId(com.omoda.launcher.R.id.textinput_counter);
                Typeface typeface = this.b0;
                if (typeface != null) {
                    this.o.setTypeface(typeface);
                }
                this.o.setMaxLines(1);
                xa.a(this.o, 2);
                AbstractC0246jd.h((ViewGroup.MarginLayoutParams) this.o.getLayoutParams(), getResources().getDimensionPixelOffset(com.omoda.launcher.R.dimen.mtrl_textinput_counter_margin_start));
                o();
                if (this.o != null) {
                    EditText editText = this.d;
                    n(editText != null ? editText.getText() : null);
                }
            } else {
                xa.g(this.o, 2);
                this.o = null;
            }
            this.k = z;
        }
    }

    public void setCounterMaxLength(int i) {
        if (this.l != i) {
            if (i > 0) {
                this.l = i;
            } else {
                this.l = -1;
            }
            if (!this.k || this.o == null) {
                return;
            }
            EditText editText = this.d;
            n(editText == null ? null : editText.getText());
        }
    }

    public void setCounterOverflowTextAppearance(int i) {
        if (this.p != i) {
            this.p = i;
            o();
        }
    }

    public void setCounterOverflowTextColor(ColorStateList colorStateList) {
        if (this.z != colorStateList) {
            this.z = colorStateList;
            o();
        }
    }

    public void setCounterTextAppearance(int i) {
        if (this.q != i) {
            this.q = i;
            o();
        }
    }

    public void setCounterTextColor(ColorStateList colorStateList) {
        if (this.y != colorStateList) {
            this.y = colorStateList;
            o();
        }
    }

    public void setCursorColor(ColorStateList colorStateList) {
        if (this.A != colorStateList) {
            this.A = colorStateList;
            p();
        }
    }

    public void setCursorErrorColor(ColorStateList colorStateList) {
        if (this.B != colorStateList) {
            this.B = colorStateList;
            if (m() || (this.o != null && this.m)) {
                p();
            }
        }
    }

    public void setDefaultHintTextColor(ColorStateList colorStateList) {
        this.i0 = colorStateList;
        this.j0 = colorStateList;
        if (this.d != null) {
            u(false, false);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        k(this, z);
        super.setEnabled(z);
    }

    public void setEndIconActivated(boolean z) {
        this.c.g.setActivated(z);
    }

    public void setEndIconCheckable(boolean z) {
        this.c.g.setCheckable(z);
    }

    public void setEndIconContentDescription(int i) {
        B8 b8 = this.c;
        CharSequence text = i != 0 ? b8.getResources().getText(i) : null;
        CheckableImageButton checkableImageButton = b8.g;
        if (checkableImageButton.getContentDescription() != text) {
            checkableImageButton.setContentDescription(text);
        }
    }

    public void setEndIconDrawable(int i) {
        B8 b8 = this.c;
        Drawable n = i != 0 ? C6.n(b8.getContext(), i) : null;
        CheckableImageButton checkableImageButton = b8.g;
        checkableImageButton.setImageDrawable(n);
        if (n != null) {
            ColorStateList colorStateList = b8.k;
            PorterDuff.Mode mode = b8.l;
            TextInputLayout textInputLayout = b8.a;
            AbstractC0348nb.f(textInputLayout, checkableImageButton, colorStateList, mode);
            AbstractC0348nb.Y(textInputLayout, checkableImageButton, b8.k);
        }
    }

    public void setEndIconMinSize(int i) {
        B8 b8 = this.c;
        if (i < 0) {
            b8.getClass();
            throw new IllegalArgumentException("endIconSize cannot be less than 0");
        }
        if (i != b8.m) {
            b8.m = i;
            CheckableImageButton checkableImageButton = b8.g;
            checkableImageButton.setMinimumWidth(i);
            checkableImageButton.setMinimumHeight(i);
            CheckableImageButton checkableImageButton2 = b8.c;
            checkableImageButton2.setMinimumWidth(i);
            checkableImageButton2.setMinimumHeight(i);
        }
    }

    public void setEndIconMode(int i) {
        this.c.g(i);
    }

    public void setEndIconOnClickListener(View.OnClickListener onClickListener) {
        B8 b8 = this.c;
        View.OnLongClickListener onLongClickListener = b8.o;
        CheckableImageButton checkableImageButton = b8.g;
        checkableImageButton.setOnClickListener(onClickListener);
        AbstractC0348nb.a0(checkableImageButton, onLongClickListener);
    }

    public void setEndIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        B8 b8 = this.c;
        b8.o = onLongClickListener;
        CheckableImageButton checkableImageButton = b8.g;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        AbstractC0348nb.a0(checkableImageButton, onLongClickListener);
    }

    public void setEndIconScaleType(ImageView.ScaleType scaleType) {
        B8 b8 = this.c;
        b8.n = scaleType;
        b8.g.setScaleType(scaleType);
        b8.c.setScaleType(scaleType);
    }

    public void setEndIconTintList(ColorStateList colorStateList) {
        B8 b8 = this.c;
        if (b8.k != colorStateList) {
            b8.k = colorStateList;
            AbstractC0348nb.f(b8.a, b8.g, colorStateList, b8.l);
        }
    }

    public void setEndIconTintMode(PorterDuff.Mode mode) {
        B8 b8 = this.c;
        if (b8.l != mode) {
            b8.l = mode;
            AbstractC0348nb.f(b8.a, b8.g, b8.k, mode);
        }
    }

    public void setEndIconVisible(boolean z) {
        this.c.h(z);
    }

    public void setError(CharSequence charSequence) {
        Xa xa = this.j;
        if (!xa.q) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            } else {
                setErrorEnabled(true);
            }
        }
        if (TextUtils.isEmpty(charSequence)) {
            xa.f();
            return;
        }
        xa.c();
        xa.p = charSequence;
        xa.r.setText(charSequence);
        int i = xa.n;
        if (i != 1) {
            xa.o = 1;
        }
        xa.i(i, xa.o, xa.h(xa.r, charSequence));
    }

    public void setErrorAccessibilityLiveRegion(int i) {
        Xa xa = this.j;
        xa.t = i;
        C0287l2 c0287l2 = xa.r;
        if (c0287l2 != null) {
            WeakHashMap weakHashMap = AbstractC0205hn.a;
            Um.f(c0287l2, i);
        }
    }

    public void setErrorContentDescription(CharSequence charSequence) {
        Xa xa = this.j;
        xa.s = charSequence;
        C0287l2 c0287l2 = xa.r;
        if (c0287l2 != null) {
            c0287l2.setContentDescription(charSequence);
        }
    }

    public void setErrorEnabled(boolean z) {
        Xa xa = this.j;
        if (xa.q == z) {
            return;
        }
        xa.c();
        TextInputLayout textInputLayout = xa.h;
        if (z) {
            C0287l2 c0287l2 = new C0287l2(xa.g, null);
            xa.r = c0287l2;
            c0287l2.setId(com.omoda.launcher.R.id.textinput_error);
            xa.r.setTextAlignment(5);
            Typeface typeface = xa.B;
            if (typeface != null) {
                xa.r.setTypeface(typeface);
            }
            int i = xa.u;
            xa.u = i;
            C0287l2 c0287l22 = xa.r;
            if (c0287l22 != null) {
                textInputLayout.l(c0287l22, i);
            }
            ColorStateList colorStateList = xa.v;
            xa.v = colorStateList;
            C0287l2 c0287l23 = xa.r;
            if (c0287l23 != null && colorStateList != null) {
                c0287l23.setTextColor(colorStateList);
            }
            CharSequence charSequence = xa.s;
            xa.s = charSequence;
            C0287l2 c0287l24 = xa.r;
            if (c0287l24 != null) {
                c0287l24.setContentDescription(charSequence);
            }
            int i2 = xa.t;
            xa.t = i2;
            C0287l2 c0287l25 = xa.r;
            if (c0287l25 != null) {
                WeakHashMap weakHashMap = AbstractC0205hn.a;
                Um.f(c0287l25, i2);
            }
            xa.r.setVisibility(4);
            xa.a(xa.r, 0);
        } else {
            xa.f();
            xa.g(xa.r, 0);
            xa.r = null;
            textInputLayout.r();
            textInputLayout.x();
        }
        xa.q = z;
    }

    public void setErrorIconDrawable(int i) {
        B8 b8 = this.c;
        b8.i(i != 0 ? C6.n(b8.getContext(), i) : null);
        AbstractC0348nb.Y(b8.a, b8.c, b8.d);
    }

    public void setErrorIconOnClickListener(View.OnClickListener onClickListener) {
        B8 b8 = this.c;
        CheckableImageButton checkableImageButton = b8.c;
        View.OnLongClickListener onLongClickListener = b8.f;
        checkableImageButton.setOnClickListener(onClickListener);
        AbstractC0348nb.a0(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        B8 b8 = this.c;
        b8.f = onLongClickListener;
        CheckableImageButton checkableImageButton = b8.c;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        AbstractC0348nb.a0(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconTintList(ColorStateList colorStateList) {
        B8 b8 = this.c;
        if (b8.d != colorStateList) {
            b8.d = colorStateList;
            AbstractC0348nb.f(b8.a, b8.c, colorStateList, b8.e);
        }
    }

    public void setErrorIconTintMode(PorterDuff.Mode mode) {
        B8 b8 = this.c;
        if (b8.e != mode) {
            b8.e = mode;
            AbstractC0348nb.f(b8.a, b8.c, b8.d, mode);
        }
    }

    public void setErrorTextAppearance(int i) {
        Xa xa = this.j;
        xa.u = i;
        C0287l2 c0287l2 = xa.r;
        if (c0287l2 != null) {
            xa.h.l(c0287l2, i);
        }
    }

    public void setErrorTextColor(ColorStateList colorStateList) {
        Xa xa = this.j;
        xa.v = colorStateList;
        C0287l2 c0287l2 = xa.r;
        if (c0287l2 == null || colorStateList == null) {
            return;
        }
        c0287l2.setTextColor(colorStateList);
    }

    public void setExpandedHintEnabled(boolean z) {
        if (this.v0 != z) {
            this.v0 = z;
            u(false, false);
        }
    }

    public void setHelperText(CharSequence charSequence) {
        boolean isEmpty = TextUtils.isEmpty(charSequence);
        Xa xa = this.j;
        if (isEmpty) {
            if (xa.x) {
                setHelperTextEnabled(false);
                return;
            }
            return;
        }
        if (!xa.x) {
            setHelperTextEnabled(true);
        }
        xa.c();
        xa.w = charSequence;
        xa.y.setText(charSequence);
        int i = xa.n;
        if (i != 2) {
            xa.o = 2;
        }
        xa.i(i, xa.o, xa.h(xa.y, charSequence));
    }

    public void setHelperTextColor(ColorStateList colorStateList) {
        Xa xa = this.j;
        xa.A = colorStateList;
        C0287l2 c0287l2 = xa.y;
        if (c0287l2 == null || colorStateList == null) {
            return;
        }
        c0287l2.setTextColor(colorStateList);
    }

    public void setHelperTextEnabled(boolean z) {
        Xa xa = this.j;
        if (xa.x == z) {
            return;
        }
        xa.c();
        if (z) {
            C0287l2 c0287l2 = new C0287l2(xa.g, null);
            xa.y = c0287l2;
            c0287l2.setId(com.omoda.launcher.R.id.textinput_helper_text);
            xa.y.setTextAlignment(5);
            Typeface typeface = xa.B;
            if (typeface != null) {
                xa.y.setTypeface(typeface);
            }
            xa.y.setVisibility(4);
            C0287l2 c0287l22 = xa.y;
            WeakHashMap weakHashMap = AbstractC0205hn.a;
            Um.f(c0287l22, 1);
            int i = xa.z;
            xa.z = i;
            C0287l2 c0287l23 = xa.y;
            if (c0287l23 != null) {
                c0287l23.setTextAppearance(i);
            }
            ColorStateList colorStateList = xa.A;
            xa.A = colorStateList;
            C0287l2 c0287l24 = xa.y;
            if (c0287l24 != null && colorStateList != null) {
                c0287l24.setTextColor(colorStateList);
            }
            xa.a(xa.y, 1);
            xa.y.setAccessibilityDelegate(new Wa(xa));
        } else {
            xa.c();
            int i2 = xa.n;
            if (i2 == 2) {
                xa.o = 0;
            }
            xa.i(i2, xa.o, xa.h(xa.y, ""));
            xa.g(xa.y, 1);
            xa.y = null;
            TextInputLayout textInputLayout = xa.h;
            textInputLayout.r();
            textInputLayout.x();
        }
        xa.x = z;
    }

    public void setHelperTextTextAppearance(int i) {
        Xa xa = this.j;
        xa.z = i;
        C0287l2 c0287l2 = xa.y;
        if (c0287l2 != null) {
            c0287l2.setTextAppearance(i);
        }
    }

    public void setHint(CharSequence charSequence) {
        if (this.C) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    public void setHintAnimationEnabled(boolean z) {
        this.w0 = z;
    }

    public void setHintEnabled(boolean z) {
        if (z != this.C) {
            this.C = z;
            if (z) {
                CharSequence hint = this.d.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.D)) {
                        setHint(hint);
                    }
                    this.d.setHint((CharSequence) null);
                }
                this.E = true;
            } else {
                this.E = false;
                if (!TextUtils.isEmpty(this.D) && TextUtils.isEmpty(this.d.getHint())) {
                    this.d.setHint(this.D);
                }
                setHintInternal(null);
            }
            if (this.d != null) {
                t();
            }
        }
    }

    public void setHintTextAppearance(int i) {
        K4 k4 = this.u0;
        TextInputLayout textInputLayout = k4.a;
        Fj fj = new Fj(textInputLayout.getContext(), i);
        ColorStateList colorStateList = fj.j;
        if (colorStateList != null) {
            k4.k = colorStateList;
        }
        float f = fj.k;
        if (f != 0.0f) {
            k4.i = f;
        }
        ColorStateList colorStateList2 = fj.a;
        if (colorStateList2 != null) {
            k4.U = colorStateList2;
        }
        k4.S = fj.e;
        k4.T = fj.f;
        k4.R = fj.g;
        k4.V = fj.i;
        L3 l3 = k4.y;
        if (l3 != null) {
            l3.c = true;
        }
        L l = new L(4, k4);
        fj.a();
        k4.y = new L3(l, fj.n);
        fj.c(textInputLayout.getContext(), k4.y);
        k4.h(false);
        this.j0 = k4.k;
        if (this.d != null) {
            u(false, false);
            t();
        }
    }

    public void setHintTextColor(ColorStateList colorStateList) {
        if (this.j0 != colorStateList) {
            if (this.i0 == null) {
                K4 k4 = this.u0;
                if (k4.k != colorStateList) {
                    k4.k = colorStateList;
                    k4.h(false);
                }
            }
            this.j0 = colorStateList;
            if (this.d != null) {
                u(false, false);
            }
        }
    }

    public void setLengthCounter(Lj lj) {
        this.n = lj;
    }

    public void setMaxEms(int i) {
        this.g = i;
        EditText editText = this.d;
        if (editText == null || i == -1) {
            return;
        }
        editText.setMaxEms(i);
    }

    public void setMaxWidth(int i) {
        this.i = i;
        EditText editText = this.d;
        if (editText == null || i == -1) {
            return;
        }
        editText.setMaxWidth(i);
    }

    public void setMaxWidthResource(int i) {
        setMaxWidth(getContext().getResources().getDimensionPixelSize(i));
    }

    public void setMinEms(int i) {
        this.f = i;
        EditText editText = this.d;
        if (editText == null || i == -1) {
            return;
        }
        editText.setMinEms(i);
    }

    public void setMinWidth(int i) {
        this.h = i;
        EditText editText = this.d;
        if (editText == null || i == -1) {
            return;
        }
        editText.setMinWidth(i);
    }

    public void setMinWidthResource(int i) {
        setMinWidth(getContext().getResources().getDimensionPixelSize(i));
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(int i) {
        B8 b8 = this.c;
        b8.g.setContentDescription(i != 0 ? b8.getResources().getText(i) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(int i) {
        B8 b8 = this.c;
        b8.g.setImageDrawable(i != 0 ? C6.n(b8.getContext(), i) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleEnabled(boolean z) {
        B8 b8 = this.c;
        if (z && b8.i != 1) {
            b8.g(1);
        } else if (z) {
            b8.getClass();
        } else {
            b8.g(0);
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintList(ColorStateList colorStateList) {
        B8 b8 = this.c;
        b8.k = colorStateList;
        AbstractC0348nb.f(b8.a, b8.g, colorStateList, b8.l);
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintMode(PorterDuff.Mode mode) {
        B8 b8 = this.c;
        b8.l = mode;
        AbstractC0348nb.f(b8.a, b8.g, b8.k, mode);
    }

    public void setPlaceholderText(CharSequence charSequence) {
        if (this.t == null) {
            C0287l2 c0287l2 = new C0287l2(getContext(), null);
            this.t = c0287l2;
            c0287l2.setId(com.omoda.launcher.R.id.textinput_placeholder);
            C0287l2 c0287l22 = this.t;
            WeakHashMap weakHashMap = AbstractC0205hn.a;
            Rm.s(c0287l22, 2);
            S8 d = d();
            this.w = d;
            d.b = 67L;
            this.x = d();
            setPlaceholderTextAppearance(this.v);
            setPlaceholderTextColor(this.u);
        }
        if (TextUtils.isEmpty(charSequence)) {
            setPlaceholderTextEnabled(false);
        } else {
            if (!this.s) {
                setPlaceholderTextEnabled(true);
            }
            this.r = charSequence;
        }
        EditText editText = this.d;
        v(editText != null ? editText.getText() : null);
    }

    public void setPlaceholderTextAppearance(int i) {
        this.v = i;
        C0287l2 c0287l2 = this.t;
        if (c0287l2 != null) {
            c0287l2.setTextAppearance(i);
        }
    }

    public void setPlaceholderTextColor(ColorStateList colorStateList) {
        if (this.u != colorStateList) {
            this.u = colorStateList;
            C0287l2 c0287l2 = this.t;
            if (c0287l2 == null || colorStateList == null) {
                return;
            }
            c0287l2.setTextColor(colorStateList);
        }
    }

    public void setPrefixText(CharSequence charSequence) {
        Ei ei = this.b;
        ei.getClass();
        ei.c = TextUtils.isEmpty(charSequence) ? null : charSequence;
        ei.b.setText(charSequence);
        ei.e();
    }

    public void setPrefixTextAppearance(int i) {
        this.b.b.setTextAppearance(i);
    }

    public void setPrefixTextColor(ColorStateList colorStateList) {
        this.b.b.setTextColor(colorStateList);
    }

    public void setShapeAppearanceModel(Vh vh) {
        Ed ed = this.F;
        if (ed == null || ed.a.a == vh) {
            return;
        }
        this.L = vh;
        b();
    }

    public void setStartIconCheckable(boolean z) {
        this.b.d.setCheckable(z);
    }

    public void setStartIconContentDescription(CharSequence charSequence) {
        CheckableImageButton checkableImageButton = this.b.d;
        if (checkableImageButton.getContentDescription() != charSequence) {
            checkableImageButton.setContentDescription(charSequence);
        }
    }

    public void setStartIconDrawable(int i) {
        setStartIconDrawable(i != 0 ? C6.n(getContext(), i) : null);
    }

    public void setStartIconMinSize(int i) {
        Ei ei = this.b;
        if (i < 0) {
            ei.getClass();
            throw new IllegalArgumentException("startIconSize cannot be less than 0");
        }
        if (i != ei.g) {
            ei.g = i;
            CheckableImageButton checkableImageButton = ei.d;
            checkableImageButton.setMinimumWidth(i);
            checkableImageButton.setMinimumHeight(i);
        }
    }

    public void setStartIconOnClickListener(View.OnClickListener onClickListener) {
        Ei ei = this.b;
        View.OnLongClickListener onLongClickListener = ei.i;
        CheckableImageButton checkableImageButton = ei.d;
        checkableImageButton.setOnClickListener(onClickListener);
        AbstractC0348nb.a0(checkableImageButton, onLongClickListener);
    }

    public void setStartIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        Ei ei = this.b;
        ei.i = onLongClickListener;
        CheckableImageButton checkableImageButton = ei.d;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        AbstractC0348nb.a0(checkableImageButton, onLongClickListener);
    }

    public void setStartIconScaleType(ImageView.ScaleType scaleType) {
        Ei ei = this.b;
        ei.h = scaleType;
        ei.d.setScaleType(scaleType);
    }

    public void setStartIconTintList(ColorStateList colorStateList) {
        Ei ei = this.b;
        if (ei.e != colorStateList) {
            ei.e = colorStateList;
            AbstractC0348nb.f(ei.a, ei.d, colorStateList, ei.f);
        }
    }

    public void setStartIconTintMode(PorterDuff.Mode mode) {
        Ei ei = this.b;
        if (ei.f != mode) {
            ei.f = mode;
            AbstractC0348nb.f(ei.a, ei.d, ei.e, mode);
        }
    }

    public void setStartIconVisible(boolean z) {
        this.b.c(z);
    }

    public void setSuffixText(CharSequence charSequence) {
        B8 b8 = this.c;
        b8.getClass();
        b8.p = TextUtils.isEmpty(charSequence) ? null : charSequence;
        b8.q.setText(charSequence);
        b8.n();
    }

    public void setSuffixTextAppearance(int i) {
        this.c.q.setTextAppearance(i);
    }

    public void setSuffixTextColor(ColorStateList colorStateList) {
        this.c.q.setTextColor(colorStateList);
    }

    public void setTextInputAccessibilityDelegate(Kj kj) {
        EditText editText = this.d;
        if (editText != null) {
            AbstractC0205hn.h(editText, kj);
        }
    }

    public void setTypeface(Typeface typeface) {
        if (typeface != this.b0) {
            this.b0 = typeface;
            this.u0.m(typeface);
            Xa xa = this.j;
            if (typeface != xa.B) {
                xa.B = typeface;
                C0287l2 c0287l2 = xa.r;
                if (c0287l2 != null) {
                    c0287l2.setTypeface(typeface);
                }
                C0287l2 c0287l22 = xa.y;
                if (c0287l22 != null) {
                    c0287l22.setTypeface(typeface);
                }
            }
            C0287l2 c0287l23 = this.o;
            if (c0287l23 != null) {
                c0287l23.setTypeface(typeface);
            }
        }
    }

    public final void t() {
        if (this.O != 1) {
            FrameLayout frameLayout = this.a;
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) frameLayout.getLayoutParams();
            int c = c();
            if (c != layoutParams.topMargin) {
                layoutParams.topMargin = c;
                frameLayout.requestLayout();
            }
        }
    }

    public final void u(boolean z, boolean z2) {
        ColorStateList colorStateList;
        C0287l2 c0287l2;
        boolean isEnabled = isEnabled();
        EditText editText = this.d;
        boolean z3 = (editText == null || TextUtils.isEmpty(editText.getText())) ? false : true;
        EditText editText2 = this.d;
        boolean z4 = editText2 != null && editText2.hasFocus();
        ColorStateList colorStateList2 = this.i0;
        K4 k4 = this.u0;
        if (colorStateList2 != null) {
            k4.i(colorStateList2);
        }
        if (!isEnabled) {
            ColorStateList colorStateList3 = this.i0;
            k4.i(ColorStateList.valueOf(colorStateList3 != null ? colorStateList3.getColorForState(new int[]{-16842910}, this.s0) : this.s0));
        } else if (m()) {
            C0287l2 c0287l22 = this.j.r;
            k4.i(c0287l22 != null ? c0287l22.getTextColors() : null);
        } else if (this.m && (c0287l2 = this.o) != null) {
            k4.i(c0287l2.getTextColors());
        } else if (z4 && (colorStateList = this.j0) != null && k4.k != colorStateList) {
            k4.k = colorStateList;
            k4.h(false);
        }
        B8 b8 = this.c;
        Ei ei = this.b;
        if (z3 || !this.v0 || (isEnabled() && z4)) {
            if (z2 || this.t0) {
                ValueAnimator valueAnimator = this.x0;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    this.x0.cancel();
                }
                if (z && this.w0) {
                    a(1.0f);
                } else {
                    k4.k(1.0f);
                }
                this.t0 = false;
                if (e()) {
                    j();
                }
                EditText editText3 = this.d;
                v(editText3 != null ? editText3.getText() : null);
                ei.j = false;
                ei.e();
                b8.r = false;
                b8.n();
                return;
            }
            return;
        }
        if (z2 || !this.t0) {
            ValueAnimator valueAnimator2 = this.x0;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.x0.cancel();
            }
            if (z && this.w0) {
                a(0.0f);
            } else {
                k4.k(0.0f);
            }
            if (e() && !((C0620y6) this.F).v.q.isEmpty() && e()) {
                ((C0620y6) this.F).m(0.0f, 0.0f, 0.0f, 0.0f);
            }
            this.t0 = true;
            C0287l2 c0287l23 = this.t;
            if (c0287l23 != null && this.s) {
                c0287l23.setText((CharSequence) null);
                AbstractC0049bm.a(this.a, this.x);
                this.t.setVisibility(4);
            }
            ei.j = true;
            ei.e();
            b8.r = true;
            b8.n();
        }
    }

    public final void v(Editable editable) {
        ((Jj) this.n).getClass();
        int length = editable != null ? editable.length() : 0;
        FrameLayout frameLayout = this.a;
        if (length != 0 || this.t0) {
            C0287l2 c0287l2 = this.t;
            if (c0287l2 == null || !this.s) {
                return;
            }
            c0287l2.setText((CharSequence) null);
            AbstractC0049bm.a(frameLayout, this.x);
            this.t.setVisibility(4);
            return;
        }
        if (this.t == null || !this.s || TextUtils.isEmpty(this.r)) {
            return;
        }
        this.t.setText(this.r);
        AbstractC0049bm.a(frameLayout, this.w);
        this.t.setVisibility(0);
        this.t.bringToFront();
        announceForAccessibility(this.r);
    }

    public final void w(boolean z, boolean z2) {
        int defaultColor = this.n0.getDefaultColor();
        int colorForState = this.n0.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, defaultColor);
        int colorForState2 = this.n0.getColorForState(new int[]{R.attr.state_activated, R.attr.state_enabled}, defaultColor);
        if (z) {
            this.T = colorForState2;
        } else if (z2) {
            this.T = colorForState;
        } else {
            this.T = defaultColor;
        }
    }

    public final void x() {
        C0287l2 c0287l2;
        EditText editText;
        EditText editText2;
        if (this.F == null || this.O == 0) {
            return;
        }
        boolean z = false;
        boolean z2 = isFocused() || ((editText2 = this.d) != null && editText2.hasFocus());
        if (isHovered() || ((editText = this.d) != null && editText.isHovered())) {
            z = true;
        }
        if (!isEnabled()) {
            this.T = this.s0;
        } else if (m()) {
            if (this.n0 != null) {
                w(z2, z);
            } else {
                this.T = getErrorCurrentTextColors();
            }
        } else if (!this.m || (c0287l2 = this.o) == null) {
            if (z2) {
                this.T = this.m0;
            } else if (z) {
                this.T = this.l0;
            } else {
                this.T = this.k0;
            }
        } else if (this.n0 != null) {
            w(z2, z);
        } else {
            this.T = c0287l2.getCurrentTextColor();
        }
        p();
        B8 b8 = this.c;
        b8.l();
        CheckableImageButton checkableImageButton = b8.c;
        ColorStateList colorStateList = b8.d;
        TextInputLayout textInputLayout = b8.a;
        AbstractC0348nb.Y(textInputLayout, checkableImageButton, colorStateList);
        ColorStateList colorStateList2 = b8.k;
        CheckableImageButton checkableImageButton2 = b8.g;
        AbstractC0348nb.Y(textInputLayout, checkableImageButton2, colorStateList2);
        if (b8.b() instanceof P7) {
            if (!textInputLayout.m() || checkableImageButton2.getDrawable() == null) {
                AbstractC0348nb.f(textInputLayout, checkableImageButton2, b8.k, b8.l);
            } else {
                Drawable mutate = checkableImageButton2.getDrawable().mutate();
                B7.g(mutate, textInputLayout.getErrorCurrentTextColors());
                checkableImageButton2.setImageDrawable(mutate);
            }
        }
        Ei ei = this.b;
        AbstractC0348nb.Y(ei.a, ei.d, ei.e);
        if (this.O == 2) {
            int i = this.Q;
            if (z2 && isEnabled()) {
                this.Q = this.S;
            } else {
                this.Q = this.R;
            }
            if (this.Q != i && e() && !this.t0) {
                if (e()) {
                    ((C0620y6) this.F).m(0.0f, 0.0f, 0.0f, 0.0f);
                }
                j();
            }
        }
        if (this.O == 1) {
            if (!isEnabled()) {
                this.U = this.p0;
            } else if (z && !z2) {
                this.U = this.r0;
            } else if (z2) {
                this.U = this.q0;
            } else {
                this.U = this.o0;
            }
        }
        b();
    }

    public void setStartIconDrawable(Drawable drawable) {
        this.b.b(drawable);
    }

    public void setHint(int i) {
        setHint(i != 0 ? getResources().getText(i) : null);
    }

    public void setStartIconContentDescription(int i) {
        setStartIconContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(CharSequence charSequence) {
        this.c.g.setContentDescription(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(Drawable drawable) {
        this.c.g.setImageDrawable(drawable);
    }

    public void setErrorIconDrawable(Drawable drawable) {
        this.c.i(drawable);
    }

    public void setEndIconContentDescription(CharSequence charSequence) {
        CheckableImageButton checkableImageButton = this.c.g;
        if (checkableImageButton.getContentDescription() != charSequence) {
            checkableImageButton.setContentDescription(charSequence);
        }
    }

    public void setEndIconDrawable(Drawable drawable) {
        B8 b8 = this.c;
        CheckableImageButton checkableImageButton = b8.g;
        checkableImageButton.setImageDrawable(drawable);
        if (drawable != null) {
            ColorStateList colorStateList = b8.k;
            PorterDuff.Mode mode = b8.l;
            TextInputLayout textInputLayout = b8.a;
            AbstractC0348nb.f(textInputLayout, checkableImageButton, colorStateList, mode);
            AbstractC0348nb.Y(textInputLayout, checkableImageButton, b8.k);
        }
    }
}
