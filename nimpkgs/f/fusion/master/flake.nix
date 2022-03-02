{
  description = ''Nim's official stdlib extension'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-fusion-master.flake = false;
  inputs.src-fusion-master.type = "github";
  inputs.src-fusion-master.owner = "nim-lang";
  inputs.src-fusion-master.repo = "fusion";
  inputs.src-fusion-master.ref = "refs/heads/master";
  inputs.src-fusion-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-fusion-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fusion-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fusion-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}