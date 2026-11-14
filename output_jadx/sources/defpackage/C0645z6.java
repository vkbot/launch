package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* renamed from: z6, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0645z6 implements Parcelable {
    public static final Parcelable.Creator<C0645z6> CREATOR = new C0489t0(4);
    public final long a;

    public C0645z6(long j) {
        this.a = j;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C0645z6) && this.a == ((C0645z6) obj).a;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.a)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.a);
    }
}
