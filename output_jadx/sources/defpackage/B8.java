package defpackage;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import com.omoda.launcher.R;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class B8 extends LinearLayout {
    public final TextInputLayout a;
    public final FrameLayout b;
    public final CheckableImageButton c;
    public ColorStateList d;
    public PorterDuff.Mode e;
    public View.OnLongClickListener f;
    public final CheckableImageButton g;
    public final A8 h;
    public int i;
    public final LinkedHashSet j;
    public ColorStateList k;
    public PorterDuff.Mode l;
    public int m;
    public ImageView.ScaleType n;
    public View.OnLongClickListener o;
    public CharSequence p;
    public final C0287l2 q;
    public boolean r;
    public EditText s;
    public final AccessibilityManager t;
    public InterfaceC0588x u;
    public final C0622y8 v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public B8(TextInputLayout textInputLayout, C0491t2 c0491t2) {
        super(textInputLayout.getContext());
        CharSequence text;
        int i = 1;
        this.i = 0;
        this.j = new LinkedHashSet();
        this.v = new C0622y8(this);
        C0647z8 c0647z8 = new C0647z8(this);
        this.t = (AccessibilityManager) getContext().getSystemService("accessibility");
        this.a = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388613));
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.b = frameLayout;
        frameLayout.setVisibility(8);
        frameLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
        LayoutInflater from = LayoutInflater.from(getContext());
        CheckableImageButton a = a(this, from, R.id.text_input_error_icon);
        this.c = a;
        CheckableImageButton a2 = a(frameLayout, from, R.id.text_input_end_icon);
        this.g = a2;
        this.h = new A8(this, c0491t2);
        C0287l2 c0287l2 = new C0287l2(getContext(), null);
        this.q = c0287l2;
        TypedArray typedArray = (TypedArray) c0491t2.a;
        if (typedArray.hasValue(38)) {
            this.d = AbstractC0348nb.A(getContext(), c0491t2, 38);
        }
        if (typedArray.hasValue(39)) {
            this.e = AbstractC0145ff.B(typedArray.getInt(39, -1), null);
        }
        if (typedArray.hasValue(37)) {
            i(c0491t2.h(37));
        }
        a.setContentDescription(getResources().getText(R.string.error_icon_content_description));
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        Rm.s(a, 2);
        a.setClickable(false);
        a.setPressable(false);
        a.setFocusable(false);
        if (!typedArray.hasValue(53)) {
            if (typedArray.hasValue(32)) {
                this.k = AbstractC0348nb.A(getContext(), c0491t2, 32);
            }
            if (typedArray.hasValue(33)) {
                this.l = AbstractC0145ff.B(typedArray.getInt(33, -1), null);
            }
        }
        if (typedArray.hasValue(30)) {
            g(typedArray.getInt(30, 0));
            if (typedArray.hasValue(27) && a2.getContentDescription() != (text = typedArray.getText(27))) {
                a2.setContentDescription(text);
            }
            a2.setCheckable(typedArray.getBoolean(26, true));
        } else if (typedArray.hasValue(53)) {
            if (typedArray.hasValue(54)) {
                this.k = AbstractC0348nb.A(getContext(), c0491t2, 54);
            }
            if (typedArray.hasValue(55)) {
                this.l = AbstractC0145ff.B(typedArray.getInt(55, -1), null);
            }
            g(typedArray.getBoolean(53, false) ? 1 : 0);
            CharSequence text2 = typedArray.getText(51);
            if (a2.getContentDescription() != text2) {
                a2.setContentDescription(text2);
            }
        }
        int dimensionPixelSize = typedArray.getDimensionPixelSize(29, getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size));
        if (dimensionPixelSize < 0) {
            throw new IllegalArgumentException("endIconSize cannot be less than 0");
        }
        if (dimensionPixelSize != this.m) {
            this.m = dimensionPixelSize;
            a2.setMinimumWidth(dimensionPixelSize);
            a2.setMinimumHeight(dimensionPixelSize);
            a.setMinimumWidth(dimensionPixelSize);
            a.setMinimumHeight(dimensionPixelSize);
        }
        if (typedArray.hasValue(31)) {
            ImageView.ScaleType x = AbstractC0348nb.x(typedArray.getInt(31, -1));
            this.n = x;
            a2.setScaleType(x);
            a.setScaleType(x);
        }
        c0287l2.setVisibility(8);
        c0287l2.setId(R.id.textinput_suffix_text);
        c0287l2.setLayoutParams(new LinearLayout.LayoutParams(-2, -2, 80.0f));
        Um.f(c0287l2, 1);
        c0287l2.setTextAppearance(typedArray.getResourceId(72, 0));
        if (typedArray.hasValue(73)) {
            c0287l2.setTextColor(c0491t2.g(73));
        }
        CharSequence text3 = typedArray.getText(71);
        this.p = TextUtils.isEmpty(text3) ? null : text3;
        c0287l2.setText(text3);
        n();
        frameLayout.addView(a2);
        addView(c0287l2);
        addView(frameLayout);
        addView(a);
        textInputLayout.e0.add(c0647z8);
        if (textInputLayout.d != null) {
            c0647z8.a(textInputLayout);
        }
        addOnAttachStateChangeListener(new V3(i, this));
    }

    public final CheckableImageButton a(ViewGroup viewGroup, LayoutInflater layoutInflater, int i) {
        CheckableImageButton checkableImageButton = (CheckableImageButton) layoutInflater.inflate(R.layout.design_text_input_end_icon, viewGroup, false);
        checkableImageButton.setId(i);
        if (AbstractC0348nb.L(getContext())) {
            AbstractC0246jd.h((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams(), 0);
        }
        return checkableImageButton;
    }

    public final C8 b() {
        C8 c0545v6;
        int i = this.i;
        A8 a8 = this.h;
        SparseArray sparseArray = a8.a;
        C8 c8 = (C8) sparseArray.get(i);
        if (c8 == null) {
            B8 b8 = a8.b;
            if (i == -1) {
                c0545v6 = new C0545v6(b8, 0);
            } else if (i == 0) {
                c0545v6 = new C0545v6(b8, 1);
            } else if (i == 1) {
                c8 = new C0068cf(b8, a8.d);
                sparseArray.append(i, c8);
            } else if (i == 2) {
                c0545v6 = new G4(b8);
            } else {
                if (i != 3) {
                    throw new IllegalArgumentException(AbstractC0407pi.h("Invalid end icon mode: ", i));
                }
                c0545v6 = new P7(b8);
            }
            c8 = c0545v6;
            sparseArray.append(i, c8);
        }
        return c8;
    }

    public final int c() {
        int c;
        if (d() || e()) {
            CheckableImageButton checkableImageButton = this.g;
            c = AbstractC0246jd.c((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()) + checkableImageButton.getMeasuredWidth();
        } else {
            c = 0;
        }
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        return Sm.e(this.q) + Sm.e(this) + c;
    }

    public final boolean d() {
        return this.b.getVisibility() == 0 && this.g.getVisibility() == 0;
    }

    public final boolean e() {
        return this.c.getVisibility() == 0;
    }

    public final void f(boolean z) {
        boolean z2;
        boolean isActivated;
        boolean z3;
        C8 b = b();
        boolean k = b.k();
        CheckableImageButton checkableImageButton = this.g;
        boolean z4 = true;
        if (!k || (z3 = checkableImageButton.d) == b.l()) {
            z2 = false;
        } else {
            checkableImageButton.setChecked(!z3);
            z2 = true;
        }
        if (!(b instanceof P7) || (isActivated = checkableImageButton.isActivated()) == b.j()) {
            z4 = z2;
        } else {
            checkableImageButton.setActivated(!isActivated);
        }
        if (z || z4) {
            AbstractC0348nb.Y(this.a, checkableImageButton, this.k);
        }
    }

    public final void g(int i) {
        if (this.i == i) {
            return;
        }
        C8 b = b();
        InterfaceC0588x interfaceC0588x = this.u;
        AccessibilityManager accessibilityManager = this.t;
        if (interfaceC0588x != null && accessibilityManager != null) {
            AbstractC0563w.b(accessibilityManager, interfaceC0588x);
        }
        this.u = null;
        b.s();
        this.i = i;
        Iterator it = this.j.iterator();
        if (it.hasNext()) {
            throw AbstractC0407pi.f(it);
        }
        h(i != 0);
        C8 b2 = b();
        int i2 = this.h.c;
        if (i2 == 0) {
            i2 = b2.d();
        }
        Drawable n = i2 != 0 ? C6.n(getContext(), i2) : null;
        CheckableImageButton checkableImageButton = this.g;
        checkableImageButton.setImageDrawable(n);
        TextInputLayout textInputLayout = this.a;
        if (n != null) {
            AbstractC0348nb.f(textInputLayout, checkableImageButton, this.k, this.l);
            AbstractC0348nb.Y(textInputLayout, checkableImageButton, this.k);
        }
        int c = b2.c();
        CharSequence text = c != 0 ? getResources().getText(c) : null;
        if (checkableImageButton.getContentDescription() != text) {
            checkableImageButton.setContentDescription(text);
        }
        checkableImageButton.setCheckable(b2.k());
        if (!b2.i(textInputLayout.getBoxBackgroundMode())) {
            throw new IllegalStateException("The current box background mode " + textInputLayout.getBoxBackgroundMode() + " is not supported by the end icon mode " + i);
        }
        b2.r();
        InterfaceC0588x h = b2.h();
        this.u = h;
        if (h != null && accessibilityManager != null) {
            WeakHashMap weakHashMap = AbstractC0205hn.a;
            if (Um.b(this)) {
                AbstractC0563w.a(accessibilityManager, this.u);
            }
        }
        View.OnClickListener f = b2.f();
        View.OnLongClickListener onLongClickListener = this.o;
        checkableImageButton.setOnClickListener(f);
        AbstractC0348nb.a0(checkableImageButton, onLongClickListener);
        EditText editText = this.s;
        if (editText != null) {
            b2.m(editText);
            j(b2);
        }
        AbstractC0348nb.f(textInputLayout, checkableImageButton, this.k, this.l);
        f(true);
    }

    public final void h(boolean z) {
        if (d() != z) {
            this.g.setVisibility(z ? 0 : 8);
            k();
            m();
            this.a.q();
        }
    }

    public final void i(Drawable drawable) {
        CheckableImageButton checkableImageButton = this.c;
        checkableImageButton.setImageDrawable(drawable);
        l();
        AbstractC0348nb.f(this.a, checkableImageButton, this.d, this.e);
    }

    public final void j(C8 c8) {
        if (this.s == null) {
            return;
        }
        if (c8.e() != null) {
            this.s.setOnFocusChangeListener(c8.e());
        }
        if (c8.g() != null) {
            this.g.setOnFocusChangeListener(c8.g());
        }
    }

    public final void k() {
        this.b.setVisibility((this.g.getVisibility() != 0 || e()) ? 8 : 0);
        setVisibility((d() || e() || !((this.p == null || this.r) ? 8 : false)) ? 0 : 8);
    }

    public final void l() {
        CheckableImageButton checkableImageButton = this.c;
        Drawable drawable = checkableImageButton.getDrawable();
        TextInputLayout textInputLayout = this.a;
        checkableImageButton.setVisibility((drawable != null && textInputLayout.j.q && textInputLayout.m()) ? 0 : 8);
        k();
        m();
        if (this.i != 0) {
            return;
        }
        textInputLayout.q();
    }

    public final void m() {
        int i;
        TextInputLayout textInputLayout = this.a;
        if (textInputLayout.d == null) {
            return;
        }
        if (d() || e()) {
            i = 0;
        } else {
            EditText editText = textInputLayout.d;
            WeakHashMap weakHashMap = AbstractC0205hn.a;
            i = Sm.e(editText);
        }
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.material_input_text_to_prefix_suffix_padding);
        int paddingTop = textInputLayout.d.getPaddingTop();
        int paddingBottom = textInputLayout.d.getPaddingBottom();
        WeakHashMap weakHashMap2 = AbstractC0205hn.a;
        Sm.k(this.q, dimensionPixelSize, paddingTop, i, paddingBottom);
    }

    public final void n() {
        C0287l2 c0287l2 = this.q;
        int visibility = c0287l2.getVisibility();
        int i = (this.p == null || this.r) ? 8 : 0;
        if (visibility != i) {
            b().p(i == 0);
        }
        k();
        c0287l2.setVisibility(i);
        this.a.q();
    }
}
