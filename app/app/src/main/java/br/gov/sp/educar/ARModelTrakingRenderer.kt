package br.gov.sp.educar

import android.opengl.GLES20;

import org.artoolkitx.arx.arxj.ARController;
import org.artoolkitx.arx.arxj.ARX_jni;
import org.artoolkitx.arx.arxj.Trackable;
import org.artoolkitx.arx.arxj.rendering.ARRenderer;
import org.artoolkitx.arx.arxj.rendering.shader_impl.Cube;
import org.artoolkitx.arx.arxj.rendering.shader_impl.SimpleFragmentShader;
import org.artoolkitx.arx.arxj.rendering.shader_impl.SimpleShaderProgram;
import org.artoolkitx.arx.arxj.rendering.shader_impl.SimpleVertexShader;

import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

class ARModelTrackingRenderer : ARRenderer {
    private static final Trackable trackables[] = new Trackable[] {
        new Trackable("hiro", 80.0f),
        new Trackable("kanji", 80.0f)
    };

    private int trackableUIDs[] = new int[trackables.length];
    private Cube cube;
    private SimpleShaderProgram shaderProgram;

    @Override
    public boolean configureARScene() {
        int i = 0;
        for (Trackable trackable : trackables) {
            trackableUIDs[i] = ARController
                .getInstance()
                .addTrackable("single;data/" + trackable.getName() + ".patt" + trackable.getWidth());
            if (trackableUIDs[i] < 0) return false;
            i++;
        }

        return true;
    }

    @Override
    public void onSurfaceCreated(GL10 unused, EGLConfig config) {
        this.shaderProgram = new SimpleShaderProgram(new SimpleVertexShader(), new SimpleFragmentShader());
        cube = new Cube(40.0f, 0.0f, 0.0f, 20.0f);
        cube.setShaderProgram(shaderProgram);
        super.onSurfaceCreated(unused, config);
    }

    @Override
    public void draw() {
        super.draw();

        GLES20.glEnable(GLES20.GL_CULL_FACE);
        GLES20.glEnable(GLES20.GL_DEPTH_TEST);
        GLES20.glFrontFace(GLES20.GL_CCW);

        for (int trackableUID : trackableUIDs) {
            float[] modelViewMatrix = new float[16];

            if (ARController.getInstance().queryTrackableVisibilityAndTransformation(trackableUID, modelViewMatrix)) {
                float[] projectionMatrix = ARController.getInstance().getProjectionMatrix(10.0f, 10000.0f);
                cube.draw(projectionMatrix, modelViewMatrix);
            }
        }
    }
}