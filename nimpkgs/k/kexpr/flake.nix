{
  description = ''wrapper for kexpr math expression evaluation library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."kexpr-master".type = "github";
  inputs."kexpr-master".owner = "riinr";
  inputs."kexpr-master".repo = "flake-nimble";
  inputs."kexpr-master".ref = "flake-pinning";
  inputs."kexpr-master".dir = "nimpkgs/k/kexpr/master";
  inputs."kexpr-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kexpr-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."kexpr-v0_0_2".type = "github";
  inputs."kexpr-v0_0_2".owner = "riinr";
  inputs."kexpr-v0_0_2".repo = "flake-nimble";
  inputs."kexpr-v0_0_2".ref = "flake-pinning";
  inputs."kexpr-v0_0_2".dir = "nimpkgs/k/kexpr/v0_0_2";
  inputs."kexpr-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kexpr-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}