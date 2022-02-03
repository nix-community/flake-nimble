{
  description = ''Circular buffer implementation'';
  inputs.src-RingBuffer-v0_1_2.flake = false;
  inputs.src-RingBuffer-v0_1_2.type = "github";
  inputs.src-RingBuffer-v0_1_2.owner = "megawac";
  inputs.src-RingBuffer-v0_1_2.repo = "RingBuffer.nim";
  inputs.src-RingBuffer-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, src-RingBuffer-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-RingBuffer-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-RingBuffer-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}