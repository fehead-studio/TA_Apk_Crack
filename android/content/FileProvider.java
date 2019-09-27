package android.content;

import android.content.pm.ProviderInfo;
import android.content.res.XmlResourceParser;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.xmlpull.v1.XmlPullParserException;

public class FileProvider extends ContentProvider {
  private static final String ATTR_NAME = "name";
  
  private static final String ATTR_PATH = "path";
  
  private static final String[] COLUMNS = { "_display_name", "_size" };
  
  private static final File DEVICE_ROOT = new File("/");
  
  private static final String META_DATA_FILE_PROVIDER_PATHS = "android.support.FILE_PROVIDER_PATHS";
  
  private static final String TAG_CACHE_PATH = "cache-path";
  
  private static final String TAG_EXTERNAL = "external-path";
  
  private static final String TAG_EXTERNAL_CACHE = "external-cache-path";
  
  private static final String TAG_EXTERNAL_FILES = "external-files-path";
  
  private static final String TAG_EXTERNAL_MEDIA = "external-media-path";
  
  private static final String TAG_FILES_PATH = "files-path";
  
  private static final String TAG_ROOT_PATH = "root-path";
  
  private static HashMap<String, PathStrategy> sCache = new HashMap();
  
  private PathStrategy mStrategy;
  
  private static File buildPath(File paramFile, String... paramVarArgs) {
    int i = paramVarArgs.length;
    byte b = 0;
    while (b < i) {
      String str = paramVarArgs[b];
      File file = paramFile;
      if (str != null)
        file = new File(paramFile, str); 
      b++;
      paramFile = file;
    } 
    return paramFile;
  }
  
  private static Object[] copyOf(Object[] paramArrayOfObject, int paramInt) {
    Object[] arrayOfObject = new Object[paramInt];
    System.arraycopy(paramArrayOfObject, 0, arrayOfObject, 0, paramInt);
    return arrayOfObject;
  }
  
  private static String[] copyOf(String[] paramArrayOfString, int paramInt) {
    String[] arrayOfString = new String[paramInt];
    System.arraycopy(paramArrayOfString, 0, arrayOfString, 0, paramInt);
    return arrayOfString;
  }
  
  public static File[] getExternalCacheDirs(Context paramContext) { return (Build.VERSION.SDK_INT >= 19) ? paramContext.getExternalCacheDirs() : new File[] { paramContext.getExternalCacheDir() }; }
  
  public static File[] getExternalFilesDirs(Context paramContext, String paramString) { return (Build.VERSION.SDK_INT >= 19) ? paramContext.getExternalFilesDirs(paramString) : new File[] { paramContext.getExternalFilesDir(paramString) }; }
  
  private static PathStrategy getPathStrategy(Context paramContext, String paramString) {
    HashMap hashMap = sCache;
    synchronized (sCache) {
      PathStrategy pathStrategy2 = (PathStrategy)sCache.get(paramString);
      PathStrategy pathStrategy1 = pathStrategy2;
      if (pathStrategy2 == null)
        try {
          pathStrategy1 = parsePathStrategy(paramContext, paramString);
          sCache.put(paramString, pathStrategy1);
        } catch (IOException paramContext) {
          throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", paramContext);
        } catch (XmlPullParserException paramContext) {
          throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", paramContext);
        }  
      return pathStrategy1;
    } 
  }
  
  public static Uri getUriForFile(Context paramContext, String paramString, File paramFile) { return getPathStrategy(paramContext, paramString).getUriForFile(paramFile); }
  
