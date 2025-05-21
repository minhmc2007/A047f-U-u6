# Blue Nethunter Kernel for Samsung Galaxy A04s (SM-A047F)

## Overview

Welcome to the Blue Nethunter Kernel project! This custom kernel is specifically designed for the Samsung Galaxy A04s (SM-A047F), aiming to significantly enhance performance, unlock new capabilities, and provide a robust platform for advanced users and penetration testers.

**This kernel is a fork based on the original work by physwizz, which in turn is derived from Samsung's stock kernel.**

## Features

* **Overclocked CPU:** Boosts the maximum CPU frequency from $2002 \text{MHz}$ to a powerful $2210 \text{MHz}$, delivering noticeable improvements in app loading times, gaming, and overall system responsiveness.
* **Significantly Improved Kernel Performance:** Numerous optimizations have been implemented at the kernel level to ensure smoother operation, better resource management, and enhanced efficiency across the board.
* **Bad USB HID Attack Support:** Out-of-the-box support for **Bad USB** (Human Interface Device) attacks, allowing for various penetration testing scenarios directly from your device.
* **Upcoming Features (KVM & Docker):** We're actively working on integrating support for **Kernel-based Virtual Machine (KVM)** and **Docker**, which will further expand the capabilities of your A04s, enabling virtualization and containerization directly on your device. Stay tuned for updates!

---

## Flashing Instructions

**Disclaimer:** Flashing a custom kernel carries inherent risks. While this kernel has been tested, we are not responsible for any damage that may occur to your device. Proceed at your own risk.

**Prerequisites:**

* Samsung Galaxy A04s (SM-A047F) with an **unlocked bootloader**.
* **Odin** flashing tool installed on your PC.
* Samsung USB Drivers installed on your PC.
* A USB cable.

**Steps:**

1.  **Download the Kernel:** Obtain the latest `boot.tar` file for the Blue Nethunter Kernel from the [release page/link to your releases].
2.  **Enter Download Mode:**
    * Power off your Samsung Galaxy A04s.
    * Press and hold the **Volume Up + Volume Down** buttons simultaneously while connecting your phone to your PC via USB.
    * Release the buttons when you see the Download Mode screen.
3.  **Open Odin:** Launch the Odin tool on your PC.
4.  **Select AP Slot:** In Odin, click on the **AP** button.
5.  **Load Kernel File:** Navigate to where you downloaded the `boot.tar` file and select it.
6.  **Verify Options:** Ensure that only "**Auto Reboot**" and "**F. Reset Time**" are checked in the "Options" tab in Odin. **DO NOT check "Re-Partition."**
7.  **Start Flashing:** Click the **Start** button in Odin to begin the flashing process.
8.  **Reboot:** Once Odin displays a "**PASS!**" message, your phone will automatically reboot.

Your Samsung Galaxy A04s should now be running the Blue Nethunter Kernel!

---

## Support and Community

For bug reports, feature requests, or general discussions, please use:

* **GitHub Issues:** In this repository.
* **XDA Forums:** [Samsung Galaxy A04s General Modding Guide](https://xdaforums.com/t/samsung-galaxy-a04s-general-modding-guide.4721275/#post-90092589)

---

## License

This project is a fork of physwizz's work, which is based on Samsung's original kernel. **Currently, this specific fork does not have an explicit license.**

---

## Credits

* **minhmc2007 (Kali Nethunter User)** - Current Maintainer/Developer
* **physwizz** - For the foundational work on which this kernel is based.
* **Samsung** - For the original kernel source.

Enjoy your enhanced Samsung Galaxy A04s!
