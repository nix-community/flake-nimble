{
  description = ''small/tiny, flatfile, jsonl based, inprogress database for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-flatdb-master.flake = false;
  inputs.src-flatdb-master.type = "github";
  inputs.src-flatdb-master.owner = "enthus1ast";
  inputs.src-flatdb-master.repo = "flatdb";
  inputs.src-flatdb-master.ref = "refs/heads/master";
  inputs.src-flatdb-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-flatdb-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-flatdb-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-flatdb-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}