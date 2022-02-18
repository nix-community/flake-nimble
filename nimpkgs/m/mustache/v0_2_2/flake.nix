{
  description = ''Mustache in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-mustache-v0_2_2.flake = false;
  inputs.src-mustache-v0_2_2.type = "github";
  inputs.src-mustache-v0_2_2.owner = "soasme";
  inputs.src-mustache-v0_2_2.repo = "nim-mustache";
  inputs.src-mustache-v0_2_2.ref = "refs/tags/v0.2.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-mustache-v0_2_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mustache-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mustache-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}