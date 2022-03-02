{
  description = ''fast interval overlaps'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-lapper-master.flake = false;
  inputs.src-lapper-master.type = "github";
  inputs.src-lapper-master.owner = "brentp";
  inputs.src-lapper-master.repo = "nim-lapper";
  inputs.src-lapper-master.ref = "refs/heads/master";
  inputs.src-lapper-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-lapper-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lapper-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-lapper-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}