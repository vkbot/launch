package defpackage;

import android.graphics.Matrix;
import android.graphics.Path;

/* renamed from: bi, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0045bi extends AbstractC0071ci {
    public float b;
    public float c;

    @Override // defpackage.AbstractC0071ci
    public final void a(Matrix matrix, Path path) {
        Matrix matrix2 = this.a;
        matrix.invert(matrix2);
        path.transform(matrix2);
        path.lineTo(this.b, this.c);
        path.transform(matrix);
    }
}
