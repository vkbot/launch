package defpackage;

/* renamed from: b3, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0030b3 {
    public int a;
    public int b;
    public float c;
    public float d;
    public long e;
    public long f;
    public long g;
    public float h;
    public int i;

    public final float a(long j) {
        long j2 = this.e;
        if (j < j2) {
            return 0.0f;
        }
        long j3 = this.g;
        if (j3 < 0 || j < j3) {
            return Bc.b(((float) (j - j2)) / this.a, 0.0f, 1.0f) * 0.5f;
        }
        float f = this.h;
        return (Bc.b(((float) (j - j3)) / this.i, 0.0f, 1.0f) * f) + (1.0f - f);
    }
}
