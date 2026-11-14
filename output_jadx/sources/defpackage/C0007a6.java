package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;

/* renamed from: a6, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0007a6 extends AbstractC0078d {
    public static final Parcelable.Creator<C0007a6> CREATOR = new C0052c(3);
    public SparseArray c;

    public C0007a6(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        int readInt = parcel.readInt();
        int[] iArr = new int[readInt];
        parcel.readIntArray(iArr);
        Parcelable[] readParcelableArray = parcel.readParcelableArray(classLoader);
        this.c = new SparseArray(readInt);
        for (int i = 0; i < readInt; i++) {
            this.c.append(iArr[i], readParcelableArray[i]);
        }
    }

    @Override // defpackage.AbstractC0078d, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        SparseArray sparseArray = this.c;
        int size = sparseArray != null ? sparseArray.size() : 0;
        parcel.writeInt(size);
        int[] iArr = new int[size];
        Parcelable[] parcelableArr = new Parcelable[size];
        for (int i2 = 0; i2 < size; i2++) {
            iArr[i2] = this.c.keyAt(i2);
            parcelableArr[i2] = (Parcelable) this.c.valueAt(i2);
        }
        parcel.writeIntArray(iArr);
        parcel.writeParcelableArray(parcelableArr, i);
    }
}
