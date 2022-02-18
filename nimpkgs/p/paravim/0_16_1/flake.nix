{
  description = ''An embedded text editor for paranim games'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-paravim-0_16_1.flake = false;
  inputs.src-paravim-0_16_1.type = "github";
  inputs.src-paravim-0_16_1.owner = "paranim";
  inputs.src-paravim-0_16_1.repo = "paravim";
  inputs.src-paravim-0_16_1.ref = "refs/tags/0.16.1";
  
  
  inputs."paranim".type = "github";
  inputs."paranim".owner = "riinr";
  inputs."paranim".repo = "flake-nimble";
  inputs."paranim".ref = "flake-pinning";
  inputs."paranim".dir = "nimpkgs/p/paranim";

  
  inputs."pararules".type = "github";
  inputs."pararules".owner = "riinr";
  inputs."pararules".repo = "flake-nimble";
  inputs."pararules".ref = "flake-pinning";
  inputs."pararules".dir = "nimpkgs/p/pararules";

  
  inputs."paratext".type = "github";
  inputs."paratext".owner = "riinr";
  inputs."paratext".repo = "flake-nimble";
  inputs."paratext".ref = "flake-pinning";
  inputs."paratext".dir = "nimpkgs/p/paratext";

  outputs = { self, nixpkgs, flakeNimbleLib, src-paravim-0_16_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-paravim-0_16_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-paravim-0_16_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}