{
  description = ''minimal, performant mass file renamer'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-rn-v0_0_4.flake = false;
  inputs.src-rn-v0_0_4.type = "github";
  inputs.src-rn-v0_0_4.owner = "xioren";
  inputs.src-rn-v0_0_4.repo = "rn";
  inputs.src-rn-v0_0_4.ref = "refs/tags/v0.0.4";
  inputs.src-rn-v0_0_4.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-rn-v0_0_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rn-v0_0_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-rn-v0_0_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}