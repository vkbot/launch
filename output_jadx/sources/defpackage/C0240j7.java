package defpackage;

import android.content.res.AssetManager;
import android.os.Build;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.Serializable;
import java.util.concurrent.Executor;

/* renamed from: j7, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0240j7 {
    public final Executor a;
    public final Kf b;
    public final byte[] c;
    public final File d;
    public final String e;
    public boolean f = false;
    public C0266k7[] g;
    public byte[] h;

    public C0240j7(AssetManager assetManager, Executor executor, Kf kf, String str, File file) {
        this.a = executor;
        this.b = kf;
        this.e = str;
        this.d = file;
        int i = Build.VERSION.SDK_INT;
        byte[] bArr = null;
        if (i <= 33) {
            switch (i) {
                case 29:
                case 30:
                    bArr = AbstractC0348nb.j;
                    break;
                case 31:
                case 32:
                case 33:
                    bArr = AbstractC0348nb.i;
                    break;
            }
        }
        this.c = bArr;
    }

    public final FileInputStream a(AssetManager assetManager, String str) {
        try {
            return assetManager.openFd(str).createInputStream();
        } catch (FileNotFoundException e) {
            String message = e.getMessage();
            if (message != null && message.contains("compressed")) {
                this.b.n();
            }
            return null;
        }
    }

    public final void b(int i, Serializable serializable) {
        this.a.execute(new RunnableC0215i7(this, i, serializable, 0));
    }
}
