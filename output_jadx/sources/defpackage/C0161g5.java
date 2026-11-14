package defpackage;

import android.content.Intent;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.HashMap;

/* renamed from: g5, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0161g5 {
    public final HashMap a = new HashMap();
    public final HashMap b = new HashMap();
    public final HashMap c = new HashMap();
    public ArrayList d = new ArrayList();
    public final transient HashMap e = new HashMap();
    public final HashMap f = new HashMap();
    public final Bundle g = new Bundle();

    public final boolean a(int i, int i2, Intent intent) {
        String str = (String) this.a.get(Integer.valueOf(i));
        if (str == null) {
            return false;
        }
        C0564w0 c0564w0 = (C0564w0) this.e.get(str);
        if (c0564w0 != null) {
            C9 c9 = c0564w0.a;
            if (this.d.contains(str)) {
                c9.a(c0564w0.b.C(i2, intent));
                this.d.remove(str);
                return true;
            }
        }
        this.f.remove(str);
        this.g.putParcelable(str, new C0514u0(i2, intent));
        return true;
    }

    public final K1 b(String str, C6 c6, C9 c9) {
        int i;
        HashMap hashMap;
        HashMap hashMap2 = this.b;
        if (((Integer) hashMap2.get(str)) == null) {
            AbstractC0069cg.a.getClass();
            int nextInt = AbstractC0069cg.b.a().nextInt(2147418112);
            while (true) {
                i = nextInt + 65536;
                hashMap = this.a;
                if (!hashMap.containsKey(Integer.valueOf(i))) {
                    break;
                }
                AbstractC0069cg.a.getClass();
                nextInt = AbstractC0069cg.b.a().nextInt(2147418112);
            }
            hashMap.put(Integer.valueOf(i), str);
            hashMap2.put(str, Integer.valueOf(i));
        }
        this.e.put(str, new C0564w0(c9, c6));
        HashMap hashMap3 = this.f;
        if (hashMap3.containsKey(str)) {
            Object obj = hashMap3.get(str);
            hashMap3.remove(str);
            c9.a(obj);
        }
        Bundle bundle = this.g;
        C0514u0 c0514u0 = (C0514u0) bundle.getParcelable(str);
        if (c0514u0 != null) {
            bundle.remove(str);
            c9.a(c6.C(c0514u0.a, c0514u0.b));
        }
        return new K1(this, 1, str);
    }
}
