package com.omoda.launcher.service;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import defpackage.AbstractC0348nb;
import defpackage.Si;

/* loaded from: classes.dex */
public final class VoiceCommands extends ContentProvider {
    public final Intent a(String str, Bundle bundle) {
        String string;
        PackageManager packageManager;
        if (bundle != null && (string = bundle.getString("uri")) != null) {
            if (Si.M(string)) {
                string = null;
            }
            if (string != null) {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(string)).setPackage(str);
                AbstractC0348nb.q(intent, "setPackage(...)");
                Context context = getContext();
                if (((context == null || (packageManager = context.getPackageManager()) == null) ? null : packageManager.resolveActivity(intent, 0)) != null) {
                    return intent;
                }
                Log.w("VoiceCommands", str + " cannot open " + string + " — its start screen instead");
                return null;
            }
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:17:0x005a. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0235  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x023f  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x024e  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0254  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x024b  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x02ab  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x02bb  */
    @Override // android.content.ContentProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.os.Bundle call(java.lang.String r18, java.lang.String r19, android.os.Bundle r20) {
        /*
            Method dump skipped, instructions count: 740
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.omoda.launcher.service.VoiceCommands.call(java.lang.String, java.lang.String, android.os.Bundle):android.os.Bundle");
    }

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        AbstractC0348nb.r(uri, "uri");
        return 0;
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        AbstractC0348nb.r(uri, "uri");
        return null;
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        AbstractC0348nb.r(uri, "uri");
        return null;
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        AbstractC0348nb.r(uri, "u");
        return null;
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        AbstractC0348nb.r(uri, "uri");
        return 0;
    }
}
