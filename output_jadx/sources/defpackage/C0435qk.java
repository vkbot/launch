package defpackage;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;

/* renamed from: qk, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0435qk {
    public static final long[] i = {0, 5000, 15000, 60000, 300000};
    public final Context a;
    public final Handler b;
    public C0409pk c;
    public volatile int d;
    public volatile boolean e;
    public volatile boolean f;
    public volatile boolean g;
    public final J2 h;

    public C0435qk(Context context) {
        AbstractC0348nb.r(context, "context");
        this.a = context;
        this.b = new Handler(Looper.getMainLooper());
        this.h = new J2(14, this);
    }
}
