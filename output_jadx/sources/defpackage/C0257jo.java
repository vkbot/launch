package defpackage;

import android.graphics.Insets;
import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowInsetsAnimation;
import android.view.WindowInsetsAnimation$Callback;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* renamed from: jo, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0257jo extends WindowInsetsAnimation$Callback {
    public final I5 a;
    public List b;
    public ArrayList c;
    public final HashMap d;

    public C0257jo(I5 i5) {
        super(0);
        this.d = new HashMap();
        this.a = i5;
    }

    public final C0335mo a(WindowInsetsAnimation windowInsetsAnimation) {
        C0335mo c0335mo = (C0335mo) this.d.get(windowInsetsAnimation);
        if (c0335mo == null) {
            c0335mo = new C0335mo(0, null, 0L);
            if (Build.VERSION.SDK_INT >= 30) {
                c0335mo.a = new C0283ko(windowInsetsAnimation);
            }
            this.d.put(windowInsetsAnimation, c0335mo);
        }
        return c0335mo;
    }

    public final void onEnd(WindowInsetsAnimation windowInsetsAnimation) {
        I5 i5 = this.a;
        a(windowInsetsAnimation);
        ((View) i5.e).setTranslationY(0.0f);
        this.d.remove(windowInsetsAnimation);
    }

    public final void onPrepare(WindowInsetsAnimation windowInsetsAnimation) {
        I5 i5 = this.a;
        a(windowInsetsAnimation);
        View view = (View) i5.e;
        int[] iArr = (int[]) i5.f;
        view.getLocationOnScreen(iArr);
        i5.c = iArr[1];
    }

    public final WindowInsets onProgress(WindowInsets windowInsets, List list) {
        float fraction;
        ArrayList arrayList = this.c;
        if (arrayList == null) {
            ArrayList arrayList2 = new ArrayList(list.size());
            this.c = arrayList2;
            this.b = Collections.unmodifiableList(arrayList2);
        } else {
            arrayList.clear();
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            WindowInsetsAnimation j = AbstractC0638z.j(list.get(size));
            C0335mo a = a(j);
            fraction = j.getFraction();
            a.a.d(fraction);
            this.c.add(a);
        }
        I5 i5 = this.a;
        yo f = yo.f(null, windowInsets);
        i5.b(f, this.b);
        return f.e();
    }

    public final WindowInsetsAnimation.Bounds onStart(WindowInsetsAnimation windowInsetsAnimation, WindowInsetsAnimation.Bounds bounds) {
        Insets lowerBound;
        Insets upperBound;
        I5 i5 = this.a;
        a(windowInsetsAnimation);
        lowerBound = bounds.getLowerBound();
        C0090db c = C0090db.c(lowerBound);
        upperBound = bounds.getUpperBound();
        C0090db c2 = C0090db.c(upperBound);
        View view = (View) i5.e;
        int[] iArr = (int[]) i5.f;
        view.getLocationOnScreen(iArr);
        int i = i5.c - iArr[1];
        i5.d = i;
        view.setTranslationY(i);
        AbstractC0638z.m();
        return AbstractC0638z.h(c.d(), c2.d());
    }
}
