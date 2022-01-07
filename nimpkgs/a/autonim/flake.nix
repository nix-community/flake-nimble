{
  description = ''
    Wrapper for AutoIt v3.3.14.2
  '';
  inputs.src-autonim.url = "https://github.com/Guevara-chan/AutoNim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
