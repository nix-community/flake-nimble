{
  description = ''Cap'n Proto implementation for Nim'';
  inputs.src-capnp-master.flake = false;
  inputs.src-capnp-master.type = "github";
  inputs.src-capnp-master.owner = "zielmicha";
  inputs.src-capnp-master.repo = "capnp.nim";
  inputs.src-capnp-master.ref = "refs/heads/master";
  
  
  inputs."collections".url = "path:../../../c/collections";
  inputs."collections".type = "github";
  inputs."collections".owner = "riinr";
  inputs."collections".repo = "flake-nimble";
  inputs."collections".ref = "flake-pinning";
  inputs."collections".dir = "nimpkgs/c/collections";

  outputs = { self, nixpkgs, src-capnp-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-capnp-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-capnp-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}