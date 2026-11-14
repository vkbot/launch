package defpackage;

import android.animation.ValueAnimator;
import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import java.util.Objects;
import java.util.WeakHashMap;

/* renamed from: ho, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewOnApplyWindowInsetsListenerC0206ho implements View.OnApplyWindowInsetsListener {
    public final I5 a;
    public yo b;

    public ViewOnApplyWindowInsetsListenerC0206ho(View view, I5 i5) {
        yo yoVar;
        this.a = i5;
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        yo a = Ym.a(view);
        if (a != null) {
            yoVar = (Build.VERSION.SDK_INT >= 30 ? new C0413po(a) : new C0387oo(a)).b();
        } else {
            yoVar = null;
        }
        this.b = yoVar;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        wo woVar;
        if (!view.isLaidOut()) {
            this.b = yo.f(view, windowInsets);
            return C0231io.i(view, windowInsets);
        }
        yo f = yo.f(view, windowInsets);
        if (this.b == null) {
            WeakHashMap weakHashMap = AbstractC0205hn.a;
            this.b = Ym.a(view);
        }
        if (this.b == null) {
            this.b = f;
            return C0231io.i(view, windowInsets);
        }
        I5 j = C0231io.j(view);
        if (j != null && Objects.equals((WindowInsets) j.b, windowInsets)) {
            return C0231io.i(view, windowInsets);
        }
        yo yoVar = this.b;
        int i = 1;
        int i2 = 0;
        while (true) {
            woVar = f.a;
            if (i > 256) {
                break;
            }
            if (!woVar.f(i).equals(yoVar.a.f(i))) {
                i2 |= i;
            }
            i <<= 1;
        }
        if (i2 == 0) {
            return C0231io.i(view, windowInsets);
        }
        yo yoVar2 = this.b;
        C0335mo c0335mo = new C0335mo(i2, (i2 & 8) != 0 ? woVar.f(8).d > yoVar2.a.f(8).d ? C0231io.e : C0231io.f : C0231io.g, 160L);
        c0335mo.a.d(0.0f);
        ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(c0335mo.a.a());
        C0090db f2 = woVar.f(i2);
        C0090db f3 = yoVar2.a.f(i2);
        int min = Math.min(f2.a, f3.a);
        int i3 = f2.b;
        int i4 = f3.b;
        int min2 = Math.min(i3, i4);
        int i5 = f2.c;
        int i6 = f3.c;
        int min3 = Math.min(i5, i6);
        int i7 = f2.d;
        int i8 = i2;
        int i9 = f3.d;
        K1 k1 = new K1(C0090db.b(min, min2, min3, Math.min(i7, i9)), C0090db.b(Math.max(f2.a, f3.a), Math.max(i3, i4), Math.max(i5, i6), Math.max(i7, i9)), 21, false);
        C0231io.f(view, windowInsets, false);
        duration.addUpdateListener(new C0180go(c0335mo, f, yoVar2, i8, view));
        duration.addListener(new Ul(c0335mo, view, 2));
        Ue.a(view, new U6(view, c0335mo, k1, duration));
        this.b = f;
        return C0231io.i(view, windowInsets);
    }
}
