package defpackage;

import android.content.Context;
import java.util.concurrent.Callable;

/* renamed from: i9, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class CallableC0217i9 implements Callable {
    public final /* synthetic */ int a;
    public final /* synthetic */ String b;
    public final /* synthetic */ Context c;
    public final /* synthetic */ C0139f9 d;
    public final /* synthetic */ int e;

    public /* synthetic */ CallableC0217i9(String str, Context context, C0139f9 c0139f9, int i, int i2) {
        this.a = i2;
        this.b = str;
        this.c = context;
        this.d = c0139f9;
        this.e = i;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        switch (this.a) {
            case 0:
                return AbstractC0294l9.a(this.b, this.c, this.d, this.e);
            default:
                try {
                    return AbstractC0294l9.a(this.b, this.c, this.d, this.e);
                } catch (Throwable unused) {
                    return new C0268k9(-3);
                }
        }
    }
}
