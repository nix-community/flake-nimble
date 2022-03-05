{
  description = ''Nim lang smart pointers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nptr-v0_1_7.flake = false;
  inputs.src-nptr-v0_1_7.type = "github";
  inputs.src-nptr-v0_1_7.owner = "henryas";
  inputs.src-nptr-v0_1_7.repo = "nptr";
  inputs.src-nptr-v0_1_7.ref = "refs/tags/v0.1.7";
  inputs.src-nptr-v0_1_7.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nptr-v0_1_7, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nptr-v0_1_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nptr-v0_1_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}