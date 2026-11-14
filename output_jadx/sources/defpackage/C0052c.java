package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0052c implements Parcelable.ClassLoaderCreator {
    public final /* synthetic */ int a;

    public /* synthetic */ C0052c(int i) {
        this.a = i;
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public final Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
        switch (this.a) {
            case 0:
                if (parcel.readParcelable(classLoader) == null) {
                    return AbstractC0078d.b;
                }
                throw new IllegalStateException("superState must be null");
            case 1:
                return new B3(parcel, classLoader);
            case 2:
                return new C0237j4(parcel, classLoader);
            case 3:
                return new C0007a6(parcel, classLoader);
            case 4:
                return new C0350nd(parcel, classLoader);
            case 5:
                return new C0605xg(parcel, classLoader);
            case 6:
                return new Jh(parcel, classLoader);
            case 7:
                return new C0251ji(parcel, classLoader);
            case 8:
                return new Mj(parcel, classLoader);
            default:
                return new Bk(parcel, classLoader);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        switch (this.a) {
            case 0:
                return new AbstractC0078d[i];
            case 1:
                return new B3[i];
            case 2:
                return new C0237j4[i];
            case 3:
                return new C0007a6[i];
            case 4:
                return new C0350nd[i];
            case 5:
                return new C0605xg[i];
            case 6:
                return new Jh[i];
            case 7:
                return new C0251ji[i];
            case 8:
                return new Mj[i];
            default:
                return new Bk[i];
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.a) {
            case 0:
                if (parcel.readParcelable(null) == null) {
                    return AbstractC0078d.b;
                }
                throw new IllegalStateException("superState must be null");
            case 1:
                return new B3(parcel, (ClassLoader) null);
            case 2:
                return new C0237j4(parcel, null);
            case 3:
                return new C0007a6(parcel, null);
            case 4:
                return new C0350nd(parcel, null);
            case 5:
                return new C0605xg(parcel, null);
            case 6:
                return new Jh(parcel, null);
            case 7:
                return new C0251ji(parcel, (ClassLoader) null);
            case 8:
                return new Mj(parcel, null);
            default:
                return new Bk(parcel, null);
        }
    }
}
