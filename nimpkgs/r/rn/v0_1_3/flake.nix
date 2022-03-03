{
  description = ''minimal, performant mass file renamer'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-rn-v0_1_3.flake = false;
  inputs.src-rn-v0_1_3.type = "github";
  inputs.src-rn-v0_1_3.owner = "xioren";
  inputs.src-rn-v0_1_3.repo = "rn";
  inputs.src-rn-v0_1_3.ref = "refs/tags/v0.1.3";
  inputs.src-rn-v0_1_3.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-rn-v0_1_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rn-v0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-rn-v0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}