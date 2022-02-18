{
  description = ''threadsafe timerpool implementation for event purpose'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."timerpool-master".type = "github";
  inputs."timerpool-master".owner = "riinr";
  inputs."timerpool-master".repo = "flake-nimble";
  inputs."timerpool-master".ref = "flake-pinning";
  inputs."timerpool-master".dir = "nimpkgs/t/timerpool/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}