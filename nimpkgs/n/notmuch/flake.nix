{
  description = ''wrapper for the notmuch mail library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."notmuch-master".type = "github";
  inputs."notmuch-master".owner = "riinr";
  inputs."notmuch-master".repo = "flake-nimble";
  inputs."notmuch-master".ref = "flake-pinning";
  inputs."notmuch-master".dir = "nimpkgs/n/notmuch/master";
  inputs."notmuch-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notmuch-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}