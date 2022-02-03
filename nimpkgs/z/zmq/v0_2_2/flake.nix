{
  description = ''ZeroMQ 4 wrapper'';
  inputs.src-zmq-v0_2_2.flake = false;
  inputs.src-zmq-v0_2_2.type = "github";
  inputs.src-zmq-v0_2_2.owner = "nim-lang";
  inputs.src-zmq-v0_2_2.repo = "nim-zmq";
  inputs.src-zmq-v0_2_2.ref = "refs/tags/v0.2.2";
  
  outputs = { self, nixpkgs, src-zmq-v0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zmq-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zmq-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}