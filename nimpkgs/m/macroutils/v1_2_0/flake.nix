{
  description = ''A package that makes creating macros easier'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-macroutils-v1_2_0.flake = false;
  inputs.src-macroutils-v1_2_0.type = "github";
  inputs.src-macroutils-v1_2_0.owner = "PMunch";
  inputs.src-macroutils-v1_2_0.repo = "macroutils";
  inputs.src-macroutils-v1_2_0.ref = "refs/tags/v1.2.0";
  inputs.src-macroutils-v1_2_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-macroutils-v1_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-macroutils-v1_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-macroutils-v1_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}