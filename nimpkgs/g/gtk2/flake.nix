{
  description = ''
    Wrapper for gtk2, a feature rich toolkit for creating graphical user interfaces
  '';
  inputs.src-gtk2.url = "https://github.com/nim-lang/gtk2";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
