{
  description = ''fast markdown parser'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nmark-develop".type = "github";
  inputs."nmark-develop".owner = "riinr";
  inputs."nmark-develop".repo = "flake-nimble";
  inputs."nmark-develop".ref = "flake-pinning";
  inputs."nmark-develop".dir = "nimpkgs/n/nmark/develop";

    inputs."nmark-master".type = "github";
  inputs."nmark-master".owner = "riinr";
  inputs."nmark-master".repo = "flake-nimble";
  inputs."nmark-master".ref = "flake-pinning";
  inputs."nmark-master".dir = "nimpkgs/n/nmark/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}