{
  description = ''
    Termbox wrapper.
  '';
  inputs.src-termbox.url = "https://github.com/fowlmouth/nim-termbox";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
