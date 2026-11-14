package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: g7, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0163g7 implements InterfaceC0111e7 {
    public final Pn d;
    public int f;
    public int g;
    public Pn a = null;
    public boolean b = false;
    public boolean c = false;
    public int e = 1;
    public int h = 1;
    public C0422q7 i = null;
    public boolean j = false;
    public final ArrayList k = new ArrayList();
    public final ArrayList l = new ArrayList();

    public C0163g7(Pn pn) {
        this.d = pn;
    }

    @Override // defpackage.InterfaceC0111e7
    public final void a(InterfaceC0111e7 interfaceC0111e7) {
        ArrayList arrayList = this.l;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (!((C0163g7) it.next()).j) {
                return;
            }
        }
        this.c = true;
        Pn pn = this.a;
        if (pn != null) {
            pn.a(this);
        }
        if (this.b) {
            this.d.a(this);
            return;
        }
        Iterator it2 = arrayList.iterator();
        C0163g7 c0163g7 = null;
        int i = 0;
        while (it2.hasNext()) {
            C0163g7 c0163g72 = (C0163g7) it2.next();
            if (!(c0163g72 instanceof C0422q7)) {
                i++;
                c0163g7 = c0163g72;
            }
        }
        if (c0163g7 != null && i == 1 && c0163g7.j) {
            C0422q7 c0422q7 = this.i;
            if (c0422q7 != null) {
                if (!c0422q7.j) {
                    return;
                } else {
                    this.f = this.h * c0422q7.g;
                }
            }
            d(c0163g7.g + this.f);
        }
        Pn pn2 = this.a;
        if (pn2 != null) {
            pn2.a(this);
        }
    }

    public final void b(Pn pn) {
        this.k.add(pn);
        if (this.j) {
            pn.a(pn);
        }
    }

    public final void c() {
        this.l.clear();
        this.k.clear();
        this.j = false;
        this.g = 0;
        this.c = false;
        this.b = false;
    }

    public void d(int i) {
        if (this.j) {
            return;
        }
        this.j = true;
        this.g = i;
        Iterator it = this.k.iterator();
        while (it.hasNext()) {
            InterfaceC0111e7 interfaceC0111e7 = (InterfaceC0111e7) it.next();
            interfaceC0111e7.a(interfaceC0111e7);
        }
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(this.d.b.h0);
        sb.append(":");
        switch (this.e) {
            case 1:
                str = "UNKNOWN";
                break;
            case 2:
                str = "HORIZONTAL_DIMENSION";
                break;
            case 3:
                str = "VERTICAL_DIMENSION";
                break;
            case 4:
                str = "LEFT";
                break;
            case 5:
                str = "RIGHT";
                break;
            case 6:
                str = "TOP";
                break;
            case 7:
                str = "BOTTOM";
                break;
            case 8:
                str = "BASELINE";
                break;
            default:
                str = "null";
                break;
        }
        sb.append(str);
        sb.append("(");
        sb.append(this.j ? Integer.valueOf(this.g) : "unresolved");
        sb.append(") <t=");
        sb.append(this.l.size());
        sb.append(":d=");
        sb.append(this.k.size());
        sb.append(">");
        return sb.toString();
    }
}
