package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: kc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0271kc implements Parcelable {
    public static final Parcelable.Creator<C0271kc> CREATOR = new C0489t0(8);
    public int a;
    public int b;
    public boolean c;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.a);
        parcel.writeInt(this.b);
        parcel.writeInt(this.c ? 1 : 0);
    }
}
