{
  description = ''HTTP Authentication and Authorization'';
  inputs.src-httpauth-0_1_0.flake = false;
  inputs.src-httpauth-0_1_0.type = "github";
  inputs.src-httpauth-0_1_0.owner = "FedericoCeratto";
  inputs.src-httpauth-0_1_0.repo = "nim-httpauth";
  inputs.src-httpauth-0_1_0.ref = "refs/tags/0.1.0";
  
  
  inputs."libsodium".url = "path:../../../l/libsodium";
  inputs."libsodium".type = "github";
  inputs."libsodium".owner = "riinr";
  inputs."libsodium".repo = "flake-nimble";
  inputs."libsodium".ref = "flake-pinning";
  inputs."libsodium".dir = "nimpkgs/l/libsodium";

  outputs = { self, nixpkgs, src-httpauth-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-httpauth-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-httpauth-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}