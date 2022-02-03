{
  description = ''A Protocol Buffers library for Nim'';
  inputs.src-nimpb-master.flake = false;
  inputs.src-nimpb-master.type = "github";
  inputs.src-nimpb-master.owner = "oswjk";
  inputs.src-nimpb-master.repo = "nimpb";
  inputs.src-nimpb-master.ref = "refs/heads/master";
  
  
  inputs."nimpb_protoc".url = "path:../../../n/nimpb_protoc";
  inputs."nimpb_protoc".type = "github";
  inputs."nimpb_protoc".owner = "riinr";
  inputs."nimpb_protoc".repo = "flake-nimble";
  inputs."nimpb_protoc".ref = "flake-pinning";
  inputs."nimpb_protoc".dir = "nimpkgs/n/nimpb_protoc";

  outputs = { self, nixpkgs, src-nimpb-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimpb-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimpb-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}