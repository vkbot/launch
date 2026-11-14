package defpackage;

import android.app.Activity;
import android.content.ClipData;
import android.os.Build;
import android.text.Selection;
import android.text.Spannable;
import android.view.DragEvent;
import android.view.View;
import android.widget.TextView;

/* loaded from: classes.dex */
public abstract class N1 {
    public static boolean a(DragEvent dragEvent, TextView textView, Activity activity) {
        H5 h5;
        activity.requestDragAndDropPermissions(dragEvent);
        int offsetForPosition = textView.getOffsetForPosition(dragEvent.getX(), dragEvent.getY());
        textView.beginBatchEdit();
        try {
            Selection.setSelection((Spannable) textView.getText(), offsetForPosition);
            ClipData clipData = dragEvent.getClipData();
            if (Build.VERSION.SDK_INT >= 31) {
                h5 = new L(clipData, 3);
            } else {
                I5 i5 = new I5();
                i5.b = clipData;
                i5.c = 3;
                h5 = i5;
            }
            AbstractC0205hn.e(textView, h5.i());
            textView.endBatchEdit();
            return true;
        } catch (Throwable th) {
            textView.endBatchEdit();
            throw th;
        }
    }

    public static boolean b(DragEvent dragEvent, View view, Activity activity) {
        H5 h5;
        activity.requestDragAndDropPermissions(dragEvent);
        ClipData clipData = dragEvent.getClipData();
        if (Build.VERSION.SDK_INT >= 31) {
            h5 = new L(clipData, 3);
        } else {
            I5 i5 = new I5();
            i5.b = clipData;
            i5.c = 3;
            h5 = i5;
        }
        AbstractC0205hn.e(view, h5.i());
        return true;
    }
}
