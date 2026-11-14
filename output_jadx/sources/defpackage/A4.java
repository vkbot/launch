package defpackage;

import android.os.Parcel;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final /* synthetic */ class A4 extends AbstractC0449ra implements InterfaceC0089da {
    public final /* synthetic */ int i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ A4(int i, Object obj, Class cls, String str, String str2, int i2) {
        super(i, obj, cls, str, str2);
        this.i = i2;
    }

    @Override // defpackage.InterfaceC0089da
    public final Object h(Object obj) {
        switch (this.i) {
            case 0:
                Parcel parcel = (Parcel) obj;
                AbstractC0348nb.r(parcel, "p0");
                ((C4) this.b).getClass();
                ArrayList arrayList = new ArrayList();
                int readInt = parcel.readInt();
                if (readInt < 0) {
                    readInt = 0;
                }
                for (int i = 0; i < readInt; i++) {
                    if (parcel.readInt() != 0) {
                        parcel.readInt();
                        String readString = parcel.readString();
                        String readString2 = parcel.readString();
                        String readString3 = parcel.readString();
                        boolean z = parcel.readByte() != 0;
                        boolean z2 = parcel.readByte() != 0;
                        parcel.readByte();
                        parcel.readByte();
                        if (parcel.readByte() != 0 && (z2 || z)) {
                            if (readString == null) {
                                readString = readString2 == null ? readString3 == null ? "?" : readString3 : readString2;
                            }
                            arrayList.add(new Cif(readString, readString2, readString3, z2));
                        }
                    }
                }
                return arrayList;
            case 1:
                Parcel parcel2 = (Parcel) obj;
                AbstractC0348nb.r(parcel2, "p0");
                ((R9) this.b).getClass();
                if (parcel2.readInt() == 0) {
                    return null;
                }
                parcel2.readString();
                int readInt2 = parcel2.readInt();
                parcel2.readInt();
                parcel2.readString();
                if (parcel2.readInt() != 2) {
                    return null;
                }
                if (readInt2 == 1) {
                    return EnumC0197hf.b;
                }
                if (readInt2 != 2) {
                    return null;
                }
                return EnumC0197hf.a;
            default:
                EnumC0197hf enumC0197hf = (EnumC0197hf) obj;
                AbstractC0348nb.r(enumC0197hf, "p0");
                AbstractC0326mf abstractC0326mf = (AbstractC0326mf) this.b;
                abstractC0326mf.getClass();
                return Boolean.valueOf(abstractC0326mf.b.contains(enumC0197hf));
        }
    }
}
