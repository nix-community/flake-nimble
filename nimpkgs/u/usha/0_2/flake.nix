{
  description = ''untitled shell history application'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-usha-0_2.flake = false;
  inputs.src-usha-0_2.type = "github";
  inputs.src-usha-0_2.owner = "subsetpark";
  inputs.src-usha-0_2.repo = "untitled-shell-history-application";
  inputs.src-usha-0_2.ref = "refs/tags/0.2";
  
  
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";

  outputs = { self, nixpkgs, flakeNimbleLib, src-usha-0_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-usha-0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-usha-0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}