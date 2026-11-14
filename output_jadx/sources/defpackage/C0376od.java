package defpackage;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import com.google.android.material.button.MaterialButton;
import com.omoda.launcher.R;
import java.util.WeakHashMap;

/* renamed from: od, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0376od {
    public final MaterialButton a;
    public Vh b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public PorterDuff.Mode i;
    public ColorStateList j;
    public ColorStateList k;
    public ColorStateList l;
    public Ed m;
    public boolean q;
    public RippleDrawable s;
    public int t;
    public boolean n = false;
    public boolean o = false;
    public boolean p = false;
    public boolean r = true;

    public C0376od(MaterialButton materialButton, Vh vh) {
        this.a = materialButton;
        this.b = vh;
    }

    public final InterfaceC0148fi a() {
        RippleDrawable rippleDrawable = this.s;
        if (rippleDrawable == null || rippleDrawable.getNumberOfLayers() <= 1) {
            return null;
        }
        return this.s.getNumberOfLayers() > 2 ? (InterfaceC0148fi) this.s.getDrawable(2) : (InterfaceC0148fi) this.s.getDrawable(1);
    }

    public final Ed b(boolean z) {
        RippleDrawable rippleDrawable = this.s;
        if (rippleDrawable == null || rippleDrawable.getNumberOfLayers() <= 0) {
            return null;
        }
        return (Ed) ((LayerDrawable) ((InsetDrawable) this.s.getDrawable(0)).getDrawable()).getDrawable(!z ? 1 : 0);
    }

    public final void c(Vh vh) {
        this.b = vh;
        if (b(false) != null) {
            b(false).setShapeAppearanceModel(vh);
        }
        if (b(true) != null) {
            b(true).setShapeAppearanceModel(vh);
        }
        if (a() != null) {
            a().setShapeAppearanceModel(vh);
        }
    }

    public final void d(int i, int i2) {
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        MaterialButton materialButton = this.a;
        int f = Sm.f(materialButton);
        int paddingTop = materialButton.getPaddingTop();
        int e = Sm.e(materialButton);
        int paddingBottom = materialButton.getPaddingBottom();
        int i3 = this.e;
        int i4 = this.f;
        this.f = i2;
        this.e = i;
        if (!this.o) {
            e();
        }
        Sm.k(materialButton, f, (paddingTop + i) - i3, e, (paddingBottom + i2) - i4);
    }

    public final void e() {
        Ed ed = new Ed(this.b);
        MaterialButton materialButton = this.a;
        ed.g(materialButton.getContext());
        B7.h(ed, this.j);
        PorterDuff.Mode mode = this.i;
        if (mode != null) {
            B7.i(ed, mode);
        }
        float f = this.h;
        ColorStateList colorStateList = this.k;
        ed.a.j = f;
        ed.invalidateSelf();
        Dd dd = ed.a;
        if (dd.d != colorStateList) {
            dd.d = colorStateList;
            ed.onStateChange(ed.getState());
        }
        Ed ed2 = new Ed(this.b);
        ed2.setTint(0);
        float f2 = this.h;
        int m = this.n ? C6.m(materialButton, R.attr.colorSurface) : 0;
        ed2.a.j = f2;
        ed2.invalidateSelf();
        ColorStateList valueOf = ColorStateList.valueOf(m);
        Dd dd2 = ed2.a;
        if (dd2.d != valueOf) {
            dd2.d = valueOf;
            ed2.onStateChange(ed2.getState());
        }
        Ed ed3 = new Ed(this.b);
        this.m = ed3;
        B7.g(ed3, -1);
        ColorStateList colorStateList2 = this.l;
        if (colorStateList2 == null) {
            colorStateList2 = ColorStateList.valueOf(0);
        }
        RippleDrawable rippleDrawable = new RippleDrawable(colorStateList2, new InsetDrawable((Drawable) new LayerDrawable(new Drawable[]{ed2, ed}), this.c, this.e, this.d, this.f), this.m);
        this.s = rippleDrawable;
        materialButton.setInternalBackground(rippleDrawable);
        Ed b = b(false);
        if (b != null) {
            b.h(this.t);
            b.setState(materialButton.getDrawableState());
        }
    }

    public final void f() {
        Ed b = b(false);
        Ed b2 = b(true);
        if (b != null) {
            float f = this.h;
            ColorStateList colorStateList = this.k;
            b.a.j = f;
            b.invalidateSelf();
            Dd dd = b.a;
            if (dd.d != colorStateList) {
                dd.d = colorStateList;
                b.onStateChange(b.getState());
            }
            if (b2 != null) {
                float f2 = this.h;
                int m = this.n ? C6.m(this.a, R.attr.colorSurface) : 0;
                b2.a.j = f2;
                b2.invalidateSelf();
                ColorStateList valueOf = ColorStateList.valueOf(m);
                Dd dd2 = b2.a;
                if (dd2.d != valueOf) {
                    dd2.d = valueOf;
                    b2.onStateChange(b2.getState());
                }
            }
        }
    }
}
