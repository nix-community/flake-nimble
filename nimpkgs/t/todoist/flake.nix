{
  description = ''
    A Nim client for Todoist's REST API
  '';
  inputs.src-todoist.url = "https://github.com/ruivieira/nim-todoist";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
