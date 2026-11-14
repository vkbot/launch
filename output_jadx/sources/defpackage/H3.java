package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes.dex */
public final class H3 implements Parcelable {
    public static final Parcelable.Creator<H3> CREATOR = new C0489t0(3);
    public final C0325me a;
    public final C0325me b;
    public final C0645z6 c;
    public final C0325me d;
    public final int e;
    public final int f;
    public final int g;

    public H3(C0325me c0325me, C0325me c0325me2, C0645z6 c0645z6, C0325me c0325me3, int i) {
        Objects.requireNonNull(c0325me, "start cannot be null");
        Objects.requireNonNull(c0325me2, "end cannot be null");
        Objects.requireNonNull(c0645z6, "validator cannot be null");
        this.a = c0325me;
        this.b = c0325me2;
        this.d = c0325me3;
        this.e = i;
        this.c = c0645z6;
        if (c0325me3 != null && c0325me.a.compareTo(c0325me3.a) > 0) {
            throw new IllegalArgumentException("start Month cannot be after current Month");
        }
        if (c0325me3 != null && c0325me3.a.compareTo(c0325me2.a) > 0) {
            throw new IllegalArgumentException("current Month cannot be after end Month");
        }
        if (i < 0 || i > AbstractC0561vm.c(null).getMaximum(7)) {
            throw new IllegalArgumentException("firstDayOfWeek is not valid");
        }
        this.g = c0325me.d(c0325me2) + 1;
        this.f = (c0325me2.c - c0325me.c) + 1;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof H3)) {
            return false;
        }
        H3 h3 = (H3) obj;
        return this.a.equals(h3.a) && this.b.equals(h3.b) && He.a(this.d, h3.d) && this.e == h3.e && this.c.equals(h3.c);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b, this.d, Integer.valueOf(this.e), this.c});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.a, 0);
        parcel.writeParcelable(this.b, 0);
        parcel.writeParcelable(this.d, 0);
        parcel.writeParcelable(this.c, 0);
        parcel.writeInt(this.e);
    }
}
