{
  description = ''
    Cover Art Archive API wrapper
  '';
  inputs.src-coverartarchive.url = "https://github.com/achesak/nim-coverartarchive";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
