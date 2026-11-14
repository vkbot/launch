package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: j4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0237j4 extends AbstractC0078d {
    public static final Parcelable.Creator<C0237j4> CREATOR = new C0052c(2);
    public boolean c;

    public C0237j4(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.c = parcel.readInt() == 1;
    }

    @Override // defpackage.AbstractC0078d, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.c ? 1 : 0);
    }
}
