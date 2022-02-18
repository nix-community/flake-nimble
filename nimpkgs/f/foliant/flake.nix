{
  description = ''Documentation generator that produces pdf and docx from Markdown. Uses Pandoc and LaTeX behind the scenes.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."foliant-develop".type = "github";
  inputs."foliant-develop".owner = "riinr";
  inputs."foliant-develop".repo = "flake-nimble";
  inputs."foliant-develop".ref = "flake-pinning";
  inputs."foliant-develop".dir = "nimpkgs/f/foliant/develop";

    inputs."foliant-master".type = "github";
  inputs."foliant-master".owner = "riinr";
  inputs."foliant-master".repo = "flake-nimble";
  inputs."foliant-master".ref = "flake-pinning";
  inputs."foliant-master".dir = "nimpkgs/f/foliant/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}