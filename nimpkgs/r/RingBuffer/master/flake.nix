{
  description = ''Circular buffer implementation'';
  inputs.src-RingBuffer-master.flake = false;
  inputs.src-RingBuffer-master.type = "github";
  inputs.src-RingBuffer-master.owner = "megawac";
  inputs.src-RingBuffer-master.repo = "RingBuffer.nim";
  inputs.src-RingBuffer-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-RingBuffer-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-RingBuffer-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-RingBuffer-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}