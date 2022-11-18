{
  inputs,
  cell,
} @ args: let
  inherit (inputs) nixpkgs;
in {
  mkPoetryEnv =
    inputs.cells._common.lib.nixpkgs.poetry2nix.mkPoetryEnv
    (builtins.removeAttrs cell.lib.poetryPackages ["pkgs"]);

  mkPythonEnv =
    nixpkgs.python3.buildEnv.override
    {
      extraLibs = inputs.cells.python.lib.poetryPackages.extraPackages nixpkgs.python3Packages;
      # extraLibs = with nixpkgs.python3Packages; [
      #   six
      # ];
      # not recommended
      # ignoreCollisions = true;
    };

  mkMachEnv = cell.lib.nixpkgs.machlib.mkPython {
    requirements = ''
      numpy
      pandas
      polars
    '';
    overridesPre = [
      (
        self: super: {
          inherit
            (cell.lib.nixpkgs)
            polars
            ;
        }
      )
    ];
    packagesExtra = [];
    python = "python3";
    providers = {};
  };
}
