{
  description = ''libbpf for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimbpf-master".type = "github";
  inputs."nimbpf-master".owner = "riinr";
  inputs."nimbpf-master".repo = "flake-nimble";
  inputs."nimbpf-master".ref = "flake-pinning";
  inputs."nimbpf-master".dir = "nimpkgs/n/nimbpf/master";
  inputs."nimbpf-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbpf-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}