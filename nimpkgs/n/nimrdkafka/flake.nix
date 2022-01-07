{
  description = ''
    Nim wrapper for librdkafka
  '';
  inputs.src-nimrdkafka.url = "https://github.com/dfdeshom/nimrdkafka.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
