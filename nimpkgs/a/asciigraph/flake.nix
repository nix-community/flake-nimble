{
  description = ''Console ascii line charts in pure nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."asciigraph-master".type = "github";
  inputs."asciigraph-master".owner = "riinr";
  inputs."asciigraph-master".repo = "flake-nimble";
  inputs."asciigraph-master".ref = "flake-pinning";
  inputs."asciigraph-master".dir = "nimpkgs/a/asciigraph/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}