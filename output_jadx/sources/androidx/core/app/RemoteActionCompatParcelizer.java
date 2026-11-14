package androidx.core.app;

import android.app.PendingIntent;
import android.os.Parcel;
import android.text.TextUtils;
import androidx.core.graphics.drawable.IconCompat;
import defpackage.Hm;
import defpackage.Im;
import defpackage.Jm;

/* loaded from: classes.dex */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(Hm hm) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        Jm jm = remoteActionCompat.a;
        if (hm.e(1)) {
            jm = hm.g();
        }
        remoteActionCompat.a = (IconCompat) jm;
        CharSequence charSequence = remoteActionCompat.b;
        if (hm.e(2)) {
            charSequence = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(((Im) hm).e);
        }
        remoteActionCompat.b = charSequence;
        CharSequence charSequence2 = remoteActionCompat.c;
        if (hm.e(3)) {
            charSequence2 = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(((Im) hm).e);
        }
        remoteActionCompat.c = charSequence2;
        remoteActionCompat.d = (PendingIntent) hm.f(remoteActionCompat.d, 4);
        boolean z = remoteActionCompat.e;
        if (hm.e(5)) {
            z = ((Im) hm).e.readInt() != 0;
        }
        remoteActionCompat.e = z;
        boolean z2 = remoteActionCompat.f;
        if (hm.e(6)) {
            z2 = ((Im) hm).e.readInt() != 0;
        }
        remoteActionCompat.f = z2;
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, Hm hm) {
        hm.getClass();
        IconCompat iconCompat = remoteActionCompat.a;
        hm.h(1);
        hm.i(iconCompat);
        CharSequence charSequence = remoteActionCompat.b;
        hm.h(2);
        Parcel parcel = ((Im) hm).e;
        TextUtils.writeToParcel(charSequence, parcel, 0);
        CharSequence charSequence2 = remoteActionCompat.c;
        hm.h(3);
        TextUtils.writeToParcel(charSequence2, parcel, 0);
        PendingIntent pendingIntent = remoteActionCompat.d;
        hm.h(4);
        parcel.writeParcelable(pendingIntent, 0);
        boolean z = remoteActionCompat.e;
        hm.h(5);
        parcel.writeInt(z ? 1 : 0);
        boolean z2 = remoteActionCompat.f;
        hm.h(6);
        parcel.writeInt(z2 ? 1 : 0);
    }
}
