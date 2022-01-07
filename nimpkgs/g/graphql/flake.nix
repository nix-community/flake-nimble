{
  description = ''
    GraphQL parser, server and client implementation
  '';
  inputs.src-graphql.url = "https://github.com/status-im/nim-graphql";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
