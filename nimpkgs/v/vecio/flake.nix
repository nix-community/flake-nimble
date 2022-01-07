{
  description = ''
    vectored io for nim
  '';
  inputs.src-vecio.url = "https://github.com/emekoi/vecio.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
