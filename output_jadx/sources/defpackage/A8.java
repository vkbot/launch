package defpackage;

import android.content.res.TypedArray;
import android.util.SparseArray;

/* loaded from: classes.dex */
public final class A8 {
    public final SparseArray a = new SparseArray();
    public final B8 b;
    public final int c;
    public final int d;

    public A8(B8 b8, C0491t2 c0491t2) {
        this.b = b8;
        TypedArray typedArray = (TypedArray) c0491t2.a;
        this.c = typedArray.getResourceId(28, 0);
        this.d = typedArray.getResourceId(52, 0);
    }
}
