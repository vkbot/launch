package defpackage;

import android.graphics.Typeface;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

/* renamed from: d2, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0081d2 extends AbstractC0145ff {
    public final /* synthetic */ int a;
    public final /* synthetic */ int b;
    public final /* synthetic */ WeakReference c;
    public final /* synthetic */ C0235j2 d;

    public C0081d2(C0235j2 c0235j2, int i, int i2, WeakReference weakReference) {
        this.d = c0235j2;
        this.a = i;
        this.b = i2;
        this.c = weakReference;
    }

    @Override // defpackage.AbstractC0145ff
    public final void A(Typeface typeface) {
        int i = this.a;
        if (i != -1) {
            typeface = AbstractC0210i2.a(typeface, i, (this.b & 2) != 0);
        }
        C0235j2 c0235j2 = this.d;
        if (c0235j2.m) {
            c0235j2.l = typeface;
            TextView textView = (TextView) this.c.get();
            if (textView != null) {
                WeakHashMap weakHashMap = AbstractC0205hn.a;
                if (Um.b(textView)) {
                    textView.post(new RunnableC0106e2(textView, typeface, c0235j2.j));
                } else {
                    textView.setTypeface(typeface, c0235j2.j);
                }
            }
        }
    }

    @Override // defpackage.AbstractC0145ff
    public final void z(int i) {
    }
}
