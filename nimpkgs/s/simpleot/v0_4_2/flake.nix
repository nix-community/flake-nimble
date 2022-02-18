{
  description = ''Simple OT wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-simpleot-v0_4_2.flake = false;
  inputs.src-simpleot-v0_4_2.type = "github";
  inputs.src-simpleot-v0_4_2.owner = "markspanbroek";
  inputs.src-simpleot-v0_4_2.repo = "simpleot.nim";
  inputs.src-simpleot-v0_4_2.ref = "refs/tags/v0.4.2";
  
  
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, flakeNimbleLib, src-simpleot-v0_4_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simpleot-v0_4_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-simpleot-v0_4_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}