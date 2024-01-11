class Project {
  final String name;
  final String description;
  final String image;
  final String link;
  Project(this.name, this.description, this.image, this.link);
}

List<Project> projectList = [
  Project(
    'Ultimate USB (All-In-One Tool)',
    'Ventoy (Unofficial), RUFUS (Unofficial) (new method), ISO2USB, FORMAT (FAT32-EXFAT-NTFS-EXT2-EXT3-EXT4), WIPE USB, USB File Manager, ISO RAW Write, File System Viewer, USB Backup & Restore',
    'assets/images/Ultimate USB Cover.png',
    'https://play.google.com/store/apps/details?id=com.mixapplications.ultimateusb&hl=en&gl=US',
  ),
  Project(
    'Ventoy',
    'Ventoy is a tool to create bootable USB drive for ISO/WIM/IMG/VHD(x)/EFI files.With ventoy, you don\'t need to format the disk over and over, you just need to copy the ISO/WIM/IMG/VHD(x)/EFI files to the USB drive and boot them directly.',
    'assets/images/Ventoy COVER.png',
    'https://play.google.com/store/apps/details?id=com.mixapplications.ventoy_app&hl=en&gl=US',
  ),
  Project(
      'Rufus',
      'Rufus is an android tool to create bootable usb pen drive or burn iso file to usb',
      'assets/images/Rufus COVER.png',
      'https://play.google.com/store/apps/details?id=com.mixapplications.rufus&hl=en&gl=US'),
  Project(
      'USB TOOLS',
      'USB TOOL Is a new simple tool to format, backup & restore, wipe usb or fix corrupted usb stick NO Root Required.supported format: FAT32 - EXFAT - NTFS - EXT2,3,4',
      'assets/images/USB Tools COVER.png',
      'https://play.google.com/store/apps/details?id=com.mixapplications.usbtools&hl=en&gl=US'),
  Project(
      'ISO 2 USB',
      'ISO 2 USB is the 1st app to burn ISO Files To USB Stick (Pin Drive) without root quite easy with amazingly simple UI, you can easily create bootable USB flash drive from your phone.',
      'assets/images/ISO2USB COVER.png',
      'https://play.google.com/store/apps/details?id=com.mixapplications.iso2usb&hl=en&gl=US'),
  Project(
      'MULTIOS USB',
      'MULTIOS USB is a tool to create non-windows bootable USB drive.',
      'assets/images/MULTIOS COVER.png',
      'https://play.google.com/store/apps/details?id=com.mixapplications.multiosusb'),
  Project(
      'USB FILE MANAGER',
      'USB File Manager & File System Viewer is a small app to brawse , open, share ... etc. usb files. supported partition filesystem: FAT16 - FAT32 - EXFAT - NTFS - EXT 2,3,4',
      'assets/images/USB FILE MANAGER COVER.png',
      'https://play.google.com/store/apps/details?id=com.mixapplications.usbfilemanager&hl=en&gl=US'),
  Project(
      'ChaoMe Theme Editor',
      'ChaoMe Theme Editor is the most powerful theme editor for ChaoMe phones with its simple and awesome UI and its wide set of options to help you customizing your phone easily. It\'s fully free and available to everyone. You can pick, edit and save your theme quite fast.',
      'assets/images/ChaoMe Theme Editor COVER.png',
      'https://play.google.com/store/apps/details?id=com.mixapplications.miuithemeeditor&hl=en&gl=US'),
  Project(
      'Theme Editor For EMUI',
      'EMUI Theme Editor is the most powerful Huawei (EmotionUI) theme editor with its simple and awesome UI and its wide set of options to help you customizing your phone easily. It\'s fully free and available to everyone. You can pick, edit and save your theme quite fast.',
      'assets/images/Theme Editor For EMUI COVER.png',
      'https://play.google.com/store/apps/details?id=com.mixapplications.themeeditor&hl=en&gl=US'),
];
