{
  description = ''minimal, performant mass file renamer'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-rn-v0_0_1.flake = false;
  inputs.src-rn-v0_0_1.type = "github";
  inputs.src-rn-v0_0_1.owner = "xioren";
  inputs.src-rn-v0_0_1.repo = "rn";
  inputs.src-rn-v0_0_1.ref = "refs/tags/v0.0.1";
  inputs.src-rn-v0_0_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-rn-v0_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rn-v0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-rn-v0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}