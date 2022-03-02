{
  description = ''Static GLFW for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-staticglfw-v3_3_0_1.flake = false;
  inputs.src-staticglfw-v3_3_0_1.type = "github";
  inputs.src-staticglfw-v3_3_0_1.owner = "treeform";
  inputs.src-staticglfw-v3_3_0_1.repo = "staticglfw";
  inputs.src-staticglfw-v3_3_0_1.ref = "refs/tags/v3.3.0.1";
  inputs.src-staticglfw-v3_3_0_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-staticglfw-v3_3_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-staticglfw-v3_3_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-staticglfw-v3_3_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}