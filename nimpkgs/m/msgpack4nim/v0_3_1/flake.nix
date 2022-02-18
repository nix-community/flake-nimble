{
  description = ''Another MessagePack implementation written in pure nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-msgpack4nim-v0_3_1.flake = false;
  inputs.src-msgpack4nim-v0_3_1.type = "github";
  inputs.src-msgpack4nim-v0_3_1.owner = "jangko";
  inputs.src-msgpack4nim-v0_3_1.repo = "msgpack4nim";
  inputs.src-msgpack4nim-v0_3_1.ref = "refs/tags/v0.3.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-msgpack4nim-v0_3_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-msgpack4nim-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-msgpack4nim-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}