{
  description = ''Tiger hash function'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-tiger-master.flake = false;
  inputs.src-tiger-master.type = "other";
  inputs.src-tiger-master.owner = "~ehmry";
  inputs.src-tiger-master.repo = "nim_tiger";
  inputs.src-tiger-master.ref = "refs/heads/master";
  inputs.src-tiger-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-tiger-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tiger-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-tiger-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}