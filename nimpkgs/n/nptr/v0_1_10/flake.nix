{
  description = ''Nim lang smart pointers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nptr-v0_1_10.flake = false;
  inputs.src-nptr-v0_1_10.type = "github";
  inputs.src-nptr-v0_1_10.owner = "henryas";
  inputs.src-nptr-v0_1_10.repo = "nptr";
  inputs.src-nptr-v0_1_10.ref = "refs/tags/v0.1.10";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nptr-v0_1_10, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nptr-v0_1_10;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nptr-v0_1_10"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}