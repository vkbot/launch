package defpackage;

import java.util.ArrayList;

/* renamed from: j9, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0242j9 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ C0242j9(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    public final void a(Object obj) {
        switch (this.a) {
            case 0:
                C0268k9 c0268k9 = (C0268k9) obj;
                if (c0268k9 == null) {
                    c0268k9 = new C0268k9(-3);
                }
                ((K1) this.b).I(c0268k9);
                return;
            default:
                C0268k9 c0268k92 = (C0268k9) obj;
                synchronized (AbstractC0294l9.c) {
                    try {
                        C0277ki c0277ki = AbstractC0294l9.d;
                        ArrayList arrayList = (ArrayList) c0277ki.getOrDefault((String) this.b, null);
                        if (arrayList == null) {
                            return;
                        }
                        c0277ki.remove((String) this.b);
                        for (int i = 0; i < arrayList.size(); i++) {
                            ((C0242j9) arrayList.get(i)).a(c0268k92);
                        }
                        return;
                    } finally {
                    }
                }
        }
    }
}
