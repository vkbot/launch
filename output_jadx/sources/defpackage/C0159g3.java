package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;

/* renamed from: g3, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0159g3 implements Parcelable {
    public static final Parcelable.Creator<C0159g3> CREATOR = new C0489t0(2);
    public final int[] a;
    public final ArrayList b;
    public final int[] c;
    public final int[] d;
    public final int e;
    public final String f;
    public final int g;
    public final int h;
    public final CharSequence i;
    public final int j;
    public final CharSequence k;
    public final ArrayList l;
    public final ArrayList m;
    public final boolean n;

    public C0159g3(C0133f3 c0133f3) {
        int size = c0133f3.a.size();
        this.a = new int[size * 5];
        if (c0133f3.g) {
            this.b = new ArrayList(size);
            this.c = new int[size];
            this.d = new int[size];
            int i = 0;
            for (int i2 = 0; i2 < size; i2++) {
                O9 o9 = (O9) c0133f3.a.get(i2);
                int i3 = i + 1;
                this.a[i] = o9.a;
                ArrayList arrayList = this.b;
                AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = o9.b;
                arrayList.add(abstractComponentCallbacksC0598x9 != null ? abstractComponentCallbacksC0598x9.e : null);
                int[] iArr = this.a;
                iArr[i3] = o9.c;
                iArr[i + 2] = o9.d;
                int i4 = i + 4;
                iArr[i + 3] = o9.e;
                i += 5;
                iArr[i4] = o9.f;
                this.c[i2] = o9.g.ordinal();
                this.d[i2] = o9.h.ordinal();
            }
            this.e = c0133f3.f;
            this.f = c0133f3.h;
            this.g = c0133f3.r;
            this.h = c0133f3.i;
            this.i = c0133f3.j;
            this.j = c0133f3.k;
            this.k = c0133f3.l;
            this.l = c0133f3.m;
            this.m = c0133f3.n;
            this.n = c0133f3.o;
            return;
        }
        throw new IllegalStateException("Not on back stack");
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeIntArray(this.a);
        parcel.writeStringList(this.b);
        parcel.writeIntArray(this.c);
        parcel.writeIntArray(this.d);
        parcel.writeInt(this.e);
        parcel.writeString(this.f);
        parcel.writeInt(this.g);
        parcel.writeInt(this.h);
        TextUtils.writeToParcel(this.i, parcel, 0);
        parcel.writeInt(this.j);
        TextUtils.writeToParcel(this.k, parcel, 0);
        parcel.writeStringList(this.l);
        parcel.writeStringList(this.m);
        parcel.writeInt(this.n ? 1 : 0);
    }

    public C0159g3(Parcel parcel) {
        this.a = parcel.createIntArray();
        this.b = parcel.createStringArrayList();
        this.c = parcel.createIntArray();
        this.d = parcel.createIntArray();
        this.e = parcel.readInt();
        this.f = parcel.readString();
        this.g = parcel.readInt();
        this.h = parcel.readInt();
        Parcelable.Creator creator = TextUtils.CHAR_SEQUENCE_CREATOR;
        this.i = (CharSequence) creator.createFromParcel(parcel);
        this.j = parcel.readInt();
        this.k = (CharSequence) creator.createFromParcel(parcel);
        this.l = parcel.createStringArrayList();
        this.m = parcel.createStringArrayList();
        this.n = parcel.readInt() != 0;
    }
}
