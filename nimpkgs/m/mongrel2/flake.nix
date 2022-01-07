{
  description = ''
    Handler framework for the Mongrel2 web server.
  '';
  inputs.src-mongrel2.url = "https://github.com/mahlonsmith/nim-mongrel2";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
