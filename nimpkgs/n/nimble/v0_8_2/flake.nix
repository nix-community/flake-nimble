{
  description = ''Nimble package manager'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimble-v0_8_2.flake = false;
  inputs.src-nimble-v0_8_2.type = "github";
  inputs.src-nimble-v0_8_2.owner = "nim-lang";
  inputs.src-nimble-v0_8_2.repo = "nimble";
  inputs.src-nimble-v0_8_2.ref = "refs/tags/v0.8.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimble-v0_8_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimble-v0_8_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimble-v0_8_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}