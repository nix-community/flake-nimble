{
  description = ''
    ISO codes for Nim.
  '';
  inputs.src-isocodes.url = "https://github.com/kraptor/isocodes";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
