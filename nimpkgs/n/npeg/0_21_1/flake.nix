{
  description = ''PEG (Parsing Expression Grammars) string matching library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-npeg-0_21_1.flake = false;
  inputs.src-npeg-0_21_1.type = "github";
  inputs.src-npeg-0_21_1.owner = "zevv";
  inputs.src-npeg-0_21_1.repo = "npeg";
  inputs.src-npeg-0_21_1.ref = "refs/tags/0.21.1";
  inputs.src-npeg-0_21_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-npeg-0_21_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-npeg-0_21_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-npeg-0_21_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}