package defpackage;

/* renamed from: xf, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0604xf {
    public final Object[] a;
    public int b;

    public C0604xf(int i) {
        if (i > 0) {
            this.a = new Object[i];
            return;
        }
        throw new IllegalArgumentException("The max pool size must be > 0");
    }

    public Object a() {
        int i = this.b;
        if (i <= 0) {
            return null;
        }
        int i2 = i - 1;
        Object[] objArr = this.a;
        Object obj = objArr[i2];
        objArr[i2] = null;
        this.b = i - 1;
        return obj;
    }

    public void b(X2 x2) {
        int i = this.b;
        Object[] objArr = this.a;
        if (i < objArr.length) {
            objArr[i] = x2;
            this.b = i + 1;
        }
    }

    public boolean c(Object obj) {
        int i = 0;
        while (true) {
            int i2 = this.b;
            Object[] objArr = this.a;
            if (i >= i2) {
                if (i2 >= objArr.length) {
                    return false;
                }
                objArr[i2] = obj;
                this.b = i2 + 1;
                return true;
            }
            if (objArr[i] == obj) {
                throw new IllegalStateException("Already in the pool!");
            }
            i++;
        }
    }

    public C0604xf() {
        this.a = new Object[256];
    }
}
