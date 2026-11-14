package defpackage;

import android.view.View;

/* loaded from: classes.dex */
public final class Ck extends AbstractC0554vf {
    public final /* synthetic */ int c;
    public boolean d;
    public int e;
    public final /* synthetic */ Object f;

    public Ck(Dk dk, int i) {
        this.c = 0;
        this.f = dk;
        this.e = i;
        this.d = false;
    }

    @Override // defpackage.InterfaceC0637yn
    public final void a() {
        switch (this.c) {
            case 0:
                if (this.d) {
                    return;
                }
                ((Dk) this.f).a.setVisibility(this.e);
                return;
            default:
                int i = this.e + 1;
                this.e = i;
                C0612xn c0612xn = (C0612xn) this.f;
                if (i == c0612xn.a.size()) {
                    AbstractC0554vf abstractC0554vf = c0612xn.d;
                    if (abstractC0554vf != null) {
                        abstractC0554vf.a();
                    }
                    this.e = 0;
                    this.d = false;
                    c0612xn.e = false;
                    return;
                }
                return;
        }
    }

    @Override // defpackage.AbstractC0554vf, defpackage.InterfaceC0637yn
    public void b(View view) {
        switch (this.c) {
            case 0:
                this.d = true;
                return;
            default:
                return;
        }
    }

    @Override // defpackage.AbstractC0554vf, defpackage.InterfaceC0637yn
    public final void c() {
        switch (this.c) {
            case 0:
                ((Dk) this.f).a.setVisibility(0);
                return;
            default:
                if (this.d) {
                    return;
                }
                this.d = true;
                AbstractC0554vf abstractC0554vf = ((C0612xn) this.f).d;
                if (abstractC0554vf != null) {
                    abstractC0554vf.c();
                    return;
                }
                return;
        }
    }

    public Ck(C0612xn c0612xn) {
        this.c = 1;
        this.f = c0612xn;
        this.d = false;
        this.e = 0;
    }
}
