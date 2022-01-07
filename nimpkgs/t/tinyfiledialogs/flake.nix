{
  description = ''
    TinyFileDialogs for Nim.
  '';
  inputs.src-tinyfiledialogs.url = "https://github.com/juancarlospaco/nim-tinyfiledialogs";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
