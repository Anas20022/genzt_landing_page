enum DeviceTypesState { mobile, tablet, laptop }

class DeviceTypeLogic {
  static int currentDeviceType = 0;

  void setNewDeviceType(double newDeviceWidth) {
    currentDeviceType = newDeviceWidth > 768
        ? DeviceTypesState.laptop.index
        : newDeviceWidth > 426
            ? DeviceTypesState.tablet.index
            : DeviceTypesState.mobile.index;
  }
}
