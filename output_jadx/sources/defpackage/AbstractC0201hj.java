package defpackage;

import android.os.Build;
import android.view.View;
import java.nio.ByteBuffer;
import java.util.WeakHashMap;

/* renamed from: hj, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0201hj {
    public int a;
    public int b;
    public int c;
    public Object d;

    /* JADX WARN: Type inference failed for: r0v2, types: [Of, java.lang.Object] */
    public AbstractC0201hj() {
        if (Of.a == null) {
            Of.a = new Object();
        }
    }

    public int a(int i) {
        if (i < this.c) {
            return ((ByteBuffer) this.d).getShort(this.b + i);
        }
        return 0;
    }

    public abstract Object b(View view);

    public abstract void c(View view, Object obj);

    public void d(View view, Object obj) {
        Object tag;
        if (Build.VERSION.SDK_INT >= this.b) {
            c(view, obj);
            return;
        }
        if (Build.VERSION.SDK_INT >= this.b) {
            tag = b(view);
        } else {
            tag = view.getTag(this.a);
            if (!((Class) this.d).isInstance(tag)) {
                tag = null;
            }
        }
        if (e(tag, obj)) {
            WeakHashMap weakHashMap = AbstractC0205hn.a;
            View.AccessibilityDelegate a = AbstractC0076cn.a(view);
            C0488t c0488t = a != null ? a instanceof r ? ((r) a).a : new C0488t(a) : null;
            if (c0488t == null) {
                c0488t = new C0488t();
            }
            AbstractC0205hn.h(view, c0488t);
            view.setTag(this.a, obj);
            AbstractC0205hn.d(view, this.c);
        }
    }

    public abstract boolean e(Object obj, Object obj2);
}
