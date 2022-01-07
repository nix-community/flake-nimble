{
  description = ''
    Rename files to their sha1sums
  '';
  inputs.src-shaname.url = "https://github.com/Torro/nimble-packages?subdir=shaname";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
