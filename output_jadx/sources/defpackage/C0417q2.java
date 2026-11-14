package defpackage;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.ToggleButton;

/* renamed from: q2, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0417q2 extends ToggleButton {
    public final C0614y0 a;
    public final C0235j2 b;
    public E1 c;

    public C0417q2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.buttonStyleToggle);
        AbstractC0124ek.a(this, getContext());
        C0614y0 c0614y0 = new C0614y0(this);
        this.a = c0614y0;
        c0614y0.k(attributeSet, R.attr.buttonStyleToggle);
        C0235j2 c0235j2 = new C0235j2(this);
        this.b = c0235j2;
        c0235j2.f(attributeSet, R.attr.buttonStyleToggle);
        getEmojiTextViewHelper().a(attributeSet, R.attr.buttonStyleToggle);
    }

    private E1 getEmojiTextViewHelper() {
        if (this.c == null) {
            this.c = new E1(this);
        }
        return this.c;
    }

    @Override // android.widget.ToggleButton, android.widget.CompoundButton, android.widget.TextView, android.view.View
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

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        getEmojiTextViewHelper().b(z);
    }

    @Override // android.widget.ToggleButton, android.view.View
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

    public void setEmojiCompatEnabled(boolean z) {
        getEmojiTextViewHelper().c(z);
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(((C6) getEmojiTextViewHelper().b.b).o(inputFilterArr));
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
}
