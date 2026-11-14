package defpackage;

/* loaded from: classes.dex */
public abstract class qo {
    public final yo a;
    public C0090db[] b;

    public qo() {
        this(new yo());
    }

    public final void a() {
        C0090db[] c0090dbArr = this.b;
        if (c0090dbArr != null) {
            C0090db c0090db = c0090dbArr[0];
            C0090db c0090db2 = c0090dbArr[1];
            yo yoVar = this.a;
            if (c0090db2 == null) {
                c0090db2 = yoVar.a.f(2);
            }
            if (c0090db == null) {
                c0090db = yoVar.a.f(1);
            }
            f(C0090db.a(c0090db, c0090db2));
            C0090db c0090db3 = this.b[AbstractC0554vf.i(16)];
            if (c0090db3 != null) {
                e(c0090db3);
            }
            C0090db c0090db4 = this.b[AbstractC0554vf.i(32)];
            if (c0090db4 != null) {
                d(c0090db4);
            }
            C0090db c0090db5 = this.b[AbstractC0554vf.i(64)];
            if (c0090db5 != null) {
                g(c0090db5);
            }
        }
    }

    public abstract yo b();

    public void c(int i, C0090db c0090db) {
        if (this.b == null) {
            this.b = new C0090db[9];
        }
        for (int i2 = 1; i2 <= 256; i2 <<= 1) {
            if ((i & i2) != 0) {
                this.b[AbstractC0554vf.i(i2)] = c0090db;
            }
        }
    }

    public abstract void d(C0090db c0090db);

    public abstract void e(C0090db c0090db);

    public abstract void f(C0090db c0090db);

    public abstract void g(C0090db c0090db);

    public qo(yo yoVar) {
        this.a = yoVar;
    }
}
