{
  description = ''
    Max wrapper for omni.
  '';
  inputs.src-omnimax.url = "https://github.com/vitreo12/omnimax";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
