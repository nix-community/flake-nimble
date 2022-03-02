{
  description = ''File-based unit testing system'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-testify-master.flake = false;
  inputs.src-testify-master.type = "github";
  inputs.src-testify-master.owner = "sealmove";
  inputs.src-testify-master.repo = "testify";
  inputs.src-testify-master.ref = "refs/heads/master";
  inputs.src-testify-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-testify-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-testify-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-testify-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}