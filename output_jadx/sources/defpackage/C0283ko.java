package defpackage;

import android.view.WindowInsetsAnimation;

/* renamed from: ko, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0283ko extends AbstractC0309lo {
    public final WindowInsetsAnimation e;

    public C0283ko(WindowInsetsAnimation windowInsetsAnimation) {
        super(0, null, 0L);
        this.e = windowInsetsAnimation;
    }

    @Override // defpackage.AbstractC0309lo
    public final long a() {
        long durationMillis;
        durationMillis = this.e.getDurationMillis();
        return durationMillis;
    }

    @Override // defpackage.AbstractC0309lo
    public final float b() {
        float interpolatedFraction;
        interpolatedFraction = this.e.getInterpolatedFraction();
        return interpolatedFraction;
    }

    @Override // defpackage.AbstractC0309lo
    public final int c() {
        int typeMask;
        typeMask = this.e.getTypeMask();
        return typeMask;
    }

    @Override // defpackage.AbstractC0309lo
    public final void d(float f) {
        this.e.setFraction(f);
    }
}
