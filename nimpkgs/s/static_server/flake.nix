{
  description = ''
    A tiny static file web server.
  '';
  inputs.src-static_server.url = "https://github.com/bung87/nimhttpd";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
