package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0078d implements Parcelable {
    public final Parcelable a;
    public static final C0026b b = new AbstractC0078d();
    public static final Parcelable.Creator<AbstractC0078d> CREATOR = new C0052c(0);

    public AbstractC0078d() {
        this.a = null;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.a, i);
    }

    public AbstractC0078d(Parcelable parcelable) {
        if (parcelable != null) {
            this.a = parcelable == b ? null : parcelable;
            return;
        }
        throw new IllegalArgumentException("superState must not be null");
    }

    public AbstractC0078d(Parcel parcel, ClassLoader classLoader) {
        Parcelable readParcelable = parcel.readParcelable(classLoader);
        this.a = readParcelable == null ? b : readParcelable;
    }
}
