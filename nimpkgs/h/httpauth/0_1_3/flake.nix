{
  description = ''HTTP Authentication and Authorization'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-httpauth-0_1_3.flake = false;
  inputs.src-httpauth-0_1_3.type = "github";
  inputs.src-httpauth-0_1_3.owner = "FedericoCeratto";
  inputs.src-httpauth-0_1_3.repo = "nim-httpauth";
  inputs.src-httpauth-0_1_3.ref = "refs/tags/0.1.3";
  inputs.src-httpauth-0_1_3.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."libsodium".type = "github";
  inputs."libsodium".owner = "riinr";
  inputs."libsodium".repo = "flake-nimble";
  inputs."libsodium".ref = "flake-pinning";
  inputs."libsodium".dir = "nimpkgs/l/libsodium";
  inputs."libsodium".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libsodium".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-httpauth-0_1_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-httpauth-0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-httpauth-0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}