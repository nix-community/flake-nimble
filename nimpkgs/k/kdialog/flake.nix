{
  description = ''
    KDialog Qt5 Wrapper, easy API, KISS design
  '';
  inputs.src-kdialog.url = "https://github.com/juancarlospaco/nim-kdialog";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
