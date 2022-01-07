{
  description = ''
    Nim modules for access to system Bluetooth resources.
  '';
  inputs.src-nimbluez.url = "https://github.com/Electric-Blue/NimBluez.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
