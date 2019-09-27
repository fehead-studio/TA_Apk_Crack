package com.androlua;

import android.content.Context;
import android.hardware.Camera;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import java.io.IOException;

class LuaCameraView extends SurfaceView {
  private SurfaceHolder a = null;
  
  public LuaCameraView(Context paramContext) {
    super(paramContext);
    this.a = getHolder();
    this.a.addCallback(new SurfaceHolder.Callback(this) {
          private Camera b;
          
          public void surfaceChanged(SurfaceHolder param1SurfaceHolder, int param1Int1, int param1Int2, int param1Int3) {
            Camera.Parameters parameters = this.b.getParameters();
            parameters.setPictureFormat(256);
            parameters.setPreviewSize(854, 480);
            parameters.setFocusMode("auto");
            parameters.setPictureSize(2592, 1456);
            this.b.startPreview();
          }
          
          public void surfaceCreated(SurfaceHolder param1SurfaceHolder) {
            this.b = Camera.open();
            try {
              this.b.setPreviewDisplay(param1SurfaceHolder);
              return;
            } catch (IOException param1SurfaceHolder) {
              this.b = null;
              return;
            } 
          }
          
          public void surfaceDestroyed(SurfaceHolder param1SurfaceHolder) {
            this.b.stopPreview();
            this.b.release();
            this.b = null;
          }
        });
    this.a.setType(3);
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlua\LuaCameraView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */