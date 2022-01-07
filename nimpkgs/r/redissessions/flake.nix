{
  description = ''
    Redis-backed sessions for jester
  '';
  inputs.src-redissessions.url = "https://github.com/ithkuil/redissessions/";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
