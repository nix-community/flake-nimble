{
  description = ''Protocol Buffers compiler support package for nimpb'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimpb_protoc-master.flake = false;
  inputs.src-nimpb_protoc-master.type = "github";
  inputs.src-nimpb_protoc-master.owner = "oswjk";
  inputs.src-nimpb_protoc-master.repo = "nimpb_protoc";
  inputs.src-nimpb_protoc-master.ref = "refs/heads/master";
  inputs.src-nimpb_protoc-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimpb_protoc-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimpb_protoc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimpb_protoc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}