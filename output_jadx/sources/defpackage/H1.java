package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;

/* loaded from: classes.dex */
public class H1 extends ImageView {
    public final C0614y0 a;
    public final G1 b;
    public boolean c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public H1(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        AbstractC0459rk.a(context);
        this.c = false;
        AbstractC0124ek.a(this, getContext());
        C0614y0 c0614y0 = new C0614y0(this);
        this.a = c0614y0;
        c0614y0.k(attributeSet, i);
        G1 g1 = new G1(this);
        this.b = g1;
        g1.d(attributeSet, i);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C0614y0 c0614y0 = this.a;
        if (c0614y0 != null) {
            c0614y0.a();
        }
        G1 g1 = this.b;
        if (g1 != null) {
            g1.a();
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

    public ColorStateList getSupportImageTintList() {
        C0484sk c0484sk;
        G1 g1 = this.b;
        if (g1 == null || (c0484sk = (C0484sk) g1.c) == null) {
            return null;
        }
        return c0484sk.a;
    }

    public PorterDuff.Mode getSupportImageTintMode() {
        C0484sk c0484sk;
        G1 g1 = this.b;
        if (g1 == null || (c0484sk = (C0484sk) g1.c) == null) {
            return null;
        }
        return c0484sk.b;
    }

    @Override // android.widget.ImageView, android.view.View
    public final boolean hasOverlappingRendering() {
        return !(((ImageView) this.b.b).getBackground() instanceof RippleDrawable) && super.hasOverlappingRendering();
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

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        G1 g1 = this.b;
        if (g1 != null) {
            g1.a();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        G1 g1 = this.b;
        if (g1 != null && drawable != null && !this.c) {
            g1.a = drawable.getLevel();
        }
        super.setImageDrawable(drawable);
        if (g1 != null) {
            g1.a();
            if (this.c) {
                return;
            }
            ImageView imageView = (ImageView) g1.b;
            if (imageView.getDrawable() != null) {
                imageView.getDrawable().setLevel(g1.a);
            }
        }
    }

    @Override // android.widget.ImageView
    public void setImageLevel(int i) {
        super.setImageLevel(i);
        this.c = true;
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        G1 g1 = this.b;
        if (g1 != null) {
            ImageView imageView = (ImageView) g1.b;
            if (i != 0) {
                Drawable n = C6.n(imageView.getContext(), i);
                if (n != null) {
                    D7.a(n);
                }
                imageView.setImageDrawable(n);
            } else {
                imageView.setImageDrawable(null);
            }
            g1.a();
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        G1 g1 = this.b;
        if (g1 != null) {
            g1.a();
        }
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

    public void setSupportImageTintList(ColorStateList colorStateList) {
        G1 g1 = this.b;
        if (g1 != null) {
            if (((C0484sk) g1.c) == null) {
                g1.c = new Object();
            }
            C0484sk c0484sk = (C0484sk) g1.c;
            c0484sk.a = colorStateList;
            c0484sk.d = true;
            g1.a();
        }
    }

    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        G1 g1 = this.b;
        if (g1 != null) {
            if (((C0484sk) g1.c) == null) {
                g1.c = new Object();
            }
            C0484sk c0484sk = (C0484sk) g1.c;
            c0484sk.b = mode;
            c0484sk.c = true;
            g1.a();
        }
    }
}
