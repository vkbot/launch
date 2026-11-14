package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.RadioButton;
import com.omoda.launcher.R;

/* loaded from: classes.dex */
public class L1 extends RadioButton implements InterfaceC0534uk {
    public final C0183h1 a;
    public final C0614y0 b;
    public final C0235j2 c;
    public E1 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public L1(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.radioButtonStyle);
        AbstractC0459rk.a(context);
        AbstractC0124ek.a(this, getContext());
        C0183h1 c0183h1 = new C0183h1(this);
        this.a = c0183h1;
        c0183h1.d(attributeSet, R.attr.radioButtonStyle);
        C0614y0 c0614y0 = new C0614y0(this);
        this.b = c0614y0;
        c0614y0.k(attributeSet, R.attr.radioButtonStyle);
        C0235j2 c0235j2 = new C0235j2(this);
        this.c = c0235j2;
        c0235j2.f(attributeSet, R.attr.radioButtonStyle);
        getEmojiTextViewHelper().a(attributeSet, R.attr.radioButtonStyle);
    }

    private E1 getEmojiTextViewHelper() {
        if (this.d == null) {
            this.d = new E1(this);
        }
        return this.d;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C0614y0 c0614y0 = this.b;
        if (c0614y0 != null) {
            c0614y0.a();
        }
        C0235j2 c0235j2 = this.c;
        if (c0235j2 != null) {
            c0235j2.b();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        C0183h1 c0183h1 = this.a;
        if (c0183h1 != null) {
            c0183h1.getClass();
        }
        return compoundPaddingLeft;
    }

    public ColorStateList getSupportBackgroundTintList() {
        C0614y0 c0614y0 = this.b;
        if (c0614y0 != null) {
            return c0614y0.h();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0614y0 c0614y0 = this.b;
        if (c0614y0 != null) {
            return c0614y0.i();
        }
        return null;
    }

    @Override // defpackage.InterfaceC0534uk
    public ColorStateList getSupportButtonTintList() {
        C0183h1 c0183h1 = this.a;
        if (c0183h1 != null) {
            return (ColorStateList) c0183h1.a;
        }
        return null;
    }

    public PorterDuff.Mode getSupportButtonTintMode() {
        C0183h1 c0183h1 = this.a;
        if (c0183h1 != null) {
            return (PorterDuff.Mode) c0183h1.b;
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.c.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.c.e();
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        getEmojiTextViewHelper().b(z);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0614y0 c0614y0 = this.b;
        if (c0614y0 != null) {
            c0614y0.m();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0614y0 c0614y0 = this.b;
        if (c0614y0 != null) {
            c0614y0.n(i);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        C0183h1 c0183h1 = this.a;
        if (c0183h1 != null) {
            if (c0183h1.e) {
                c0183h1.e = false;
            } else {
                c0183h1.e = true;
                c0183h1.a();
            }
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C0235j2 c0235j2 = this.c;
        if (c0235j2 != null) {
            c0235j2.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C0235j2 c0235j2 = this.c;
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
        C0614y0 c0614y0 = this.b;
        if (c0614y0 != null) {
            c0614y0.s(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0614y0 c0614y0 = this.b;
        if (c0614y0 != null) {
            c0614y0.t(mode);
        }
    }

    @Override // defpackage.InterfaceC0534uk
    public void setSupportButtonTintList(ColorStateList colorStateList) {
        C0183h1 c0183h1 = this.a;
        if (c0183h1 != null) {
            c0183h1.a = colorStateList;
            c0183h1.c = true;
            c0183h1.a();
        }
    }

    @Override // defpackage.InterfaceC0534uk
    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        C0183h1 c0183h1 = this.a;
        if (c0183h1 != null) {
            c0183h1.b = mode;
            c0183h1.d = true;
            c0183h1.a();
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        C0235j2 c0235j2 = this.c;
        c0235j2.i(colorStateList);
        c0235j2.b();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        C0235j2 c0235j2 = this.c;
        c0235j2.j(mode);
        c0235j2.b();
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i) {
        setButtonDrawable(C6.n(getContext(), i));
    }
}
