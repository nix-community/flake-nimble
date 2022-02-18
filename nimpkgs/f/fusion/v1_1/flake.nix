{
  description = ''Nim's official stdlib extension'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-fusion-v1_1.flake = false;
  inputs.src-fusion-v1_1.type = "github";
  inputs.src-fusion-v1_1.owner = "nim-lang";
  inputs.src-fusion-v1_1.repo = "fusion";
  inputs.src-fusion-v1_1.ref = "refs/tags/v1.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-fusion-v1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fusion-v1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fusion-v1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}