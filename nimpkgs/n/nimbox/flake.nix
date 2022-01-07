{
  description = ''
    A Rustbox-inspired termbox wrapper
  '';
  inputs.src-nimbox.url = "https://github.com/dom96/nimbox";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
