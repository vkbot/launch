package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;

/* loaded from: classes.dex */
public final class Vh {
    public AbstractC0348nb a = new Object();
    public AbstractC0348nb b = new Object();
    public AbstractC0348nb c = new Object();
    public AbstractC0348nb d = new Object();
    public InterfaceC0033b6 e = new C0103e(0.0f);
    public InterfaceC0033b6 f = new C0103e(0.0f);
    public InterfaceC0033b6 g = new C0103e(0.0f);
    public InterfaceC0033b6 h = new C0103e(0.0f);
    public T7 i = new T7(0);
    public T7 j = new T7(0);
    public T7 k = new T7(0);
    public T7 l = new T7(0);

    public static Uh a(Context context, int i, int i2, C0103e c0103e) {
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i);
        if (i2 != 0) {
            contextThemeWrapper = new ContextThemeWrapper(contextThemeWrapper, i2);
        }
        TypedArray obtainStyledAttributes = contextThemeWrapper.obtainStyledAttributes(Yf.v);
        try {
            int i3 = obtainStyledAttributes.getInt(0, 0);
            int i4 = obtainStyledAttributes.getInt(3, i3);
            int i5 = obtainStyledAttributes.getInt(4, i3);
            int i6 = obtainStyledAttributes.getInt(2, i3);
            int i7 = obtainStyledAttributes.getInt(1, i3);
            InterfaceC0033b6 c = c(obtainStyledAttributes, 5, c0103e);
            InterfaceC0033b6 c2 = c(obtainStyledAttributes, 8, c);
            InterfaceC0033b6 c3 = c(obtainStyledAttributes, 9, c);
            InterfaceC0033b6 c4 = c(obtainStyledAttributes, 7, c);
            InterfaceC0033b6 c5 = c(obtainStyledAttributes, 6, c);
            Uh uh = new Uh();
            AbstractC0348nb i8 = AbstractC0152fm.i(i4);
            uh.a = i8;
            Uh.b(i8);
            uh.e = c2;
            AbstractC0348nb i9 = AbstractC0152fm.i(i5);
            uh.b = i9;
            Uh.b(i9);
            uh.f = c3;
            AbstractC0348nb i10 = AbstractC0152fm.i(i6);
            uh.c = i10;
            Uh.b(i10);
            uh.g = c4;
            AbstractC0348nb i11 = AbstractC0152fm.i(i7);
            uh.d = i11;
            Uh.b(i11);
            uh.h = c5;
            return uh;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public static Uh b(Context context, AttributeSet attributeSet, int i, int i2) {
        C0103e c0103e = new C0103e(0);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Yf.p, i, i2);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        int resourceId2 = obtainStyledAttributes.getResourceId(1, 0);
        obtainStyledAttributes.recycle();
        return a(context, resourceId, resourceId2, c0103e);
    }

    public static InterfaceC0033b6 c(TypedArray typedArray, int i, InterfaceC0033b6 interfaceC0033b6) {
        TypedValue peekValue = typedArray.peekValue(i);
        if (peekValue == null) {
            return interfaceC0033b6;
        }
        int i2 = peekValue.type;
        return i2 == 5 ? new C0103e(TypedValue.complexToDimensionPixelSize(peekValue.data, typedArray.getResources().getDisplayMetrics())) : i2 == 6 ? new Ng(peekValue.getFraction(1.0f, 1.0f)) : interfaceC0033b6;
    }

    public final boolean d(RectF rectF) {
        boolean z = this.l.getClass().equals(T7.class) && this.j.getClass().equals(T7.class) && this.i.getClass().equals(T7.class) && this.k.getClass().equals(T7.class);
        float a = this.e.a(rectF);
        return z && ((this.f.a(rectF) > a ? 1 : (this.f.a(rectF) == a ? 0 : -1)) == 0 && (this.h.a(rectF) > a ? 1 : (this.h.a(rectF) == a ? 0 : -1)) == 0 && (this.g.a(rectF) > a ? 1 : (this.g.a(rectF) == a ? 0 : -1)) == 0) && ((this.b instanceof C0302lh) && (this.a instanceof C0302lh) && (this.c instanceof C0302lh) && (this.d instanceof C0302lh));
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [Uh, java.lang.Object] */
    public final Uh e() {
        ?? obj = new Object();
        obj.a = this.a;
        obj.b = this.b;
        obj.c = this.c;
        obj.d = this.d;
        obj.e = this.e;
        obj.f = this.f;
        obj.g = this.g;
        obj.h = this.h;
        obj.i = this.i;
        obj.j = this.j;
        obj.k = this.k;
        obj.l = this.l;
        return obj;
    }
}
