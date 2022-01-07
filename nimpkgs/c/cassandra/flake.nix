{
  description = ''
    Bindings to Cassandra DB driver
  '';
  inputs.src-cassandra.url = "https://github.com/yglukhov/cassandra";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
