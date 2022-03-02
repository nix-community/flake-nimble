{
  description = ''small/tiny, flatfile, jsonl based, inprogress database for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."flatdb-master".type = "github";
  inputs."flatdb-master".owner = "riinr";
  inputs."flatdb-master".repo = "flake-nimble";
  inputs."flatdb-master".ref = "flake-pinning";
  inputs."flatdb-master".dir = "nimpkgs/f/flatdb/master";
  inputs."flatdb-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flatdb-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}