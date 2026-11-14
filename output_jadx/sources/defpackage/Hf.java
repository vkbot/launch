package defpackage;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;

/* loaded from: classes.dex */
public final class Hf extends AbstractC0472s8 {
    final /* synthetic */ If this$0;

    /* loaded from: classes.dex */
    public static final class a extends AbstractC0472s8 {
        final /* synthetic */ If this$0;

        public a(If r1) {
            this.this$0 = r1;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostResumed(Activity activity) {
            AbstractC0348nb.r(activity, "activity");
            If r1 = this.this$0;
            int i = r1.b + 1;
            r1.b = i;
            if (i == 1) {
                if (r1.c) {
                    r1.f.d(Vb.ON_RESUME);
                    r1.c = false;
                } else {
                    Handler handler = r1.e;
                    AbstractC0348nb.o(handler);
                    handler.removeCallbacks(r1.g);
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostStarted(Activity activity) {
            AbstractC0348nb.r(activity, "activity");
            If r1 = this.this$0;
            int i = r1.a + 1;
            r1.a = i;
            if (i == 1 && r1.d) {
                r1.f.d(Vb.ON_START);
                r1.d = false;
            }
        }
    }

    public Hf(If r1) {
        this.this$0 = r1;
    }

    @Override // defpackage.AbstractC0472s8, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        AbstractC0348nb.r(activity, "activity");
    }

    @Override // defpackage.AbstractC0472s8, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        AbstractC0348nb.r(activity, "activity");
        If r2 = this.this$0;
        int i = r2.b - 1;
        r2.b = i;
        if (i == 0) {
            Handler handler = r2.e;
            AbstractC0348nb.o(handler);
            handler.postDelayed(r2.g, 700L);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPreCreated(Activity activity, Bundle bundle) {
        AbstractC0348nb.r(activity, "activity");
        Gf.a(activity, new a(this.this$0));
    }

    @Override // defpackage.AbstractC0472s8, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        AbstractC0348nb.r(activity, "activity");
        If r1 = this.this$0;
        int i = r1.a - 1;
        r1.a = i;
        if (i == 0 && r1.c) {
            r1.f.d(Vb.ON_STOP);
            r1.d = true;
        }
    }
}
