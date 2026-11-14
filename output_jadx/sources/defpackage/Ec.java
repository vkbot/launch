package defpackage;

import androidx.lifecycle.b;

/* loaded from: classes.dex */
public abstract class Ec {
    public final L a;
    public boolean b;
    public int c = -1;
    public final /* synthetic */ b d;

    public Ec(b bVar, L l) {
        this.d = bVar;
        this.a = l;
    }

    public final void c(boolean z) {
        if (z == this.b) {
            return;
        }
        this.b = z;
        int i = z ? 1 : -1;
        b bVar = this.d;
        int i2 = bVar.c;
        bVar.c = i + i2;
        if (!bVar.d) {
            bVar.d = true;
            while (true) {
                try {
                    int i3 = bVar.c;
                    if (i2 == i3) {
                        break;
                    } else {
                        i2 = i3;
                    }
                } finally {
                    bVar.d = false;
                }
            }
        }
        if (this.b) {
            bVar.c(this);
        }
    }

    public void d() {
    }

    public abstract boolean e();
}
