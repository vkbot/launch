package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import androidx.versionedparcelable.ParcelImpl;
import java.util.ArrayList;

/* renamed from: t0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0489t0 implements Parcelable.Creator {
    public final /* synthetic */ int a;

    /* JADX WARN: Type inference failed for: r7v13, types: [G9, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v14, types: [java.lang.Object, K9] */
    /* JADX WARN: Type inference failed for: r7v16, types: [kc, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v17, types: [android.view.View$BaseSavedState, java.lang.Object, xd] */
    /* JADX WARN: Type inference failed for: r7v20, types: [android.view.View$BaseSavedState, java.lang.Object, xe] */
    /* JADX WARN: Type inference failed for: r7v22, types: [yi, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v23, types: [java.lang.Object, zi] */
    /* JADX WARN: Type inference failed for: r7v3, types: [android.view.View$BaseSavedState, a2, java.lang.Object] */
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.a) {
            case 0:
                return new C0514u0(parcel);
            case 1:
                ?? baseSavedState = new View.BaseSavedState(parcel);
                baseSavedState.a = parcel.readByte() != 0;
                return baseSavedState;
            case 2:
                return new C0159g3(parcel);
            case 3:
                return new H3((C0325me) parcel.readParcelable(C0325me.class.getClassLoader()), (C0325me) parcel.readParcelable(C0325me.class.getClassLoader()), (C0645z6) parcel.readParcelable(C0645z6.class.getClassLoader()), (C0325me) parcel.readParcelable(C0325me.class.getClassLoader()), parcel.readInt());
            case 4:
                return new C0645z6(parcel.readLong());
            case 5:
                ?? obj = new Object();
                obj.a = parcel.readString();
                obj.b = parcel.readInt();
                return obj;
            case 6:
                ?? obj2 = new Object();
                obj2.e = null;
                obj2.f = new ArrayList();
                obj2.g = new ArrayList();
                obj2.a = parcel.createTypedArrayList(N9.CREATOR);
                obj2.b = parcel.createStringArrayList();
                obj2.c = (C0159g3[]) parcel.createTypedArray(C0159g3.CREATOR);
                obj2.d = parcel.readInt();
                obj2.e = parcel.readString();
                obj2.f = parcel.createStringArrayList();
                obj2.g = parcel.createTypedArrayList(Bundle.CREATOR);
                obj2.h = parcel.createTypedArrayList(G9.CREATOR);
                return obj2;
            case 7:
                return new N9(parcel);
            case 8:
                ?? obj3 = new Object();
                obj3.a = parcel.readInt();
                obj3.b = parcel.readInt();
                obj3.c = parcel.readInt() == 1;
                return obj3;
            case 9:
                ?? baseSavedState2 = new View.BaseSavedState(parcel);
                baseSavedState2.a = ((Integer) parcel.readValue(C0602xd.class.getClassLoader())).intValue();
                return baseSavedState2;
            case 10:
                return C0325me.a(parcel.readInt(), parcel.readInt());
            case 11:
                ?? baseSavedState3 = new View.BaseSavedState(parcel);
                baseSavedState3.a = parcel.readInt();
                return baseSavedState3;
            case 12:
                return new ParcelImpl(parcel);
            case 13:
                ?? obj4 = new Object();
                obj4.a = parcel.readInt();
                obj4.b = parcel.readInt();
                obj4.d = parcel.readInt() == 1;
                int readInt = parcel.readInt();
                if (readInt > 0) {
                    int[] iArr = new int[readInt];
                    obj4.c = iArr;
                    parcel.readIntArray(iArr);
                }
                return obj4;
            default:
                ?? obj5 = new Object();
                obj5.a = parcel.readInt();
                obj5.b = parcel.readInt();
                int readInt2 = parcel.readInt();
                obj5.c = readInt2;
                if (readInt2 > 0) {
                    int[] iArr2 = new int[readInt2];
                    obj5.d = iArr2;
                    parcel.readIntArray(iArr2);
                }
                int readInt3 = parcel.readInt();
                obj5.e = readInt3;
                if (readInt3 > 0) {
                    int[] iArr3 = new int[readInt3];
                    obj5.f = iArr3;
                    parcel.readIntArray(iArr3);
                }
                obj5.h = parcel.readInt() == 1;
                obj5.i = parcel.readInt() == 1;
                obj5.j = parcel.readInt() == 1;
                obj5.g = parcel.readArrayList(C0632yi.class.getClassLoader());
                return obj5;
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        switch (this.a) {
            case 0:
                return new C0514u0[i];
            case 1:
                return new C0003a2[i];
            case 2:
                return new C0159g3[i];
            case 3:
                return new H3[i];
            case 4:
                return new C0645z6[i];
            case 5:
                return new G9[i];
            case 6:
                return new K9[i];
            case 7:
                return new N9[i];
            case 8:
                return new C0271kc[i];
            case 9:
                return new C0602xd[i];
            case 10:
                return new C0325me[i];
            case 11:
                return new C0603xe[i];
            case 12:
                return new ParcelImpl[i];
            case 13:
                return new C0632yi[i];
            default:
                return new C0657zi[i];
        }
    }
}
