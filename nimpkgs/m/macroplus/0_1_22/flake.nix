{
  description = ''a collection of useful macro functionalities'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-macroplus-0_1_22.flake = false;
  inputs.src-macroplus-0_1_22.type = "github";
  inputs.src-macroplus-0_1_22.owner = "hamidb80";
  inputs.src-macroplus-0_1_22.repo = "macroplus";
  inputs.src-macroplus-0_1_22.ref = "refs/tags/0.1.22";
  inputs.src-macroplus-0_1_22.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-macroplus-0_1_22, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-macroplus-0_1_22;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-macroplus-0_1_22"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}