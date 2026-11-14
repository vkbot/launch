package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.AbsSavedState;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* loaded from: classes.dex */
public final class B3 extends AbstractC0078d {
    public static final Parcelable.Creator<B3> CREATOR = new C0052c(1);
    public final int c;
    public final int d;
    public final boolean e;
    public final boolean f;
    public final boolean g;

    public B3(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.c = parcel.readInt();
        this.d = parcel.readInt();
        this.e = parcel.readInt() == 1;
        this.f = parcel.readInt() == 1;
        this.g = parcel.readInt() == 1;
    }

    @Override // defpackage.AbstractC0078d, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.c);
        parcel.writeInt(this.d);
        parcel.writeInt(this.e ? 1 : 0);
        parcel.writeInt(this.f ? 1 : 0);
        parcel.writeInt(this.g ? 1 : 0);
    }

    public B3(AbsSavedState absSavedState, BottomSheetBehavior bottomSheetBehavior) {
        super(absSavedState);
        this.c = bottomSheetBehavior.L;
        this.d = bottomSheetBehavior.e;
        this.e = bottomSheetBehavior.b;
        this.f = bottomSheetBehavior.I;
        this.g = bottomSheetBehavior.J;
    }
}
