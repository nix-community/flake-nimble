{
  description = ''Bindings for Simple and Fast Multimedia Library (through CSFML)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-csfml-v2_3_0.flake = false;
  inputs.src-csfml-v2_3_0.type = "github";
  inputs.src-csfml-v2_3_0.owner = "oprypin";
  inputs.src-csfml-v2_3_0.repo = "nim-csfml";
  inputs.src-csfml-v2_3_0.ref = "refs/tags/v2.3.0";
  inputs.src-csfml-v2_3_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-csfml-v2_3_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-csfml-v2_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-csfml-v2_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}