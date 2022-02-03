{
  description = ''Another MessagePack implementation written in pure nim'';
  inputs.src-msgpack4nim-v0_2_9.flake = false;
  inputs.src-msgpack4nim-v0_2_9.type = "github";
  inputs.src-msgpack4nim-v0_2_9.owner = "jangko";
  inputs.src-msgpack4nim-v0_2_9.repo = "msgpack4nim";
  inputs.src-msgpack4nim-v0_2_9.ref = "refs/tags/v0.2.9";
  
  outputs = { self, nixpkgs, src-msgpack4nim-v0_2_9, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-msgpack4nim-v0_2_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-msgpack4nim-v0_2_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}