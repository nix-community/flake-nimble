{
  description = ''Text generator, based on Markov Chains (Markov text generator)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimkov-master".type = "github";
  inputs."nimkov-master".owner = "riinr";
  inputs."nimkov-master".repo = "flake-nimble";
  inputs."nimkov-master".ref = "flake-pinning";
  inputs."nimkov-master".dir = "nimpkgs/n/nimkov/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}