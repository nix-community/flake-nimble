{
  description = ''UUID wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-uuid-master.flake = false;
  inputs.src-uuid-master.type = "github";
  inputs.src-uuid-master.owner = "idlewan";
  inputs.src-uuid-master.repo = "nim-uuid";
  inputs.src-uuid-master.ref = "refs/heads/master";
  inputs.src-uuid-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-uuid-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-uuid-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-uuid-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}