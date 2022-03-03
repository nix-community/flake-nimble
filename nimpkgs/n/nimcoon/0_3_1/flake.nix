{
  description = ''A command-line YouTube player and more'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimcoon-0_3_1.flake = false;
  inputs.src-nimcoon-0_3_1.type = "other";
  inputs.src-nimcoon-0_3_1.owner = "gitweb";
  inputs.src-nimcoon-0_3_1.repo = "nimcoon";
  inputs.src-nimcoon-0_3_1.ref = "refs/tags/0.3.1";
  inputs.src-nimcoon-0_3_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimcoon-0_3_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimcoon-0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimcoon-0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}