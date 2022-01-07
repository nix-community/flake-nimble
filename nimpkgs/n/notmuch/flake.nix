{
  description = ''
    wrapper for the notmuch mail library
  '';
  inputs.src-notmuch.url = "https://github.com/samdmarshall/notmuch.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
