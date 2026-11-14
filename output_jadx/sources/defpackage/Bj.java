package defpackage;

import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import android.graphics.Rect;
import android.hardware.HardwareBuffer;
import android.util.Log;
import android.view.SurfaceControl;

/* loaded from: classes.dex */
public abstract class Bj {
    public static final C0149fj a = new C0149fj(Ph.d);

    public static Bitmap a() {
        String message;
        try {
            Class cls = Integer.TYPE;
            Object invoke = SurfaceControl.class.getMethod("screenshot", Rect.class, cls, cls, cls).invoke(null, new Rect(), 960, 360, 0);
            if (invoke instanceof Bitmap) {
                return (Bitmap) invoke;
            }
            return null;
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder("ofScreen failed: ");
            Throwable cause = e.getCause();
            if (cause == null || (message = cause.getMessage()) == null) {
                message = e.getMessage();
            }
            sb.append(message);
            Log.w("TaskSnapshots", sb.toString());
            return null;
        }
    }

    public static Bitmap b(int i) {
        String message;
        Object invoke;
        Object invoke2;
        try {
            Object a2 = a.a();
            if (a2 == null || (invoke = a2.getClass().getMethod("getTaskSnapshot", Integer.TYPE, Boolean.TYPE).invoke(a2, Integer.valueOf(i), Boolean.TRUE)) == null || (invoke2 = invoke.getClass().getMethod("getSnapshot", null).invoke(invoke, null)) == null) {
                return null;
            }
            Object invoke3 = invoke.getClass().getMethod("getColorSpace", null).invoke(invoke, null);
            ColorSpace colorSpace = invoke3 instanceof ColorSpace ? (ColorSpace) invoke3 : null;
            Object invoke4 = HardwareBuffer.class.getMethod("createFromGraphicBuffer", invoke2.getClass()).invoke(null, invoke2);
            AbstractC0348nb.p(invoke4, "null cannot be cast to non-null type android.hardware.HardwareBuffer");
            HardwareBuffer hardwareBuffer = (HardwareBuffer) invoke4;
            try {
                return Bitmap.wrapHardwareBuffer(hardwareBuffer, colorSpace);
            } finally {
                hardwareBuffer.close();
            }
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder("ofTask(");
            sb.append(i);
            sb.append(") failed: ");
            Throwable cause = e.getCause();
            if (cause == null || (message = cause.getMessage()) == null) {
                message = e.getMessage();
            }
            sb.append(message);
            Log.w("TaskSnapshots", sb.toString());
            return null;
        }
    }
}
