package defpackage;

import java.util.ArrayList;

/* renamed from: nh, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0354nh {
    public Pn a;
    public ArrayList b;

    public static long a(C0163g7 c0163g7, long j) {
        Pn pn = c0163g7.d;
        if (pn instanceof Fa) {
            return j;
        }
        ArrayList arrayList = c0163g7.k;
        int size = arrayList.size();
        long j2 = j;
        for (int i = 0; i < size; i++) {
            InterfaceC0111e7 interfaceC0111e7 = (InterfaceC0111e7) arrayList.get(i);
            if (interfaceC0111e7 instanceof C0163g7) {
                C0163g7 c0163g72 = (C0163g7) interfaceC0111e7;
                if (c0163g72.d != pn) {
                    j2 = Math.min(j2, a(c0163g72, c0163g72.f + j));
                }
            }
        }
        if (c0163g7 != pn.i) {
            return j2;
        }
        long j3 = pn.j();
        long j4 = j - j3;
        return Math.min(Math.min(j2, a(pn.h, j4)), j4 - r9.f);
    }

    public static long b(C0163g7 c0163g7, long j) {
        Pn pn = c0163g7.d;
        if (pn instanceof Fa) {
            return j;
        }
        ArrayList arrayList = c0163g7.k;
        int size = arrayList.size();
        long j2 = j;
        for (int i = 0; i < size; i++) {
            InterfaceC0111e7 interfaceC0111e7 = (InterfaceC0111e7) arrayList.get(i);
            if (interfaceC0111e7 instanceof C0163g7) {
                C0163g7 c0163g72 = (C0163g7) interfaceC0111e7;
                if (c0163g72.d != pn) {
                    j2 = Math.max(j2, b(c0163g72, c0163g72.f + j));
                }
            }
        }
        if (c0163g7 != pn.h) {
            return j2;
        }
        long j3 = pn.j();
        long j4 = j + j3;
        return Math.max(Math.max(j2, b(pn.i, j4)), j4 - r9.f);
    }
}
