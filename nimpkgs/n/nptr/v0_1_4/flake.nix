{
  description = ''Nim lang smart pointers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nptr-v0_1_4.flake = false;
  inputs.src-nptr-v0_1_4.type = "github";
  inputs.src-nptr-v0_1_4.owner = "henryas";
  inputs.src-nptr-v0_1_4.repo = "nptr";
  inputs.src-nptr-v0_1_4.ref = "refs/tags/v0.1.4";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nptr-v0_1_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nptr-v0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nptr-v0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}