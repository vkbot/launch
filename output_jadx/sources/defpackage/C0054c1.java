package defpackage;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.AutoCompleteTextView;

/* renamed from: c1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0054c1 extends AutoCompleteTextView {
    public static final int[] d = {R.attr.popupBackground};
    public final C0614y0 a;
    public final C0235j2 b;
    public final K1 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0054c1(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, com.omoda.launcher.R.attr.autoCompleteTextViewStyle);
        AbstractC0459rk.a(context);
        AbstractC0124ek.a(this, getContext());
        C0491t2 q = C0491t2.q(getContext(), attributeSet, d, com.omoda.launcher.R.attr.autoCompleteTextViewStyle);
        if (((TypedArray) q.a).hasValue(0)) {
            setDropDownBackgroundDrawable(q.h(0));
        }
        q.r();
        C0614y0 c0614y0 = new C0614y0(this);
        this.a = c0614y0;
        c0614y0.k(attributeSet, com.omoda.launcher.R.attr.autoCompleteTextViewStyle);
        C0235j2 c0235j2 = new C0235j2(this);
        this.b = c0235j2;
        c0235j2.f(attributeSet, com.omoda.launcher.R.attr.autoCompleteTextViewStyle);
        c0235j2.b();
        K1 k1 = new K1(this, 3);
        this.c = k1;
        k1.C(attributeSet, com.omoda.launcher.R.attr.autoCompleteTextViewStyle);
        KeyListener keyListener = getKeyListener();
        if (keyListener instanceof NumberKeyListener) {
            return;
        }
        boolean isFocusable = super.isFocusable();
        boolean isClickable = super.isClickable();
        boolean isLongClickable = super.isLongClickable();
        int inputType = super.getInputType();
        KeyListener x = k1.x(keyListener);
        if (x == keyListener) {
            return;
        }
        super.setKeyListener(x);
        super.setRawInputType(inputType);
        super.setFocusable(isFocusable);
        super.setClickable(isClickable);
        super.setLongClickable(isLongClickable);
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C0614y0 c0614y0 = this.a;
        if (c0614y0 != null) {
            c0614y0.a();
        }
        C0235j2 c0235j2 = this.b;
        if (c0235j2 != null) {
            c0235j2.b();
        }
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return super.getCustomSelectionActionModeCallback();
    }

    public ColorStateList getSupportBackgroundTintList() {
        C0614y0 c0614y0 = this.a;
        if (c0614y0 != null) {
            return c0614y0.h();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0614y0 c0614y0 = this.a;
        if (c0614y0 != null) {
            return c0614y0.i();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.b.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.b.e();
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        AbstractC0152fm.x(editorInfo, onCreateInputConnection, this);
        return this.c.F(onCreateInputConnection, editorInfo);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0614y0 c0614y0 = this.a;
        if (c0614y0 != null) {
            c0614y0.m();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0614y0 c0614y0 = this.a;
        if (c0614y0 != null) {
            c0614y0.n(i);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C0235j2 c0235j2 = this.b;
        if (c0235j2 != null) {
            c0235j2.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C0235j2 c0235j2 = this.b;
        if (c0235j2 != null) {
            c0235j2.b();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(callback);
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundResource(int i) {
        setDropDownBackgroundDrawable(C6.n(getContext(), i));
    }

    public void setEmojiCompatEnabled(boolean z) {
        this.c.N(z);
    }

    @Override // android.widget.TextView
    public void setKeyListener(KeyListener keyListener) {
        super.setKeyListener(this.c.x(keyListener));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0614y0 c0614y0 = this.a;
        if (c0614y0 != null) {
            c0614y0.s(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0614y0 c0614y0 = this.a;
        if (c0614y0 != null) {
            c0614y0.t(mode);
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        C0235j2 c0235j2 = this.b;
        c0235j2.i(colorStateList);
        c0235j2.b();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        C0235j2 c0235j2 = this.b;
        c0235j2.j(mode);
        c0235j2.b();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0235j2 c0235j2 = this.b;
        if (c0235j2 != null) {
            c0235j2.g(context, i);
        }
    }
}
