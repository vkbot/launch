package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: xg, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0605xg extends AbstractC0078d {
    public static final Parcelable.Creator<C0605xg> CREATOR = new C0052c(5);
    public Parcelable c;

    public C0605xg(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.c = parcel.readParcelable(classLoader == null ? AbstractC0353ng.class.getClassLoader() : classLoader);
    }

    @Override // defpackage.AbstractC0078d, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(this.c, 0);
    }
}
