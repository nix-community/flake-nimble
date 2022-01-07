{
  description = ''
    Wrapper for high performance HTTP parsing library.
  '';
  inputs.src-joyent_http_parser.url = "https://github.com/nim-lang/joyent_http_parser";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
