{
  description = ''
    a couchDB client written in Nim
  '';
  inputs.src-mycouch.url = "https://github.com/hamidb80/mycouch";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
