package defpackage;

import android.content.ClipData;
import android.content.ClipDescription;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.view.inputmethod.InputContentInfo;

/* loaded from: classes.dex */
public final class Za extends InputConnectionWrapper {
    public final /* synthetic */ O7 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Za(InputConnection inputConnection, O7 o7) {
        super(inputConnection, false);
        this.a = o7;
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean commitContent(InputContentInfo inputContentInfo, int i, Bundle bundle) {
        Bundle bundle2;
        H5 h5;
        L l = inputContentInfo == null ? null : new L(17, new L(16, inputContentInfo));
        O7 o7 = this.a;
        if ((i & 1) != 0) {
            try {
                ((InputContentInfo) ((L) l.b).b).requestPermission();
                InputContentInfo inputContentInfo2 = (InputContentInfo) ((L) l.b).b;
                bundle2 = bundle == null ? new Bundle() : new Bundle(bundle);
                bundle2.putParcelable("androidx.core.view.extra.INPUT_CONTENT_INFO", inputContentInfo2);
            } catch (Exception e) {
                Log.w("InputConnectionCompat", "Can't insert content from IME; requestPermission() failed", e);
            }
        } else {
            bundle2 = bundle;
        }
        ClipDescription description = ((InputContentInfo) ((L) l.b).b).getDescription();
        L l2 = (L) l.b;
        ClipData clipData = new ClipData(description, new ClipData.Item(((InputContentInfo) l2.b).getContentUri()));
        if (Build.VERSION.SDK_INT >= 31) {
            h5 = new L(clipData, 2);
        } else {
            I5 i5 = new I5();
            i5.b = clipData;
            i5.c = 2;
            h5 = i5;
        }
        h5.c(((InputContentInfo) l2.b).getLinkUri());
        h5.a(bundle2);
        if (AbstractC0205hn.e((D1) o7.a, h5.i()) == null) {
            return true;
        }
        return super.commitContent(inputContentInfo, i, bundle);
    }
}
