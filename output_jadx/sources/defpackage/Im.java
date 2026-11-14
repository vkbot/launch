package defpackage;

import android.os.Parcel;
import android.util.SparseIntArray;

/* loaded from: classes.dex */
public final class Im extends Hm {
    public final SparseIntArray d;
    public final Parcel e;
    public final int f;
    public final int g;
    public final String h;
    public int i;
    public int j;
    public int k;

    /* JADX WARN: Type inference failed for: r5v0, types: [W2, ki] */
    /* JADX WARN: Type inference failed for: r6v0, types: [W2, ki] */
    /* JADX WARN: Type inference failed for: r7v0, types: [W2, ki] */
    public Im(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new C0277ki(), new C0277ki(), new C0277ki());
    }

    @Override // defpackage.Hm
    public final Im a() {
        Parcel parcel = this.e;
        int dataPosition = parcel.dataPosition();
        int i = this.j;
        if (i == this.f) {
            i = this.g;
        }
        return new Im(parcel, dataPosition, i, this.h + "  ", this.a, this.b, this.c);
    }

    @Override // defpackage.Hm
    public final boolean e(int i) {
        while (this.j < this.g) {
            int i2 = this.k;
            if (i2 == i) {
                return true;
            }
            if (String.valueOf(i2).compareTo(String.valueOf(i)) > 0) {
                return false;
            }
            int i3 = this.j;
            Parcel parcel = this.e;
            parcel.setDataPosition(i3);
            int readInt = parcel.readInt();
            this.k = parcel.readInt();
            this.j += readInt;
        }
        return this.k == i;
    }

    @Override // defpackage.Hm
    public final void h(int i) {
        int i2 = this.i;
        SparseIntArray sparseIntArray = this.d;
        Parcel parcel = this.e;
        if (i2 >= 0) {
            int i3 = sparseIntArray.get(i2);
            int dataPosition = parcel.dataPosition();
            parcel.setDataPosition(i3);
            parcel.writeInt(dataPosition - i3);
            parcel.setDataPosition(dataPosition);
        }
        this.i = i;
        sparseIntArray.put(i, parcel.dataPosition());
        parcel.writeInt(0);
        parcel.writeInt(i);
    }

    public Im(Parcel parcel, int i, int i2, String str, W2 w2, W2 w22, W2 w23) {
        super(w2, w22, w23);
        this.d = new SparseIntArray();
        this.i = -1;
        this.k = -1;
        this.e = parcel;
        this.f = i;
        this.g = i2;
        this.j = i;
        this.h = str;
    }
}