  private static int modeToMode(String paramString) {
    if ("r".equals(paramString))
      return 268435456; 
    if (!"w".equals(paramString) && !"wt".equals(paramString)) {
      if ("wa".equals(paramString))
        return 704643072; 
      if ("rw".equals(paramString))
        return 939524096; 
      if (!"rwt".equals(paramString)) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Invalid mode: ");
        stringBuilder.append(paramString);
        throw new IllegalArgumentException(stringBuilder.toString());
      } 
      return 1006632960;
    } 
    return 738197504;
  }
  
  private static PathStrategy parsePathStrategy(Context paramContext, String paramString) {
    SimplePathStrategy simplePathStrategy = new SimplePathStrategy(paramString);
    XmlResourceParser xmlResourceParser = paramContext.getPackageManager().resolveContentProvider(paramString, 128).loadXmlMetaData(paramContext.getPackageManager(), "android.support.FILE_PROVIDER_PATHS");
    if (xmlResourceParser == null)
      throw new IllegalArgumentException("Missing android.support.FILE_PROVIDER_PATHS meta-data"); 
    while (true) {
      int i = xmlResourceParser.next();
      if (i != 1) {
        if (i == 2) {
          File file1;
          String str3 = xmlResourceParser.getName();
          File file2 = null;
          paramString = (String)null;
          String str1 = xmlResourceParser.getAttributeValue(paramString, "name");
          String str2 = xmlResourceParser.getAttributeValue(paramString, "path");
          if ("root-path".equals(str3)) {
            file1 = DEVICE_ROOT;
          } else if ("files-path".equals(str3)) {
            file1 = paramContext.getFilesDir();
          } else if ("cache-path".equals(str3)) {
            file1 = paramContext.getCacheDir();
          } else if ("external-path".equals(str3)) {
            file1 = Environment.getExternalStorageDirectory();
          } else {
            File[] arrayOfFile;
            if ("external-files-path".equals(str3)) {
              arrayOfFile = getExternalFilesDirs(paramContext, file1);
              file1 = file2;
              if (arrayOfFile.length > 0)
                file1 = arrayOfFile[0]; 
            } else if ("external-cache-path".equals(arrayOfFile)) {
              arrayOfFile = getExternalCacheDirs(paramContext);
              file1 = file2;
              if (arrayOfFile.length > 0)
                file1 = arrayOfFile[0]; 
            } else {
              file1 = file2;
              if (Build.VERSION.SDK_INT >= 21) {
                file1 = file2;
                if ("external-media-path".equals(arrayOfFile)) {
                  arrayOfFile = paramContext.getExternalMediaDirs();
                  file1 = file2;
                  if (arrayOfFile.length > 0)
                    file1 = arrayOfFile[0]; 
                } 
              } 
            } 
          } 
          if (file1 != null)
            simplePathStrategy.addRoot(str1, buildPath(file1, new String[] { str2 })); 
        } 
        continue;
      } 
      break;
    } 
    return simplePathStrategy;
  }
  
  public void attachInfo(Context paramContext, ProviderInfo paramProviderInfo) {
    super.attachInfo(paramContext, paramProviderInfo);
    if (paramProviderInfo.exported)
      throw new SecurityException("Provider must not be exported"); 
    if (!paramProviderInfo.grantUriPermissions)
      throw new SecurityException("Provider must grant uri permissions"); 
    this.mStrategy = getPathStrategy(paramContext, paramProviderInfo.authority);
  }
  
  public int delete(Uri paramUri, String paramString, String[] paramArrayOfString) { throw new RuntimeException("d2j fail translate: java.lang.RuntimeException: can not merge I and Z\r\n\tat com.googlecode.dex2jar.ir.TypeClass.merge(TypeClass.java:100)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeRef.updateTypeClass(TypeTransformer.java:174)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.provideAs(TypeTransformer.java:780)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.enexpr(TypeTransformer.java:659)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:719)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:703)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.s1stmt(TypeTransformer.java:810)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.sxStmt(TypeTransformer.java:840)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.analyze(TypeTransformer.java:206)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer.transform(TypeTransformer.java:44)\r\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:162)\r\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\r\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\r\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\r\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\r\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\r\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\r\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\r\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\r\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\r\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\r\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\r\n"); }
  
  public String getType(Uri paramUri) {
    File file = this.mStrategy.getFileForUri(paramUri);
    int i = file.getName().lastIndexOf('.');
    if (i >= 0) {
      String str = file.getName().substring(i + 1);
      str = MimeTypeMap.getSingleton().getMimeTypeFromExtension(str);
      if (str != null)
        return str; 
    } 
    return "application/octet-stream";
  }
  
  public Uri insert(Uri paramUri, ContentValues paramContentValues) { throw new UnsupportedOperationException("No external inserts"); }
  
  public boolean onCreate() { return true; }
  
  public ParcelFileDescriptor openFile(Uri paramUri, String paramString) { return ParcelFileDescriptor.open(this.mStrategy.getFileForUri(paramUri), modeToMode(paramString)); }
  
  public Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2) { // Byte code:
    //   0: aload_0
    //   1: getfield mStrategy : Landroid/content/FileProvider$PathStrategy;
    //   4: aload_1
    //   5: invokeinterface getFileForUri : (Landroid/net/Uri;)Ljava/io/File;
    //   10: astore_3
    //   11: aload_2
    //   12: astore_1
    //   13: aload_2
    //   14: ifnonnull -> 21
    //   17: getstatic android/content/FileProvider.COLUMNS : [Ljava/lang/String;
    //   20: astore_1
    //   21: aload_1
    //   22: arraylength
    //   23: anewarray java/lang/String
    //   26: astore #4
    //   28: aload_1
    //   29: arraylength
    //   30: anewarray java/lang/Object
    //   33: astore_2
    //   34: aload_1
    //   35: arraylength
    //   36: istore #9
    //   38: iconst_0
    //   39: istore #7
    //   41: iconst_0
    //   42: istore #6
    //   44: iload #7
    //   46: iload #9
    //   48: if_icmpge -> 157
    //   51: aload_1
    //   52: iload #7
    //   54: aaload
    //   55: astore #5
    //   57: ldc '_display_name'
    //   59: aload #5
    //   61: invokevirtual equals : (Ljava/lang/Object;)Z
    //   64: ifeq -> 99
    //   67: aload #4
    //   69: iload #6
    //   71: ldc '_display_name'
    //   73: aastore
    //   74: iload #6
    //   76: iconst_1
    //   77: iadd
    //   78: istore #8
    //   80: aload_2
    //   81: iload #6
    //   83: aload_3
    //   84: invokevirtual getName : ()Ljava/lang/String;
    //   87: aastore
    //   88: iload #8
    //   90: istore #6
    //   92: iload #6
    //   94: istore #8
    //   96: goto -> 144
    //   99: iload #6
    //   101: istore #8
    //   103: ldc '_size'
    //   105: aload #5
    //   107: invokevirtual equals : (Ljava/lang/Object;)Z
    //   110: ifeq -> 144
    //   113: aload #4
    //   115: iload #6
    //   117: ldc '_size'
    //   119: aastore
    //   120: iload #6
    //   122: iconst_1
    //   123: iadd
    //   124: istore #8
    //   126: aload_2
    //   127: iload #6
    //   129: aload_3
    //   130: invokevirtual length : ()J
    //   133: invokestatic valueOf : (J)Ljava/lang/Long;
    //   136: aastore
    //   137: iload #8
    //   139: istore #6
    //   141: goto -> 92
    //   144: iload #7
    //   146: iconst_1
    //   147: iadd
    //   148: istore #7
    //   150: iload #8
    //   152: istore #6
    //   154: goto -> 44
    //   157: aload #4
    //   159: iload #6
    //   161: invokestatic copyOf : ([Ljava/lang/String;I)[Ljava/lang/String;
    //   164: astore_1
    //   165: aload_2
    //   166: iload #6
    //   168: invokestatic copyOf : ([Ljava/lang/Object;I)[Ljava/lang/Object;
    //   171: astore_2
    //   172: new android/database/MatrixCursor
    //   175: dup
    //   176: aload_1
    //   177: iconst_1
    //   178: invokespecial <init> : ([Ljava/lang/String;I)V
    //   181: astore_1
    //   182: aload_1
    //   183: aload_2
    //   184: invokevirtual addRow : ([Ljava/lang/Object;)V
    //   187: aload_1
    //   188: areturn }
  
  public int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString) { throw new UnsupportedOperationException("No external updates"); }
  
  static interface PathStrategy {
    File getFileForUri(Uri param1Uri);
    
    Uri getUriForFile(File param1File);
  }
  
  static class SimplePathStrategy implements PathStrategy {
    private final String mAuthority;
    
    private final HashMap<String, File> mRoots = new HashMap();
    
    SimplePathStrategy(String param1String) { this.mAuthority = param1String; }
    
    void addRoot(String param1String, File param1File) {
      if (TextUtils.isEmpty(param1String))
        throw new IllegalArgumentException("Name must not be empty"); 
      try {
        File file = param1File.getCanonicalFile();
        this.mRoots.put(param1String, file);
        return;
      } catch (IOException param1String) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Failed to resolve canonical path for ");
        stringBuilder.append(param1File);
        throw new IllegalArgumentException(stringBuilder.toString(), param1String);
      } 
    }
    
    public File getFileForUri(Uri param1Uri) {
      String str2 = param1Uri.getEncodedPath();
      int i = str2.indexOf('/', 1);
      String str1 = Uri.decode(str2.substring(1, i));
      str2 = Uri.decode(str2.substring(i + 1));
      stringBuilder = (File)this.mRoots.get(str1);
      if (stringBuilder == null) {
        stringBuilder = new StringBuilder();
        stringBuilder.append("Unable to find configured root for ");
        stringBuilder.append(param1Uri);
        throw new IllegalArgumentException(stringBuilder.toString());
      } 
      File file = new File(stringBuilder, str2);
      try {
        File file1 = file.getCanonicalFile();
        if (!file1.getPath().startsWith(stringBuilder.getPath()))
          throw new SecurityException("Resolved path jumped beyond configured root"); 
        return file1;
      } catch (IOException stringBuilder) {
        stringBuilder = new StringBuilder();
        stringBuilder.append("Failed to resolve canonical path for ");
        stringBuilder.append(file);
        throw new IllegalArgumentException(stringBuilder.toString());
      } 
    }
    
    public Uri getUriForFile(File param1File) {
      Map.Entry entry;
      try {
        String str = param1File.getCanonicalPath();
        param1File = null;
        Iterator iterator = this.mRoots.entrySet().iterator();
        while (true) {
          StringBuilder stringBuilder;
          if (!iterator.hasNext()) {
            int i;
            StringBuilder stringBuilder1;
            if (param1File == null) {
              stringBuilder1 = new StringBuilder();
              stringBuilder1.append("Failed to find configured root that contains ");
              stringBuilder1.append(str);
              throw new IllegalArgumentException(stringBuilder1.toString());
            } 
            String str2 = ((File)stringBuilder1.getValue()).getPath();
            if (str2.endsWith("/")) {
              i = str2.length();
            } else {
              i = str2.length() + 1;
            } 
            str2 = str.substring(i);
            stringBuilder = new StringBuilder();
            stringBuilder.append(Uri.encode((String)stringBuilder1.getKey()));
            stringBuilder.append('/');
            stringBuilder.append(Uri.encode(str2, "/"));
            entry = stringBuilder.toString();
            return (new Uri.Builder()).scheme("content").authority(this.mAuthority).encodedPath(entry).build();
          } 
          Map.Entry entry1 = (Map.Entry)iterator.next();
          String str1 = ((File)entry1.getValue()).getPath();
          if (stringBuilder.startsWith(str1) && (entry == null || str1.length() > ((File)entry.getValue()).getPath().length()))
            entry = entry1; 
        } 
      } catch (IOException iOException) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Failed to resolve canonical path for ");
        stringBuilder.append(entry);
        throw new IllegalArgumentException(stringBuilder.toString());
      } 
    }
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\android\content\FileProvider.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */