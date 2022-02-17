{
  description = ''User-friendly wrapper for nim ast'';
  inputs.src-hnimast-v0_3_9.flake = false;
  inputs.src-hnimast-v0_3_9.type = "github";
  inputs.src-hnimast-v0_3_9.owner = "haxscramper";
  inputs.src-hnimast-v0_3_9.repo = "hnimast";
  inputs.src-hnimast-v0_3_9.ref = "refs/tags/v0.3.9";
  
  
  inputs."hmisc".type = "github";
  inputs."hmisc".owner = "riinr";
  inputs."hmisc".repo = "flake-nimble";
  inputs."hmisc".ref = "flake-pinning";
  inputs."hmisc".dir = "nimpkgs/h/hmisc";

  
  inputs."macroutils".type = "github";
  inputs."macroutils".owner = "riinr";
  inputs."macroutils".repo = "flake-nimble";
  inputs."macroutils".ref = "flake-pinning";
  inputs."macroutils".dir = "nimpkgs/m/macroutils";

  
  inputs."compiler".type = "github";
  inputs."compiler".owner = "riinr";
  inputs."compiler".repo = "flake-nimble";
  inputs."compiler".ref = "flake-pinning";
  inputs."compiler".dir = "nimpkgs/c/compiler";

  outputs = { self, nixpkgs, src-hnimast-v0_3_9, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hnimast-v0_3_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hnimast-v0_3_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}