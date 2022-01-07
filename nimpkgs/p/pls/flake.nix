{
  description = ''
    A simple but powerful task runner that lets you define your own commands by editing a YAML configuration file.
  '';
  inputs.src-pls.url = "https://github.com/h3rald/pls";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
