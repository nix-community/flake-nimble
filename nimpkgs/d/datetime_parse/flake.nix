{
  description = ''parse datetime from various resources'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."datetime_parse-master".type = "github";
  inputs."datetime_parse-master".owner = "riinr";
  inputs."datetime_parse-master".repo = "flake-nimble";
  inputs."datetime_parse-master".ref = "flake-pinning";
  inputs."datetime_parse-master".dir = "nimpkgs/d/datetime_parse/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}