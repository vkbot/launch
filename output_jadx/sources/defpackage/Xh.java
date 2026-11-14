package defpackage;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.BitSet;

/* loaded from: classes.dex */
public final class Xh {
    public final C0122ei[] a = new C0122ei[4];
    public final Matrix[] b = new Matrix[4];
    public final Matrix[] c = new Matrix[4];
    public final PointF d = new PointF();
    public final Path e = new Path();
    public final Path f = new Path();
    public final C0122ei g = new C0122ei();
    public final float[] h = new float[2];
    public final float[] i = new float[2];
    public final Path j = new Path();
    public final Path k = new Path();
    public final boolean l = true;

    public Xh() {
        for (int i = 0; i < 4; i++) {
            this.a[i] = new C0122ei();
            this.b[i] = new Matrix();
            this.c[i] = new Matrix();
        }
    }

    public final void a(Vh vh, float f, RectF rectF, L l, Path path) {
        Matrix[] matrixArr;
        Matrix[] matrixArr2;
        C0122ei[] c0122eiArr;
        int i;
        float[] fArr;
        int i2;
        Xh xh = this;
        path.rewind();
        Path path2 = xh.e;
        path2.rewind();
        Path path3 = xh.f;
        path3.rewind();
        path3.addRect(rectF, Path.Direction.CW);
        int i3 = 0;
        while (true) {
            matrixArr = xh.c;
            matrixArr2 = xh.b;
            c0122eiArr = xh.a;
            i = 4;
            fArr = xh.h;
            if (i3 >= 4) {
                break;
            }
            InterfaceC0033b6 interfaceC0033b6 = i3 != 1 ? i3 != 2 ? i3 != 3 ? vh.f : vh.e : vh.h : vh.g;
            AbstractC0348nb abstractC0348nb = i3 != 1 ? i3 != 2 ? i3 != 3 ? vh.b : vh.a : vh.d : vh.c;
            C0122ei c0122ei = c0122eiArr[i3];
            abstractC0348nb.getClass();
            abstractC0348nb.C(c0122ei, f, interfaceC0033b6.a(rectF));
            int i4 = i3 + 1;
            float f2 = (i4 % 4) * 90;
            matrixArr2[i3].reset();
            PointF pointF = xh.d;
            if (i3 == 1) {
                i2 = i4;
                pointF.set(rectF.right, rectF.bottom);
            } else if (i3 == 2) {
                i2 = i4;
                pointF.set(rectF.left, rectF.bottom);
            } else if (i3 != 3) {
                i2 = i4;
                pointF.set(rectF.right, rectF.top);
            } else {
                i2 = i4;
                pointF.set(rectF.left, rectF.top);
            }
            matrixArr2[i3].setTranslate(pointF.x, pointF.y);
            matrixArr2[i3].preRotate(f2);
            C0122ei c0122ei2 = c0122eiArr[i3];
            fArr[0] = c0122ei2.b;
            fArr[1] = c0122ei2.c;
            matrixArr2[i3].mapPoints(fArr);
            matrixArr[i3].reset();
            matrixArr[i3].setTranslate(fArr[0], fArr[1]);
            matrixArr[i3].preRotate(f2);
            i3 = i2;
        }
        int i5 = 0;
        while (i5 < i) {
            C0122ei c0122ei3 = c0122eiArr[i5];
            c0122ei3.getClass();
            fArr[0] = 0.0f;
            fArr[1] = c0122ei3.a;
            matrixArr2[i5].mapPoints(fArr);
            if (i5 == 0) {
                path.moveTo(fArr[0], fArr[1]);
            } else {
                path.lineTo(fArr[0], fArr[1]);
            }
            c0122eiArr[i5].b(matrixArr2[i5], path);
            if (l != null) {
                C0122ei c0122ei4 = c0122eiArr[i5];
                Matrix matrix = matrixArr2[i5];
                Ed ed = (Ed) l.b;
                BitSet bitSet = ed.d;
                c0122ei4.getClass();
                bitSet.set(i5, false);
                c0122ei4.a(c0122ei4.e);
                ed.b[i5] = new Yh(new ArrayList(c0122ei4.g), new Matrix(matrix));
            }
            int i6 = i5 + 1;
            int i7 = i6 % 4;
            C0122ei c0122ei5 = c0122eiArr[i5];
            fArr[0] = c0122ei5.b;
            fArr[1] = c0122ei5.c;
            matrixArr2[i5].mapPoints(fArr);
            C0122ei c0122ei6 = c0122eiArr[i7];
            c0122ei6.getClass();
            float[] fArr2 = xh.i;
            fArr2[0] = 0.0f;
            fArr2[1] = c0122ei6.a;
            matrixArr2[i7].mapPoints(fArr2);
            float max = Math.max(((float) Math.hypot(fArr[0] - fArr2[0], fArr[1] - fArr2[1])) - 0.001f, 0.0f);
            C0122ei c0122ei7 = c0122eiArr[i5];
            fArr[0] = c0122ei7.b;
            fArr[1] = c0122ei7.c;
            matrixArr2[i5].mapPoints(fArr);
            if (i5 == 1 || i5 == 3) {
                Math.abs(rectF.centerX() - fArr[0]);
            } else {
                Math.abs(rectF.centerY() - fArr[1]);
            }
            C0122ei c0122ei8 = xh.g;
            c0122ei8.d(0.0f, 270.0f, 0.0f);
            (i5 != 1 ? i5 != 2 ? i5 != 3 ? vh.j : vh.i : vh.l : vh.k).getClass();
            c0122ei8.c(max, 0.0f);
            Path path4 = xh.j;
            path4.reset();
            c0122ei8.b(matrixArr[i5], path4);
            if (xh.l && (xh.b(path4, i5) || xh.b(path4, i7))) {
                path4.op(path4, path3, Path.Op.DIFFERENCE);
                fArr[0] = 0.0f;
                fArr[1] = c0122ei8.a;
                matrixArr[i5].mapPoints(fArr);
                path2.moveTo(fArr[0], fArr[1]);
                c0122ei8.b(matrixArr[i5], path2);
            } else {
                c0122ei8.b(matrixArr[i5], path);
            }
            if (l != null) {
                Matrix matrix2 = matrixArr[i5];
                Ed ed2 = (Ed) l.b;
                ed2.d.set(i5 + 4, false);
                c0122ei8.a(c0122ei8.e);
                ed2.c[i5] = new Yh(new ArrayList(c0122ei8.g), new Matrix(matrix2));
            }
            i = 4;
            xh = this;
            i5 = i6;
        }
        path.close();
        path2.close();
        if (path2.isEmpty()) {
            return;
        }
        path.op(path2, Path.Op.UNION);
    }

    public final boolean b(Path path, int i) {
        Path path2 = this.k;
        path2.reset();
        this.a[i].b(this.b[i], path2);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        path2.computeBounds(rectF, true);
        path.op(path2, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        if (rectF.isEmpty()) {
            return rectF.width() > 1.0f && rectF.height() > 1.0f;
        }
        return true;
    }
}
