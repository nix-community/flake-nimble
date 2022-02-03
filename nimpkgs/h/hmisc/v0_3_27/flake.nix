{
  description = ''Collection of helper utilities'';
  inputs.src-hmisc-v0_3_27.flake = false;
  inputs.src-hmisc-v0_3_27.type = "github";
  inputs.src-hmisc-v0_3_27.owner = "haxscramper";
  inputs.src-hmisc-v0_3_27.repo = "hmisc";
  inputs.src-hmisc-v0_3_27.ref = "refs/tags/v0.3.27";
  
  
  inputs."with".url = "path:../../../w/with";
  inputs."with".type = "github";
  inputs."with".owner = "riinr";
  inputs."with".repo = "flake-nimble";
  inputs."with".ref = "flake-pinning";
  inputs."with".dir = "nimpkgs/w/with";

  
  inputs."shell".url = "path:../../../s/shell";
  inputs."shell".type = "github";
  inputs."shell".owner = "riinr";
  inputs."shell".repo = "flake-nimble";
  inputs."shell".ref = "flake-pinning";
  inputs."shell".dir = "nimpkgs/s/shell";

  
  inputs."macroutils".url = "path:../../../m/macroutils";
  inputs."macroutils".type = "github";
  inputs."macroutils".owner = "riinr";
  inputs."macroutils".repo = "flake-nimble";
  inputs."macroutils".ref = "flake-pinning";
  inputs."macroutils".dir = "nimpkgs/m/macroutils";

  outputs = { self, nixpkgs, src-hmisc-v0_3_27, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hmisc-v0_3_27;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hmisc-v0_3_27"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}