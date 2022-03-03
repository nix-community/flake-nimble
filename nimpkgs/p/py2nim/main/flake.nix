{
  description = ''Py2Nim is a tool to translate Python code to Nim. The output is human-readable Nim code, meant to be tweaked by hand after the translation process.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-py2nim-main.flake = false;
  inputs.src-py2nim-main.type = "github";
  inputs.src-py2nim-main.owner = "Niminem";
  inputs.src-py2nim-main.repo = "Py2Nim";
  inputs.src-py2nim-main.ref = "refs/heads/main";
  inputs.src-py2nim-main.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."compiler".type = "github";
  # inputs."compiler".owner = "riinr";
  # inputs."compiler".repo = "flake-nimble";
  # inputs."compiler".ref = "flake-pinning";
  # inputs."compiler".dir = "nimpkgs/c/compiler";
  # inputs."compiler".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."compiler".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."nimscripter".type = "github";
  # inputs."nimscripter".owner = "riinr";
  # inputs."nimscripter".repo = "flake-nimble";
  # inputs."nimscripter".ref = "flake-pinning";
  # inputs."nimscripter".dir = "nimpkgs/n/nimscripter";
  # inputs."nimscripter".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimscripter".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-py2nim-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-py2nim-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-py2nim-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}