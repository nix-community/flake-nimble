{
  description = ''HTTP Authentication and Authorization'';
  inputs.src-httpauth-0_1_3.flake = false;
  inputs.src-httpauth-0_1_3.type = "github";
  inputs.src-httpauth-0_1_3.owner = "FedericoCeratto";
  inputs.src-httpauth-0_1_3.repo = "nim-httpauth";
  inputs.src-httpauth-0_1_3.ref = "refs/tags/0.1.3";
  
  
  inputs."libsodium".type = "github";
  inputs."libsodium".owner = "riinr";
  inputs."libsodium".repo = "flake-nimble";
  inputs."libsodium".ref = "flake-pinning";
  inputs."libsodium".dir = "nimpkgs/l/libsodium";

  outputs = { self, nixpkgs, src-httpauth-0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-httpauth-0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-httpauth-0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}