{
  description = ''
    Nim GUI Automation Linux, simulate user interaction, mouse and keyboard.
  '';
  inputs.src-xdo.url = "https://github.com/juancarlospaco/nim-xdo";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
