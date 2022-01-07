{
  description = ''
    markx selects execution targets with editor and executes commands.
  '';
  inputs.src-markx.url = "https://github.com/jiro4989/markx";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
