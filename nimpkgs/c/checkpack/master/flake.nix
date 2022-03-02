{
  description = ''Tiny library to check if a system package is already installed.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-checkpack-master.flake = false;
  inputs.src-checkpack-master.type = "gitlab";
  inputs.src-checkpack-master.owner = "EchoPouet";
  inputs.src-checkpack-master.repo = "checkpack";
  inputs.src-checkpack-master.ref = "refs/heads/master";
  inputs.src-checkpack-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-checkpack-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-checkpack-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-checkpack-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}