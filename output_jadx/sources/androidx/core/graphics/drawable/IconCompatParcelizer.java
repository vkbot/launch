package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Parcel;
import android.os.Parcelable;
import defpackage.Hm;
import defpackage.Im;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public class IconCompatParcelizer {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:23:0x00ac. Please report as an issue. */
    public static IconCompat read(Hm hm) {
        IconCompat iconCompat = new IconCompat();
        int i = iconCompat.a;
        if (hm.e(1)) {
            i = ((Im) hm).e.readInt();
        }
        iconCompat.a = i;
        byte[] bArr = iconCompat.c;
        if (hm.e(2)) {
            Parcel parcel = ((Im) hm).e;
            int readInt = parcel.readInt();
            if (readInt < 0) {
                bArr = null;
            } else {
                byte[] bArr2 = new byte[readInt];
                parcel.readByteArray(bArr2);
                bArr = bArr2;
            }
        }
        iconCompat.c = bArr;
        iconCompat.d = hm.f(iconCompat.d, 3);
        int i2 = iconCompat.e;
        if (hm.e(4)) {
            i2 = ((Im) hm).e.readInt();
        }
        iconCompat.e = i2;
        int i3 = iconCompat.f;
        if (hm.e(5)) {
            i3 = ((Im) hm).e.readInt();
        }
        iconCompat.f = i3;
        iconCompat.g = (ColorStateList) hm.f(iconCompat.g, 6);
        String str = iconCompat.i;
        if (hm.e(7)) {
            str = ((Im) hm).e.readString();
        }
        iconCompat.i = str;
        String str2 = iconCompat.j;
        if (hm.e(8)) {
            str2 = ((Im) hm).e.readString();
        }
        iconCompat.j = str2;
        iconCompat.h = PorterDuff.Mode.valueOf(iconCompat.i);
        switch (iconCompat.a) {
            case -1:
                Parcelable parcelable = iconCompat.d;
                if (parcelable == null) {
                    throw new IllegalArgumentException("Invalid icon");
                }
                iconCompat.b = parcelable;
                return iconCompat;
            case 0:
            default:
                return iconCompat;
            case 1:
            case 5:
                Parcelable parcelable2 = iconCompat.d;
                if (parcelable2 != null) {
                    iconCompat.b = parcelable2;
                } else {
                    byte[] bArr3 = iconCompat.c;
                    iconCompat.b = bArr3;
                    iconCompat.a = 3;
                    iconCompat.e = 0;
                    iconCompat.f = bArr3.length;
                }
                return iconCompat;
            case 2:
            case 4:
            case 6:
                String str3 = new String(iconCompat.c, Charset.forName("UTF-16"));
                iconCompat.b = str3;
                if (iconCompat.a == 2 && iconCompat.j == null) {
                    iconCompat.j = str3.split(":", -1)[0];
                }
                return iconCompat;
            case 3:
                iconCompat.b = iconCompat.c;
                return iconCompat;
        }
    }

    public static void write(IconCompat iconCompat, Hm hm) {
        hm.getClass();
        iconCompat.i = iconCompat.h.name();
        switch (iconCompat.a) {
            case -1:
                iconCompat.d = (Parcelable) iconCompat.b;
                break;
            case 1:
            case 5:
                iconCompat.d = (Parcelable) iconCompat.b;
                break;
            case 2:
                iconCompat.c = ((String) iconCompat.b).getBytes(Charset.forName("UTF-16"));
                break;
            case 3:
                iconCompat.c = (byte[]) iconCompat.b;
                break;
            case 4:
            case 6:
                iconCompat.c = iconCompat.b.toString().getBytes(Charset.forName("UTF-16"));
                break;
        }
        int i = iconCompat.a;
        if (-1 != i) {
            hm.h(1);
            ((Im) hm).e.writeInt(i);
        }
        byte[] bArr = iconCompat.c;
        if (bArr != null) {
            hm.h(2);
            int length = bArr.length;
            Parcel parcel = ((Im) hm).e;
            parcel.writeInt(length);
            parcel.writeByteArray(bArr);
        }
        Parcelable parcelable = iconCompat.d;
        if (parcelable != null) {
            hm.h(3);
            ((Im) hm).e.writeParcelable(parcelable, 0);
        }
        int i2 = iconCompat.e;
        if (i2 != 0) {
            hm.h(4);
            ((Im) hm).e.writeInt(i2);
        }
        int i3 = iconCompat.f;
        if (i3 != 0) {
            hm.h(5);
            ((Im) hm).e.writeInt(i3);
        }
        ColorStateList colorStateList = iconCompat.g;
        if (colorStateList != null) {
            hm.h(6);
            ((Im) hm).e.writeParcelable(colorStateList, 0);
        }
        String str = iconCompat.i;
        if (str != null) {
            hm.h(7);
            ((Im) hm).e.writeString(str);
        }
        String str2 = iconCompat.j;
        if (str2 != null) {
            hm.h(8);
            ((Im) hm).e.writeString(str2);
        }
    }
}
