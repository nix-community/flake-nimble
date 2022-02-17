{
  description = ''HTTP Authentication and Authorization'';
  inputs.src-httpauth-master.flake = false;
  inputs.src-httpauth-master.type = "github";
  inputs.src-httpauth-master.owner = "FedericoCeratto";
  inputs.src-httpauth-master.repo = "nim-httpauth";
  inputs.src-httpauth-master.ref = "refs/heads/master";
  
  
  inputs."libsodium".type = "github";
  inputs."libsodium".owner = "riinr";
  inputs."libsodium".repo = "flake-nimble";
  inputs."libsodium".ref = "flake-pinning";
  inputs."libsodium".dir = "nimpkgs/l/libsodium";

  outputs = { self, nixpkgs, src-httpauth-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-httpauth-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-httpauth-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}