﻿/**
 * The CheckBox is a Button component that is set to toggle the selected state when clicked. CheckBoxes are used to display and change a true/false (Boolean) value. It is functionally equivalent to the ToggleButton, but sets the toggle property implicitly.
 *
 * <p><b>Inspectable Properties</b></p>
 * <p>
 * Since it derives from the Button control, the CheckBox contains the same inspectable properties as the Button 
 * with the omission of the toggle and disableFocus properties.
 * <ul>
 *  <li><i>autoSize</i>: Determines if the button will scale to fit the text that it contains and which direction to align the resized button. Setting the autoSize property to TextFieldAutoSize.NONE ("none") will leave its current size unchanged.</li>
 *  <li><i>data</i>: Custom string that can be attached to the component as seperate data than the CheckBox's label.</li>
 *  <li><i>enabled</i>: Disables the component if set to false.</li>
 *  <li><i>focusable</i>: By default buttons receive focus for user interactions. Setting this property to false will disable focus acquisition.</li>
 *  <li><i>label</i>: Sets the label of the Button.</li>
 *  <li><i>selected</i>: Checks (or selects) the CheckBox when set to true.</li>
 *  <li><i>visible</i>: Hides the button if set to false.</li>
 * </ul>
 * </p>
 *
 * <p><b>States</b></p>
 * <p>
 * Due to its toggle property, the CheckBox requires another set of keyframes to denote the selected state. These 
 * states include 
 * <ul>
 *      <li>an up or default state.</li>
 *      <li>an over state when the mouse cursor is over the component, or when it is focused.</li>
 *      <li>a down state when the button is pressed.</li>
 *      <li>a disabled state.</li>
 *      <li>a selected_up or default state.</li>
 *      <li>a selected_over state when the mouse cursor is over the component, or when it is focused.</li>
 *      <li>a selected_down state when the button is pressed.</li>
 *      <li>a selected_disabled state.</li>
 * </ul>
 * </p>
 * 
 * These are the minimal set of keyframes that should be in a CheckBox. The extended set of states and keyframes supported by the Button component, and consequently the CheckBox component, are described in the Getting Started with CLIK Buttons document.
 *
 * <p><b>Events</b></p>
 * <p>
 * All event callbacks receive a single Event parameter that contains relevant information about the event. The following properties are common to all events. <ul>
 * <li><i>type</i>: The event type.</li>
 * <li><i>target</i>: The target that generated the event.</li></ul>
 *
 * The events generated by the Button component are listed below. The properties listed next to the event are provided in addition to the common properties.
 * <ul>
 *      <li><i>ComponentEvent.SHOW</i>: The visible property has been set to true at runtime.</li>
 *      <li><i>ComponentEvent.HIDE</i>: The visible property has been set to false at runtime.</li>
 *      <li><i>FocusHandlerEvent.FOCUS_IN</i>: The button has received focus.</li>
 *      <li><i>FocusHandlerEvent.FOCUS_OUT</i>: The button has lost focus.</li>
 *      <li><i>Event.SELECT</i>: The selected property has changed.</li>
 *      <li><i>ComponentEvent.STATE_CHANGE</i>: The button's state has changed.</li>
 *      <li><i>ButtonEvent.PRESS</i>: The button has been pressed.</li>
 *      <li><i>ButtonEvent.CLICK</i>: The button has been clicked.</li>
 *      <li><i>ButtonEvent.DRAG_OVER</i>: The mouse cursor has been dragged over the button (while the left mouse button is pressed).</li>
 *      <li><i>ButtonEvent.DRAG_OUT</i>: The mouse cursor has been dragged out of the button (while the left mouse button is pressed).</li>
 *      <li><i>ButtonEvent.RELEASE_OUTSIDE</i>: The mouse cursor has been dragged out of the button and the left mouse button has been released.</li>
 * </ul>
 * </p>
 */

/**************************************************************************

Filename    :   CheckBox.as

Copyright   :   Copyright 2012 Autodesk, Inc. All Rights reserved.

Use of this software is subject to the terms of the Autodesk license
agreement provided at the time of installation or download, or which
otherwise accompanies this software in either electronic or hard copy form.

**************************************************************************/

package scaleform.clik.controls 
{
    import scaleform.clik.controls.Button;
    
    public class CheckBox extends Button 
    {
    // Constants:
        
    // Public Properties:
        
    // Protected Properties:
        
    // Initialization:
        public function CheckBox() {
            super();
        }
        
        /** @private */
        override protected function initialize():void {
            super.initialize();
            _toggle = true;
        }
        
    // Public Getter / Setters:
        // Override inspectables from base class
        /** @private */
        override public function get autoRepeat():Boolean { return false; }
        /** @private */
        override public function set autoRepeat(value:Boolean):void  { }
        /** @private */
        override public function get toggle():Boolean { return true; }
        /** @private */
        override public function set toggle(value:Boolean):void {}
        
    // Public Methods:
        /** @private */
        override public function toString():String {
            return "[CLIK CheckBox " + name + "]";
        }
        
    // Protected Methods:
        
    }
    
}