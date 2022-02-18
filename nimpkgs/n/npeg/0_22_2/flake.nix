{
  description = ''PEG (Parsing Expression Grammars) string matching library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-npeg-0_22_2.flake = false;
  inputs.src-npeg-0_22_2.type = "github";
  inputs.src-npeg-0_22_2.owner = "zevv";
  inputs.src-npeg-0_22_2.repo = "npeg";
  inputs.src-npeg-0_22_2.ref = "refs/tags/0.22.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-npeg-0_22_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-npeg-0_22_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-npeg-0_22_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}