{
  description = ''A brainfuck interpreter & compiler implemented in nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimfcuk-main.flake = false;
  inputs.src-nimfcuk-main.type = "github";
  inputs.src-nimfcuk-main.owner = "2KAbhishek";
  inputs.src-nimfcuk-main.repo = "nimfcuk";
  inputs.src-nimfcuk-main.ref = "refs/heads/main";
  
  
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimfcuk-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfcuk-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimfcuk-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}