package defpackage;

/* loaded from: classes.dex */
public final class Zh extends AbstractC0097di {
    public final C0045bi a;
    public final float b;
    public final float c;

    public Zh(C0045bi c0045bi, float f, float f2) {
        this.a = c0045bi;
        this.b = f;
        this.c = f2;
    }

    public final float a() {
        C0045bi c0045bi = this.a;
        return (float) Math.toDegrees(Math.atan((c0045bi.c - this.c) / (c0045bi.b - this.b)));
    }
}
