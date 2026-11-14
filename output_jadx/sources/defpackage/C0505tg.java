package defpackage;

import android.util.SparseArray;
import java.util.Set;

/* renamed from: tg, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0505tg {
    public SparseArray a;
    public int b;
    public Set c;

    public final C0480sg a(int i) {
        SparseArray sparseArray = this.a;
        C0480sg c0480sg = (C0480sg) sparseArray.get(i);
        if (c0480sg != null) {
            return c0480sg;
        }
        C0480sg c0480sg2 = new C0480sg();
        sparseArray.put(i, c0480sg2);
        return c0480sg2;
    }
}
