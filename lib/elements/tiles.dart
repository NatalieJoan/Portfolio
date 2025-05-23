enum TileSizeType { small, medium, large }

class TileSettings {
  final TileSizeType tileSize;
  final double spacing;
  final bool useColumnLayout;

  TileSettings({
    required this.tileSize,
    required this.spacing,
    required this.useColumnLayout,
  });

  static TileSettings getSettings(double width) {
    if (width < 600) {
      return TileSettings(
        tileSize: TileSizeType.large,
        spacing: 0,
        useColumnLayout: true,
      );
    } else if (width < 1152) {
      return TileSettings(
        tileSize: TileSizeType.medium,
        spacing: 50,
        useColumnLayout: false,
      );
    } else {
      return TileSettings(
        tileSize: TileSizeType.small,
        spacing: 200,
        useColumnLayout: false,
      );
    }
  }
}
