package br.gov.sp.educar

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import br.gov.sp.educar.ui.theme.EducarTheme

import android.os.Bundle;
import android.widget.FrameLayout;

import org.artoolkitx.arx.arxj.ARActivity;
import org.artoolkitx.arx.arxj.rendering.ARRenderer;

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.main);
    }

    override fun supplyRenderer(): ARRenderer {
        return new ARModelTrackingRenderer();
    }

    override fun supplyFrameLayout(): FrameLayout {
        return (FrameLayout) this.findViewById(R.id.mainFrameLayout);
    }
}