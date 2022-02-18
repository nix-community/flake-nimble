{
  description = ''A command-line YouTube player and more'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimcoon-0_2_2.flake = false;
  inputs.src-nimcoon-0_2_2.type = "other";
  inputs.src-nimcoon-0_2_2.owner = "gitweb";
  inputs.src-nimcoon-0_2_2.repo = "nimcoon";
  inputs.src-nimcoon-0_2_2.ref = "refs/tags/0.2.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimcoon-0_2_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimcoon-0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimcoon-0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}