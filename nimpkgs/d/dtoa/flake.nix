{
  description = ''Port of Milo Yip's fast dtoa() implementation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."dtoa-master".type = "github";
  inputs."dtoa-master".owner = "riinr";
  inputs."dtoa-master".repo = "flake-nimble";
  inputs."dtoa-master".ref = "flake-pinning";
  inputs."dtoa-master".dir = "nimpkgs/d/dtoa/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}