/*
 * Copyright (c) 2011, 2012, 2013  BlackBerry Limited.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
import bb.cascades 1.0

Page {
    Container {
        // Use a black background
        background: Color.Black

        layout: DockLayout {}

        // The image of the Mona Lisa, placed in the middle of the screen
        //! [0]
        ImageView {
            horizontalAlignment: HorizontalAlignment.Center
            verticalAlignment: VerticalAlignment.Center

            imageSource: "asset:///images/mona_lisa.jpg"

            // Bind the rotation of the image against the rotation property of the sensor object
            rotationZ: _sensor.rotation

            // Disable implicit animations to avoid ugly 'jumps' when switching from 180 degree to -180 degree and vice versa
            attachedObjects: [
                ImplicitAnimationController {
                    propertyName: "rotationZ"
                    enabled: false
                }
            ]
        }
        //! [0]
    }
}
