{
  description = ''
    A library for managing your CouchDB. Easy & comfortably to use.
  '';
  inputs.src-couchdb.url = "https://github.com/theAkito/nim-couchdb";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
