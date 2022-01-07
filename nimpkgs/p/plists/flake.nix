{
  description = ''
    Generate and parse Mac OS X .plist files in Nim.
  '';
  inputs.src-plists.url = "https://github.com/yglukhov/plists";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
