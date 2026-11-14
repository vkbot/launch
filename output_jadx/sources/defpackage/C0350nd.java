package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: nd, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0350nd extends AbstractC0078d {
    public static final Parcelable.Creator<C0350nd> CREATOR = new C0052c(4);
    public boolean c;

    public C0350nd(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        if (classLoader == null) {
            C0350nd.class.getClassLoader();
        }
        this.c = parcel.readInt() == 1;
    }

    @Override // defpackage.AbstractC0078d, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.c ? 1 : 0);
    }
}
