import math
import numpy as np
import cv2

from kivy.clock import mainthread
from kivy.graphics import Color, Rectangle
from kivy.graphics.texture import Texture
from kivy.resources import resource_find

from camera4kivy import Preview
from object_module import *
import aruco_module as aruco 
from my_constants import *
from utils import get_extended_RT

class AugmentedReality(Preview):

    def __init__(self, **kwargs):
        super().__init__(**kwargs)
        self.analyzed_texture = None

    def analyze_pixels_callback(self, pixels, image_size, image_pos, scale, mirror):
        obj = three_d_object('data/assets/low-poly-fox-by-pixelmannen.obj', 'data/assets/texture.png')
        marker_colored = cv2.imread('data/m1.png')
        assert marker_colored is not None, "Could not find the aruco marker image file"
        
        marker_colored = cv2.flip(marker_colored, 1)
        marker_colored =  cv2.resize(marker_colored, (480,480), interpolation = cv2.INTER_CUBIC )
        marker = cv2.cvtColor(marker_colored, cv2.COLOR_BGR2GRAY)

        vc = cv2.VideoCapture(0)

        h,w = marker.shape

        marker_sig1 = aruco.get_bit_sig(marker, np.array([[0,0],[0,w], [h,w], [h,0]]).reshape(4,1,2))
        marker_sig2 = aruco.get_bit_sig(marker, np.array([[0,w], [h,w], [h,0], [0,0]]).reshape(4,1,2))
        marker_sig3 = aruco.get_bit_sig(marker, np.array([[h,w],[h,0], [0,0], [0,w]]).reshape(4,1,2))
        marker_sig4 = aruco.get_bit_sig(marker, np.array([[h,0],[0,0], [0,w], [h,w]]).reshape(4,1,2))
        
        sigs = [marker_sig1, marker_sig2, marker_sig3, marker_sig4]

        rval, frame = vc.read()

        while rval: 
            rval, frame = vc.read()
            canvas = np.zeros((h_canvas, w_canvas, 3), np.uint8)
            canvas[:h, :w, :] = marker_colored
            success, H = aruco.find_homography_aruco(frame, marker, sigs)
        
            R_T = get_extended_RT(A, H)
            transformation = A.dot(R_T)
        
            augmented = np.flip(augment(frame, obj, transformation, marker), axis = 1)
            canvas[:h2 , w: , :] = augmented
            cv2.imshow("webcam", canvas)

        self.make_thread_safe(pixels, image_size) 

    @mainthread
    def make_thread_safe(self, pixels, size):
        if not self.analyzed_texture or\
           self.analyzed_texture.size[0] != size[0] or\
           self.analyzed_texture.size[1] != size[1]:
            self.analyzed_texture = Texture.create(size=size, colorfmt='rgba')
            self.analyzed_texture.flip_vertical()
        if self.camera_connected:
            self.analyzed_texture.blit_buffer(pixels, colorfmt='rgba') 
        else:
            self.analyzed_texture = None

