{
  description = ''
    A command that to read novel on terminal
  '';
  inputs.src-termnovel.url = "https://github.com/jiro4989/termnovel";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
