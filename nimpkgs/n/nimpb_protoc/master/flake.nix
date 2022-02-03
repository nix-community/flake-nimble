{
  description = ''Protocol Buffers compiler support package for nimpb'';
  inputs.src-nimpb_protoc-master.flake = false;
  inputs.src-nimpb_protoc-master.type = "github";
  inputs.src-nimpb_protoc-master.owner = "oswjk";
  inputs.src-nimpb_protoc-master.repo = "nimpb_protoc";
  inputs.src-nimpb_protoc-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimpb_protoc-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimpb_protoc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimpb_protoc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}