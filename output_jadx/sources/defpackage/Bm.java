package defpackage;

/* loaded from: classes.dex */
public abstract class Bm extends Am {
    public C0119ef[] a;
    public String b;
    public int c;

    public Bm() {
        this.a = null;
        this.c = 0;
    }

    public C0119ef[] getPathData() {
        return this.a;
    }

    public String getPathName() {
        return this.b;
    }

    public void setPathData(C0119ef[] c0119efArr) {
        C0119ef[] c0119efArr2 = this.a;
        boolean z = false;
        if (c0119efArr2 != null && c0119efArr != null && c0119efArr2.length == c0119efArr.length) {
            int i = 0;
            while (true) {
                if (i >= c0119efArr2.length) {
                    z = true;
                    break;
                }
                C0119ef c0119ef = c0119efArr2[i];
                char c = c0119ef.a;
                C0119ef c0119ef2 = c0119efArr[i];
                if (c != c0119ef2.a || c0119ef.b.length != c0119ef2.b.length) {
                    break;
                } else {
                    i++;
                }
            }
        }
        if (!z) {
            this.a = AbstractC0145ff.l(c0119efArr);
            return;
        }
        C0119ef[] c0119efArr3 = this.a;
        for (int i2 = 0; i2 < c0119efArr.length; i2++) {
            c0119efArr3[i2].a = c0119efArr[i2].a;
            int i3 = 0;
            while (true) {
                float[] fArr = c0119efArr[i2].b;
                if (i3 < fArr.length) {
                    c0119efArr3[i2].b[i3] = fArr[i3];
                    i3++;
                }
            }
        }
    }

    public Bm(Bm bm) {
        this.a = null;
        this.c = 0;
        this.b = bm.b;
        this.a = AbstractC0145ff.l(bm.a);
    }
}
