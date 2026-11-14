package androidx.emoji2.text;

import android.content.Context;
import android.os.Looper;
import androidx.lifecycle.ProcessLifecycleInitializer;
import androidx.lifecycle.a;
import defpackage.AbstractC0342n5;
import defpackage.C0035b8;
import defpackage.C0491t2;
import defpackage.InterfaceC0039bc;
import defpackage.L;
import defpackage.R6;
import defpackage.RunnableC0112e8;
import defpackage.Y7;
import defpackage.Ya;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

/* loaded from: classes.dex */
public class EmojiCompatInitializer implements Ya {
    @Override // defpackage.Ya
    public final List a() {
        return Collections.singletonList(ProcessLifecycleInitializer.class);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [h9, Y7] */
    @Override // defpackage.Ya
    public final Object b(Context context) {
        Object obj;
        ?? y7 = new Y7(new L(context));
        y7.a = 1;
        if (C0035b8.j == null) {
            synchronized (C0035b8.i) {
                try {
                    if (C0035b8.j == null) {
                        C0035b8.j = new C0035b8(y7);
                    }
                } finally {
                }
            }
        }
        C0491t2 m = C0491t2.m(context);
        m.getClass();
        synchronized (C0491t2.e) {
            try {
                obj = ((HashMap) m.a).get(ProcessLifecycleInitializer.class);
                if (obj == null) {
                    obj = m.c(ProcessLifecycleInitializer.class, new HashSet());
                }
            } finally {
            }
        }
        final a d = ((InterfaceC0039bc) obj).d();
        d.a(new R6() { // from class: androidx.emoji2.text.EmojiCompatInitializer.1
            @Override // defpackage.R6
            public final void a() {
                EmojiCompatInitializer.this.getClass();
                AbstractC0342n5.a(Looper.getMainLooper()).postDelayed(new RunnableC0112e8(0), 500L);
                d.f(this);
            }
        });
        return Boolean.TRUE;
    }
}
