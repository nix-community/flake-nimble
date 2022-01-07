{
  description = ''
    Bindings for picohttpparser.
  '';
  inputs.src-picohttpparser.url = "https://github.com/philip-wernersbach/nim-picohttpparser";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
