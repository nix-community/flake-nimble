{
  description = ''
    AutoMagic CLI argument parsing is Cliche
  '';
  inputs.src-cliche.url = "https://github.com/juancarlospaco/cliche";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
