{
  description = ''
    Command-line utility for Tangling of Org mode documents
  '';
  inputs.src-ntangle.url = "https://github.com/OrgTangle/ntangle";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
