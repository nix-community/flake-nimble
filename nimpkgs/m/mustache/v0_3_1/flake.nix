{
  description = ''Mustache in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-mustache-v0_3_1.flake = false;
  inputs.src-mustache-v0_3_1.type = "github";
  inputs.src-mustache-v0_3_1.owner = "soasme";
  inputs.src-mustache-v0_3_1.repo = "nim-mustache";
  inputs.src-mustache-v0_3_1.ref = "refs/tags/v0.3.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-mustache-v0_3_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mustache-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mustache-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}