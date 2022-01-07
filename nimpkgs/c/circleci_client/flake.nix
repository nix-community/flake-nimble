{
  description = ''
    CircleCI API client
  '';
  inputs.src-circleci_client.url = "https://github.com/FedericoCeratto/nim-circleci";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
