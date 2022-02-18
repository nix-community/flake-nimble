{
  description = ''Py2Nim is a tool to translate Python code to Nim. The output is human-readable Nim code, meant to be tweaked by hand after the translation process.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-py2nim-v0_1_3.flake = false;
  inputs.src-py2nim-v0_1_3.type = "github";
  inputs.src-py2nim-v0_1_3.owner = "Niminem";
  inputs.src-py2nim-v0_1_3.repo = "Py2Nim";
  inputs.src-py2nim-v0_1_3.ref = "refs/tags/v0.1.3";
  
  
  inputs."compiler".type = "github";
  inputs."compiler".owner = "riinr";
  inputs."compiler".repo = "flake-nimble";
  inputs."compiler".ref = "flake-pinning";
  inputs."compiler".dir = "nimpkgs/c/compiler";

  
  inputs."nimscripter".type = "github";
  inputs."nimscripter".owner = "riinr";
  inputs."nimscripter".repo = "flake-nimble";
  inputs."nimscripter".ref = "flake-pinning";
  inputs."nimscripter".dir = "nimpkgs/n/nimscripter";

  outputs = { self, nixpkgs, flakeNimbleLib, src-py2nim-v0_1_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-py2nim-v0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-py2nim-v0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}