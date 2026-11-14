package defpackage;

import android.animation.ValueAnimator;
import android.os.Handler;
import android.view.View;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class U6 implements Runnable {
    public final /* synthetic */ int a = 1;
    public Object b;
    public Object c;
    public Object d;

    public /* synthetic */ U6() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        switch (this.a) {
            case 0:
                ArrayList arrayList = (ArrayList) this.b;
                C0557vi c0557vi = (C0557vi) this.c;
                if (arrayList.contains(c0557vi)) {
                    arrayList.remove(c0557vi);
                    ((Z6) this.d).getClass();
                    AbstractC0407pi.a(c0557vi.c.E, c0557vi.a);
                    return;
                }
                return;
            case 1:
                try {
                    obj = ((CallableC0217i9) this.b).call();
                } catch (Exception unused) {
                    obj = null;
                }
                ((Handler) this.d).post(new RunnableC0233j0((C0242j9) this.c, obj, 5, false));
                return;
            default:
                C0231io.h((View) this.b, (K1) this.c);
                ((ValueAnimator) this.d).start();
                return;
        }
    }

    public U6(Z6 z6, ArrayList arrayList, C0557vi c0557vi) {
        this.d = z6;
        this.b = arrayList;
        this.c = c0557vi;
    }

    public U6(View view, C0335mo c0335mo, K1 k1, ValueAnimator valueAnimator) {
        this.b = view;
        this.c = k1;
        this.d = valueAnimator;
    }
}
