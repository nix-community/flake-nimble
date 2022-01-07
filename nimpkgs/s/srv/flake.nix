{
  description = ''
    A tiny static file web server.
  '';
  inputs.src-srv.url = "https://github.com/me7/srv";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
