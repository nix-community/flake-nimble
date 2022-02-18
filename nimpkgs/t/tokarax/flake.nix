{
  description = ''Converts HTML to Karax representation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."tokarax-master".type = "github";
  inputs."tokarax-master".owner = "riinr";
  inputs."tokarax-master".repo = "flake-nimble";
  inputs."tokarax-master".ref = "flake-pinning";
  inputs."tokarax-master".dir = "nimpkgs/t/tokarax/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}