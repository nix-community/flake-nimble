{
  description = ''
    Nim / Python library to feed HTTP server quickly with custom messages
  '';
  inputs.src-batchsend.url = "https://github.com/marcomq/batchsend";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
