package defpackage;

import android.content.Context;
import com.omoda.launcher.R;

/* loaded from: classes.dex */
public final class V7 {
    public static final int f = (int) Math.round(5.1000000000000005d);
    public final boolean a;
    public final int b;
    public final int c;
    public final int d;
    public final float e;

    public V7(Context context) {
        boolean I = AbstractC0152fm.I(context, R.attr.elevationOverlayEnabled, false);
        int l = C6.l(context, R.attr.elevationOverlayColor, 0);
        int l2 = C6.l(context, R.attr.elevationOverlayAccentColor, 0);
        int l3 = C6.l(context, R.attr.colorSurface, 0);
        float f2 = context.getResources().getDisplayMetrics().density;
        this.a = I;
        this.b = l;
        this.c = l2;
        this.d = l3;
        this.e = f2;
    }
}
