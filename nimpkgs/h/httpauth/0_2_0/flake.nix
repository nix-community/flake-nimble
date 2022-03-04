{
  description = ''HTTP Authentication and Authorization'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-httpauth-0_2_0.flake = false;
  inputs.src-httpauth-0_2_0.type = "github";
  inputs.src-httpauth-0_2_0.owner = "FedericoCeratto";
  inputs.src-httpauth-0_2_0.repo = "nim-httpauth";
  inputs.src-httpauth-0_2_0.ref = "refs/tags/0.2.0";
  inputs.src-httpauth-0_2_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."libsodium".type = "github";
  inputs."libsodium".owner = "riinr";
  inputs."libsodium".repo = "flake-nimble";
  inputs."libsodium".ref = "flake-pinning";
  inputs."libsodium".dir = "nimpkgs/l/libsodium";
  inputs."libsodium".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libsodium".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-httpauth-0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-httpauth-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-httpauth-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}