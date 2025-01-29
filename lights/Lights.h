/*
 * SPDX-FileCopyrightText: 2020 The Android Open Source Project
 * SPDX-FileCopyrightText: 2020-2022 The LineageOS Project
 * SPDX-License-Identifier: Apache-2.0
 */

#pragma once

#include <aidl/android/hardware/light/BnLights.h>
#include <array>

namespace aidl {
namespace android {
namespace hardware {
namespace light {

// Keep sorted in the order of priority.
constexpr std::array kAvailableLights = {
        // id, ordinal, type
        HwLight{static_cast<int32_t>(LightType::NOTIFICATIONS), 0, LightType::NOTIFICATIONS},
        HwLight{static_cast<int32_t>(LightType::BATTERY), 0, LightType::BATTERY},
};

class Lights : public BnLights {
  public:
    ndk::ScopedAStatus setLightState(int id, const HwLightState& state) override;
    ndk::ScopedAStatus getLights(std::vector<HwLight>* types) override;

  private:
    std::array<HwLightState, kAvailableLights.size()> notif_states_;
};

}  // namespace light
}  // namespace hardware
}  // namespace android
}  // namespace aidl
