{
  description = ''Special Functions of Stats & Physics'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."spfun-main".type = "github";
  inputs."spfun-main".owner = "riinr";
  inputs."spfun-main".repo = "flake-nimble";
  inputs."spfun-main".ref = "flake-pinning";
  inputs."spfun-main".dir = "nimpkgs/s/spfun/main";

    inputs."spfun-0_2_0".type = "github";
  inputs."spfun-0_2_0".owner = "riinr";
  inputs."spfun-0_2_0".repo = "flake-nimble";
  inputs."spfun-0_2_0".ref = "flake-pinning";
  inputs."spfun-0_2_0".dir = "nimpkgs/s/spfun/0_2_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}