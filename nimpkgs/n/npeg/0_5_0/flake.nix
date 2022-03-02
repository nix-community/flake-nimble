{
  description = ''PEG (Parsing Expression Grammars) string matching library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-npeg-0_5_0.flake = false;
  inputs.src-npeg-0_5_0.type = "github";
  inputs.src-npeg-0_5_0.owner = "zevv";
  inputs.src-npeg-0_5_0.repo = "npeg";
  inputs.src-npeg-0_5_0.ref = "refs/tags/0.5.0";
  inputs.src-npeg-0_5_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-npeg-0_5_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-npeg-0_5_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-npeg-0_5_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}