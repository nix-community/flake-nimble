{
  description = ''wrapper for the notmuch mail library'';
  inputs.src-notmuch-master.flake = false;
  inputs.src-notmuch-master.type = "github";
  inputs.src-notmuch-master.owner = "samdmarshall";
  inputs.src-notmuch-master.repo = "notmuch.nim";
  inputs.src-notmuch-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-notmuch-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-notmuch-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-notmuch-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}