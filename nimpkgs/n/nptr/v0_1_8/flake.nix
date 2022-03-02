{
  description = ''Nim lang smart pointers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nptr-v0_1_8.flake = false;
  inputs.src-nptr-v0_1_8.type = "github";
  inputs.src-nptr-v0_1_8.owner = "henryas";
  inputs.src-nptr-v0_1_8.repo = "nptr";
  inputs.src-nptr-v0_1_8.ref = "refs/tags/v0.1.8";
  inputs.src-nptr-v0_1_8.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nptr-v0_1_8, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nptr-v0_1_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nptr-v0_1_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}