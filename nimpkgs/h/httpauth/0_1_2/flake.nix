{
  description = ''HTTP Authentication and Authorization'';
  inputs.src-httpauth-0_1_2.flake = false;
  inputs.src-httpauth-0_1_2.type = "github";
  inputs.src-httpauth-0_1_2.owner = "FedericoCeratto";
  inputs.src-httpauth-0_1_2.repo = "nim-httpauth";
  inputs.src-httpauth-0_1_2.ref = "refs/tags/0.1.2";
  
  
  inputs."libsodium".type = "github";
  inputs."libsodium".owner = "riinr";
  inputs."libsodium".repo = "flake-nimble";
  inputs."libsodium".ref = "flake-pinning";
  inputs."libsodium".dir = "nimpkgs/l/libsodium";

  outputs = { self, nixpkgs, src-httpauth-0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-httpauth-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-httpauth-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}