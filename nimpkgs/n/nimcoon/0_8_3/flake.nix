{
  description = ''A command-line YouTube player and more'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimcoon-0_8_3.flake = false;
  inputs.src-nimcoon-0_8_3.type = "other";
  inputs.src-nimcoon-0_8_3.owner = "gitweb";
  inputs.src-nimcoon-0_8_3.repo = "nimcoon";
  inputs.src-nimcoon-0_8_3.ref = "refs/tags/0.8.3";
  inputs.src-nimcoon-0_8_3.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimcoon-0_8_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimcoon-0_8_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimcoon-0_8_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}