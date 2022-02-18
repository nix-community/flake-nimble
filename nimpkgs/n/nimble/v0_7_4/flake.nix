{
  description = ''Nimble package manager'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimble-v0_7_4.flake = false;
  inputs.src-nimble-v0_7_4.type = "github";
  inputs.src-nimble-v0_7_4.owner = "nim-lang";
  inputs.src-nimble-v0_7_4.repo = "nimble";
  inputs.src-nimble-v0_7_4.ref = "refs/tags/v0.7.4";
  
  
  inputs."compiler".type = "github";
  inputs."compiler".owner = "riinr";
  inputs."compiler".repo = "flake-nimble";
  inputs."compiler".ref = "flake-pinning";
  inputs."compiler".dir = "nimpkgs/c/compiler";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimble-v0_7_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimble-v0_7_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimble-v0_7_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}