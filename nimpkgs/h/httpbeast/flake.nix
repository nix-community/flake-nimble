{
  description = ''
    A performant and scalable HTTP server.
  '';
  inputs.src-httpbeast.url = "https://github.com/dom96/httpbeast";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
