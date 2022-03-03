{
  description = ''wrapper for the notmuch mail library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-notmuch-master.flake = false;
  inputs.src-notmuch-master.type = "github";
  inputs.src-notmuch-master.owner = "samdmarshall";
  inputs.src-notmuch-master.repo = "notmuch.nim";
  inputs.src-notmuch-master.ref = "refs/heads/master";
  inputs.src-notmuch-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-notmuch-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-notmuch-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-notmuch-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}