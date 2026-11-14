package defpackage;

import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;

/* renamed from: rn, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0462rn {
    public final LinkedHashMap a = new LinkedHashMap();

    public final void a() {
        for (AbstractC0412pn abstractC0412pn : this.a.values()) {
            HashMap hashMap = abstractC0412pn.a;
            if (hashMap != null) {
                synchronized (hashMap) {
                    try {
                        for (Object obj : abstractC0412pn.a.values()) {
                            if (obj instanceof Closeable) {
                                try {
                                    ((Closeable) obj).close();
                                } catch (IOException e) {
                                    throw new RuntimeException(e);
                                }
                            }
                        }
                    } finally {
                    }
                }
            }
            LinkedHashSet linkedHashSet = abstractC0412pn.b;
            if (linkedHashSet != null) {
                synchronized (linkedHashSet) {
                    try {
                        for (Closeable closeable : abstractC0412pn.b) {
                            if (closeable != null) {
                                try {
                                    closeable.close();
                                } catch (IOException e2) {
                                    throw new RuntimeException(e2);
                                }
                            }
                        }
                    } finally {
                    }
                }
            }
            abstractC0412pn.a();
        }
        this.a.clear();
    }
}
