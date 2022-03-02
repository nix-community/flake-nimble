{
  description = ''a collection of useful macro functionalities'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-macroplus-0_1_20.flake = false;
  inputs.src-macroplus-0_1_20.type = "github";
  inputs.src-macroplus-0_1_20.owner = "hamidb80";
  inputs.src-macroplus-0_1_20.repo = "macroplus";
  inputs.src-macroplus-0_1_20.ref = "refs/tags/0.1.20";
  inputs.src-macroplus-0_1_20.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-macroplus-0_1_20, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-macroplus-0_1_20;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-macroplus-0_1_20"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}