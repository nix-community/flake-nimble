{
  description = ''Nimble package manager'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimble-v0_10_0.flake = false;
  inputs.src-nimble-v0_10_0.type = "github";
  inputs.src-nimble-v0_10_0.owner = "nim-lang";
  inputs.src-nimble-v0_10_0.repo = "nimble";
  inputs.src-nimble-v0_10_0.ref = "refs/tags/v0.10.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimble-v0_10_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimble-v0_10_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimble-v0_10_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}