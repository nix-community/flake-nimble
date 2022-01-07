{
  description = ''
    A tiny static file web server.
  '';
  inputs.src-nimhttpd.url = "https://github.com/h3rald/nimhttpd";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
