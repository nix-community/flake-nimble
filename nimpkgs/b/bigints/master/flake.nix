{
  description = ''Arbitrary-precision integers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-bigints-master.flake = false;
  inputs.src-bigints-master.type = "github";
  inputs.src-bigints-master.owner = "nim-lang";
  inputs.src-bigints-master.repo = "bigints";
  inputs.src-bigints-master.ref = "refs/heads/master";
  inputs.src-bigints-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-bigints-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bigints-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bigints-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}