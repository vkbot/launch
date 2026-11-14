package androidx.lifecycle;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import defpackage.AbstractC0348nb;
import defpackage.C0491t2;
import defpackage.C0547v8;
import defpackage.Hf;
import defpackage.If;
import defpackage.Vb;
import defpackage.Xb;
import defpackage.Ya;
import defpackage.Yb;
import java.util.HashSet;
import java.util.List;

/* loaded from: classes.dex */
public final class ProcessLifecycleInitializer implements Ya {
    @Override // defpackage.Ya
    public final List a() {
        return C0547v8.a;
    }

    @Override // defpackage.Ya
    public final Object b(Context context) {
        AbstractC0348nb.r(context, "context");
        C0491t2 m = C0491t2.m(context);
        AbstractC0348nb.q(m, "getInstance(context)");
        if (!((HashSet) m.b).contains(ProcessLifecycleInitializer.class)) {
            throw new IllegalStateException("ProcessLifecycleInitializer cannot be initialized lazily.\n               Please ensure that you have:\n               <meta-data\n                   android:name='androidx.lifecycle.ProcessLifecycleInitializer'\n                   android:value='androidx.startup' />\n               under InitializationProvider in your AndroidManifest.xml");
        }
        if (!Yb.a.getAndSet(true)) {
            Context applicationContext = context.getApplicationContext();
            AbstractC0348nb.p(applicationContext, "null cannot be cast to non-null type android.app.Application");
            ((Application) applicationContext).registerActivityLifecycleCallbacks(new Xb());
        }
        If r3 = If.h;
        r3.getClass();
        r3.e = new Handler();
        r3.f.d(Vb.ON_CREATE);
        Context applicationContext2 = context.getApplicationContext();
        AbstractC0348nb.p(applicationContext2, "null cannot be cast to non-null type android.app.Application");
        ((Application) applicationContext2).registerActivityLifecycleCallbacks(new Hf(r3));
        return r3;
    }
}
