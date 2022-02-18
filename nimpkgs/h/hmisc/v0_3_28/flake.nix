{
  description = ''Collection of helper utilities'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-hmisc-v0_3_28.flake = false;
  inputs.src-hmisc-v0_3_28.type = "github";
  inputs.src-hmisc-v0_3_28.owner = "haxscramper";
  inputs.src-hmisc-v0_3_28.repo = "hmisc";
  inputs.src-hmisc-v0_3_28.ref = "refs/tags/v0.3.28";
  
  
  inputs."with".type = "github";
  inputs."with".owner = "riinr";
  inputs."with".repo = "flake-nimble";
  inputs."with".ref = "flake-pinning";
  inputs."with".dir = "nimpkgs/w/with";

  
  inputs."shell".type = "github";
  inputs."shell".owner = "riinr";
  inputs."shell".repo = "flake-nimble";
  inputs."shell".ref = "flake-pinning";
  inputs."shell".dir = "nimpkgs/s/shell";

  
  inputs."macroutils".type = "github";
  inputs."macroutils".owner = "riinr";
  inputs."macroutils".repo = "flake-nimble";
  inputs."macroutils".ref = "flake-pinning";
  inputs."macroutils".dir = "nimpkgs/m/macroutils";

  outputs = { self, nixpkgs, flakeNimbleLib, src-hmisc-v0_3_28, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hmisc-v0_3_28;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hmisc-v0_3_28"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}