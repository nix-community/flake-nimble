{
  description = ''Simple reallocating vector'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-vector-v0_1_0.flake = false;
  inputs.src-vector-v0_1_0.type = "github";
  inputs.src-vector-v0_1_0.owner = "tontinton";
  inputs.src-vector-v0_1_0.repo = "vector";
  inputs.src-vector-v0_1_0.ref = "refs/tags/v0.1.0";
  inputs.src-vector-v0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-vector-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vector-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-vector-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}