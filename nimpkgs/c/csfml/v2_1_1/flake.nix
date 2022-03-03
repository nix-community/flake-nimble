{
  description = ''Bindings for Simple and Fast Multimedia Library (through CSFML)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-csfml-v2_1_1.flake = false;
  inputs.src-csfml-v2_1_1.type = "github";
  inputs.src-csfml-v2_1_1.owner = "oprypin";
  inputs.src-csfml-v2_1_1.repo = "nim-csfml";
  inputs.src-csfml-v2_1_1.ref = "refs/tags/v2.1.1";
  inputs.src-csfml-v2_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-csfml-v2_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-csfml-v2_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-csfml-v2_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}