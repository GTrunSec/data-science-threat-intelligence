{
  inputs,
  cell,
}: {
  nixpkgs = inputs.cells._common.lib.nixpkgs.appendOverlays [
    inputs.julia2nix.overlays.default
    cell.overlays.default
    # inputs.cells.lib.__inputs__.poe
  ];
}
