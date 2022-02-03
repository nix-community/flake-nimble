{
  description = ''Another MessagePack implementation written in pure nim'';
  inputs.src-msgpack4nim-v0_3_0.flake = false;
  inputs.src-msgpack4nim-v0_3_0.type = "github";
  inputs.src-msgpack4nim-v0_3_0.owner = "jangko";
  inputs.src-msgpack4nim-v0_3_0.repo = "msgpack4nim";
  inputs.src-msgpack4nim-v0_3_0.ref = "refs/tags/v0.3.0";
  
  outputs = { self, nixpkgs, src-msgpack4nim-v0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-msgpack4nim-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-msgpack4nim-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}