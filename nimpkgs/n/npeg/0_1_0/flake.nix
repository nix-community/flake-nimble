{
  description = ''PEG (Parsing Expression Grammars) string matching library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-npeg-0_1_0.flake = false;
  inputs.src-npeg-0_1_0.type = "github";
  inputs.src-npeg-0_1_0.owner = "zevv";
  inputs.src-npeg-0_1_0.repo = "npeg";
  inputs.src-npeg-0_1_0.ref = "refs/tags/0.1.0";
  inputs.src-npeg-0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-npeg-0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-npeg-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-npeg-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}