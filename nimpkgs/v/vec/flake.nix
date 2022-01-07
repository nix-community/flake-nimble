{
  description = ''
    A very simple vector library
  '';
  inputs.src-vec.url = "https://github.com/dom96/vec";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
