{
  description = ''ZeroMQ 4 wrapper'';
  inputs.src-zmq-v1_2_0.flake = false;
  inputs.src-zmq-v1_2_0.type = "github";
  inputs.src-zmq-v1_2_0.owner = "nim-lang";
  inputs.src-zmq-v1_2_0.repo = "nim-zmq";
  inputs.src-zmq-v1_2_0.ref = "refs/tags/v1.2.0";
  
  outputs = { self, nixpkgs, src-zmq-v1_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zmq-v1_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zmq-v1_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}