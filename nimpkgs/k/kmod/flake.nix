{
  description = ''
    High-level wrapper for Linux's kmod library
  '';
  inputs.src-kmod.url = "https://github.com/alaviss/kmod";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
