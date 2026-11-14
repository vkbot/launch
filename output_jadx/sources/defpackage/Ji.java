package defpackage;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.security.MessageDigest;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class Ji {
    public final File a;
    public final File b;

    public Ji(Context context) {
        AbstractC0348nb.r(context, "context");
        File file = new File(context.getCacheDir(), "store");
        this.a = file;
        this.b = new File(file, "apps.json");
    }

    public final File a(String str) {
        File file = this.a;
        StringBuilder sb = new StringBuilder("icon_");
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
        byte[] bytes = str.getBytes(AbstractC0186h4.a);
        AbstractC0348nb.q(bytes, "getBytes(...)");
        byte[] digest = messageDigest.digest(bytes);
        AbstractC0348nb.q(digest, "digest(...)");
        StringBuilder sb2 = new StringBuilder();
        sb2.append((CharSequence) "");
        int i = 0;
        for (byte b : digest) {
            i++;
            if (i > 1) {
                sb2.append((CharSequence) "");
            }
            sb2.append((CharSequence) String.format("%02x", Arrays.copyOf(new Object[]{Byte.valueOf(b)}, 1)));
        }
        sb2.append((CharSequence) "");
        String sb3 = sb2.toString();
        AbstractC0348nb.q(sb3, "toString(...)");
        sb.append(sb3);
        return new File(file, sb.toString());
    }

    public final void b(File file, byte[] bArr) {
        File file2 = this.a;
        try {
            file2.mkdirs();
            File file3 = new File(file2, file.getName() + ".tmp");
            FileOutputStream fileOutputStream = new FileOutputStream(file3);
            try {
                fileOutputStream.write(bArr);
                C6.c(fileOutputStream, null);
                if (file3.renameTo(file)) {
                    return;
                }
                file3.delete();
            } finally {
            }
        } catch (Exception e) {
            Log.w("StoreCache", "write " + file.getName() + " failed: " + e.getMessage());
        }
    }
}
