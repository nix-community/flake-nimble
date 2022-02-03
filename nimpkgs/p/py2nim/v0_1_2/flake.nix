{
  description = ''Py2Nim is a tool to translate Python code to Nim. The output is human-readable Nim code, meant to be tweaked by hand after the translation process.'';
  inputs.src-py2nim-v0_1_2.flake = false;
  inputs.src-py2nim-v0_1_2.type = "github";
  inputs.src-py2nim-v0_1_2.owner = "Niminem";
  inputs.src-py2nim-v0_1_2.repo = "Py2Nim";
  inputs.src-py2nim-v0_1_2.ref = "refs/tags/v0.1.2";
  
  
  inputs."compiler".url = "path:../../../c/compiler";
  inputs."compiler".type = "github";
  inputs."compiler".owner = "riinr";
  inputs."compiler".repo = "flake-nimble";
  inputs."compiler".ref = "flake-pinning";
  inputs."compiler".dir = "nimpkgs/c/compiler";

  
  inputs."nimscripter".url = "path:../../../n/nimscripter";
  inputs."nimscripter".type = "github";
  inputs."nimscripter".owner = "riinr";
  inputs."nimscripter".repo = "flake-nimble";
  inputs."nimscripter".ref = "flake-pinning";
  inputs."nimscripter".dir = "nimpkgs/n/nimscripter";

  outputs = { self, nixpkgs, src-py2nim-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-py2nim-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-py2nim-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}