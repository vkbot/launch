package defpackage;

import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Path;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.fonts.FontStyle;
import android.os.Build;
import android.view.View;

/* loaded from: classes.dex */
public class Of {
    public static Of a;

    public Of(View view, int i) {
        switch (i) {
            case 6:
                if (Build.VERSION.SDK_INT >= 30) {
                    new Of(view, 5);
                    return;
                } else {
                    new Of(view, 5);
                    return;
                }
            default:
                return;
        }
    }

    public static Font a(FontFamily fontFamily, int i) {
        FontStyle fontStyle = new FontStyle((i & 1) != 0 ? 700 : 400, (i & 2) != 0 ? 1 : 0);
        Font font = fontFamily.getFont(0);
        int c = c(fontStyle, font.getStyle());
        for (int i2 = 1; i2 < fontFamily.getSize(); i2++) {
            Font font2 = fontFamily.getFont(i2);
            int c2 = c(fontStyle, font2.getStyle());
            if (c2 < c) {
                font = font2;
                c = c2;
            }
        }
        return font;
    }

    public static int c(FontStyle fontStyle, FontStyle fontStyle2) {
        return (Math.abs(fontStyle.getWeight() - fontStyle2.getWeight()) / 100) + (fontStyle.getSlant() == fontStyle2.getSlant() ? 0 : 2);
    }

    public static Path d(float f, float f2, float f3, float f4) {
        Path path = new Path();
        path.moveTo(f, f2);
        path.lineTo(f3, f4);
        return path;
    }

    public Io b(ContextWrapper contextWrapper) {
        Io io = Io.s;
        if (io == null) {
            synchronized (this) {
                io = Io.s;
                if (io == null) {
                    Context applicationContext = contextWrapper.getApplicationContext();
                    AbstractC0348nb.q(applicationContext, "getApplicationContext(...)");
                    io = new Io(applicationContext);
                    Io.s = io;
                }
            }
        }
        return io;
    }
}
