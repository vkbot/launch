package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.omoda.launcher.R;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class P1 extends K1 {
    public final O1 e;
    public Drawable f;
    public ColorStateList g;
    public PorterDuff.Mode h;
    public boolean i;
    public boolean j;

    public P1(O1 o1) {
        super(o1);
        this.g = null;
        this.h = null;
        this.i = false;
        this.j = false;
        this.e = o1;
    }

    @Override // defpackage.K1
    public final void C(AttributeSet attributeSet, int i) {
        super.C(attributeSet, R.attr.seekBarStyle);
        O1 o1 = this.e;
        Context context = o1.getContext();
        int[] iArr = Zf.g;
        C0491t2 q = C0491t2.q(context, attributeSet, iArr, R.attr.seekBarStyle);
        Context context2 = o1.getContext();
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        AbstractC0076cn.d(o1, context2, iArr, attributeSet, (TypedArray) q.a, R.attr.seekBarStyle, 0);
        Drawable i2 = q.i(0);
        if (i2 != null) {
            o1.setThumb(i2);
        }
        Drawable h = q.h(1);
        Drawable drawable = this.f;
        if (drawable != null) {
            drawable.setCallback(null);
        }
        this.f = h;
        if (h != null) {
            h.setCallback(o1);
            C7.b(h, Sm.d(o1));
            if (h.isStateful()) {
                h.setState(o1.getDrawableState());
            }
            P();
        }
        o1.invalidate();
        TypedArray typedArray = (TypedArray) q.a;
        if (typedArray.hasValue(3)) {
            this.h = D7.b(typedArray.getInt(3, -1), this.h);
            this.j = true;
        }
        if (typedArray.hasValue(2)) {
            this.g = q.g(2);
            this.i = true;
        }
        q.r();
        P();
    }

    public final void P() {
        Drawable drawable = this.f;
        if (drawable != null) {
            if (this.i || this.j) {
                Drawable mutate = drawable.mutate();
                this.f = mutate;
                if (this.i) {
                    B7.h(mutate, this.g);
                }
                if (this.j) {
                    B7.i(this.f, this.h);
                }
                if (this.f.isStateful()) {
                    this.f.setState(this.e.getDrawableState());
                }
            }
        }
    }

    public final void Q(Canvas canvas) {
        if (this.f != null) {
            int max = this.e.getMax();
            if (max > 1) {
                int intrinsicWidth = this.f.getIntrinsicWidth();
                int intrinsicHeight = this.f.getIntrinsicHeight();
                int i = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                int i2 = intrinsicHeight >= 0 ? intrinsicHeight / 2 : 1;
                this.f.setBounds(-i, -i2, i, i2);
                float width = ((r0.getWidth() - r0.getPaddingLeft()) - r0.getPaddingRight()) / max;
                int save = canvas.save();
                canvas.translate(r0.getPaddingLeft(), r0.getHeight() / 2);
                for (int i3 = 0; i3 <= max; i3++) {
                    this.f.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(save);
            }
        }
    }
}
