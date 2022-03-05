{
  description = ''A bridge between R and Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-rnim-v0_1_4.flake = false;
  inputs.src-rnim-v0_1_4.type = "github";
  inputs.src-rnim-v0_1_4.owner = "SciNim";
  inputs.src-rnim-v0_1_4.repo = "rnim";
  inputs.src-rnim-v0_1_4.ref = "refs/tags/v0.1.4";
  inputs.src-rnim-v0_1_4.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-rnim-v0_1_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rnim-v0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-rnim-v0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}